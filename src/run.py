from lietrotter import Lie
from qdrift_trotter import Qdrift
from suzuki import Suzuki
from constructor import hamiltonian_circuit_error
from parser import store_dict_as_json, export_circuit

import numpy as np
from typing import List
from matplotlib import pyplot as plt


def iterate_over_reps(constructor, reps_s, reps_e):
    errs = []
    depths = []

    min_depth = np.inf
    min_circuit = None

    for reps in range(reps_s, reps_e):
        constructor.re_init(reps)
        constructor.get_circuit()
        pauli_op = constructor.pauli_op
        dec_circuit = constructor.decompose_circuit()
        error = hamiltonian_circuit_error(dec_circuit, pauli_op)
        depth = dec_circuit.depth()
        errs.append(error)
        depths.append(depth)

        if depth < min_depth:
            min_depth = depth
            min_circuit = dec_circuit

    assert min_circuit is not None
    export_circuit(
        min_circuit,
        f"circuits/{constructor.hamiltonian}_{constructor.method}_{min_depth}.qasm",
    )

    return {
        "name": constructor.method,
        "error": errs,
        "depth": depths,
        "reps": list(range(reps_s, reps_e)),
        "min_depth": min_depth,
        "min_circuit": f"{constructor.hamiltonian}_{constructor.method}_{min_depth}",
    }


def plot_error_vs_depth(list_dicts: List[dict], threshold=0.1):
    """
    Plots multiple error vs depth comparison for different methods.

    Args:
        list_dicts: Dict which contains `error`, `depth` and `label` as it's
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

    all_labels = "--".join([x["label"] for x in list_dicts])
    plt.savefig(f"plots/{all_labels}.png")
    plt.show()


def main():
    hamiltonian = "H2"
    list_dicts = []

    constructor = Lie()
    constructor.load_hamiltonian(hamiltonian)
    data = iterate_over_reps(constructor, 1, 5)
    list_dicts.append(
        {
            "depth": data["depth"],
            "error": data["error"],
            "reps": data["reps"],
            "label": "H2_Lie_1_to_5",
        }
    )

    constructor = Qdrift()
    constructor.load_hamiltonian(hamiltonian)
    data = iterate_over_reps(constructor, 1, 5)
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
        data = iterate_over_reps(constructor, 1, 5)
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
