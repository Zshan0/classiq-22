from lietrotter import Lie
from qdrift_trotter import Qdrift
from suzuki import Suzuki
from constructor import hamiltonian_circuit_error
from parser import store_dict_as_json, export_circuit
from circuit_optimizer import Optimizer

import numpy as np
from typing import List
from matplotlib import pyplot as plt


def get_min_reps(constructor, reps_s=1, reps_e=5, threshold=0.1):
    """
    Iterates over reps for the given constructor until the threshold is
    achieved.

    Args:
        constructor: Constructor for getting circuit
        reps_s: starting value of reps
        reps_2: ending value of reps
        threshold: error threshold

    """
    errs = []
    depths = []

    pauli_op = constructor.pauli_op

    min_depth = np.inf
    min_circuit = None
    max_reps = -1
    optimizer = Optimizer()

    for reps in range(reps_s, reps_e + 1):
        constructor.re_init(reps)
        constructor.get_circuit()
        dec_circuit = constructor.decompose_circuit(optimizer)

        error = hamiltonian_circuit_error(dec_circuit, pauli_op)
        depth = dec_circuit.depth()

        errs.append(error)
        depths.append(depth)

        if min_depth > depth:
            min_depth = depth
            min_circuit = dec_circuit
        if error <= threshold:
            max_reps = reps
            break

    return {
        "min_circuit": min_circuit,
        "error": errs,
        "depth": depths,
        "reps": list(range(reps_s, max_reps)),
    }


def plot_error_vs_depth(list_dicts: List[dict], threshold=0.1, savefig=True):
    """
    Plots multiple error vs depth comparison for different methods.

    Args:
        list_dicts: List of dicts which contains `error`, `depth` and `label` as it's
                    keys.
    """

    plt.figure(figsize=(50, 50))
    for dict_ in list_dicts:
        plt.plot(
            dict_["depth"],
            dict_["error"],
            linestyle="--",
            marker="o",
            label=dict_["label"],
        )
        for ind, rep in enumerate(dict_["reps"]):
            plt.annotate(f"{rep}", (dict_["depth"][ind], dict_["error"][ind]))

    plt.axhline(y=threshold, label="error threshold")

    plt.xlabel("Depth")
    plt.ylabel("Error")
    plt.title("Depth vs Error for different trotter methods")
    plt.grid()
    plt.legend()

    if savefig:
        all_labels = "--".join([x["label"] for x in list_dicts])
        plt.savefig(f"plots/{all_labels}.png")
    plt.show()


def main():
    hamiltonian = "H2"
    CIRCUIT_DEPTH = 1000
    list_dicts = []

    constructor = Lie()
    constructor.load_hamiltonian(hamiltonian)
    data = get_min_reps(constructor, 1, 5)
    depth = data["min_circuit"].depth()
    if depth <= CIRCUIT_DEPTH:
        export_circuit(
            data["min_circuit"],
            f"circuits/{constructor.hamiltonian}_{constructor.method}_{depth}.qasm",
        )

    list_dicts.append(
        {
            "depth": data["depth"],
            "error": data["error"],
            "reps": data["reps"],
            "label": "H2_Lie_1_to_5",
        }
    )
    plot_error_vs_depth(list_dicts)
    return

    constructor = Qdrift()
    constructor.load_hamiltonian(hamiltonian)
    data = get_min_reps(constructor, 1, 5)
    list_dicts.append(
        {
            "depth": data["depth"],
            "error": data["error"],
            "reps": data["reps"],
            "label": "H2_Qdrift_1_to_5",
        }
    )

    for order in range(2, 5, 2):
        constructor = Suzuki(order=order)
        constructor.load_hamiltonian(hamiltonian)
        data = get_min_reps(constructor, 1, 5)
        list_dicts.append(
            {
                "depth": data["depth"],
                "error": data["error"],
                "reps": data["reps"],
                "label": f"H2_suzuki_{order}_rep_1_to_5",
            }
        )

    plot_error_vs_depth(list_dicts)
    # store_dict_as_json(lie_data, "H2/lie_data_0.json")


if __name__ == "__main__":
    main()
