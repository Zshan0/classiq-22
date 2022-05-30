from typing import List
from qiskit import QuantumCircuit
from qiskit.opflow import PauliSumOp
import json


def export_circuit(circuit: QuantumCircuit, file_name: str):
    if type(circuit) is not QuantumCircuit:
        raise NotImplemented("exports only circuits.")

    qasm_string = circuit.qasm()
    assert qasm_string is not None, "Could not generate qasm string"

    with open(file_name, "w") as f:
        f.write(qasm_string)


def get_string_from_file(file_name: str) -> str:
    string = ""
    with open(file_name, "r") as file:
        string = file.read()

    return string


def parse_to_terms(string: str) -> List:
    lines = list(filter(lambda x: len(x) > 0, string.splitlines()))
    pauli_pairs = []
    for line in lines:
        coeff, axis = line.split("*")
        coeff = coeff.replace(" ", "")

        axis = axis.strip()
        pauli_pairs.append((axis, coeff))

    return pauli_pairs


def get_pauli_sum_op(hamiltonian: str) -> PauliSumOp:
    string = get_string_from_file(f"hamiltonians/{hamiltonian}")
    pauli_pairs = parse_to_terms(string)
    return PauliSumOp.from_list(pauli_pairs)


def store_dict_as_json(req_dict: dict, file_name: str):
    with open(file_name, "w") as fp:
        json.dump(req_dict, fp)


def load_json(file_name: str):
    with open(file_name, "r") as fp:
        data = json.load(fp)

    return data


def main():
    hamiltonian = "H2"
    pauli_op = get_pauli_sum_op(hamiltonian)
    print(pauli_op)


if __name__ == "__main__":
    main()
