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
    max_reps = reps_e + 1
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
            max_reps = reps + 1
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

    print(list_dicts)
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


def run_methods(constructors: List, hamiltonian: str, reps_s=1, reps_e=5):
    """
    run all the methods and store the best circuit for each method based
    on the name of the method and other parameters.

    Args:
        - constructors: list of constructors
        - reps_s: starting rep number
        - reps_e: ending rep number
    """

    list_dicts = []

    for constructor in constructors:
        constructor.load_hamiltonian(hamiltonian)
        data = get_min_reps(constructor, reps_s, reps_e)
        depth = data["min_circuit"].depth()
        export_circuit(
            data["min_circuit"],
            f"circuits/{constructor.hamiltonian}_{constructor.method}_{depth}.qasm",
        )
        list_dicts.append(
            {
                **data,
                "label": f"H2_{constructor.method}_{reps_s}_to_{reps_e}",
            }
        )
    plot_error_vs_depth(list_dicts)


def main():
    hamiltonian = "H2"
    optimizer = Optimizer()

    constructors = [
        Lie(optimizer=optimizer),
        Qdrift(optimizer=optimizer),
        Suzuki(optimizer=optimizer),
    ]
    run_methods(constructors, hamiltonian, 1, 5)
    return


if __name__ == "__main__":
    main()
