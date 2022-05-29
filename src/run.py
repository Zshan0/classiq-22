from lietrotter import Lie
from qdrift_trotter import Qdrift
from constructor import hamiltonian_circuit_error
from parser import store_dict_as_json
import numpy as np


def iterate_over_reps(constructor, reps_s, reps_e):
    errs = []
    depths = []

    for reps in range(reps_s, reps_e):
        constructor.get_circuit(reps)
        pauli_op = constructor.pauli_op
        dec_circuit = constructor.decompose_circuit()
        error = hamiltonian_circuit_error(dec_circuit, pauli_op)
        depth = dec_circuit.depth()
        errs.append(error)
        depths.append(depth)

    return {"name": constructor.method, "error": errs, "depth": depths}


def main():
    hamiltonian = "H2"
    constructor = Lie()
    constructor.load_hamiltonian(hamiltonian)

    lie_data = iterate_over_reps(constructor, 1, 5)
    print(lie_data)
    store_dict_as_json(lie_data, "H2/lie_data_0.json")


if __name__ == "__main__":
    main()
