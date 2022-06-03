from qiskit.opflow import PauliSumOp
from parser import get_pauli_list
from hamiltonian_optimizer import BaseHamiltonianOptimizer
from pprint import pprint as print
from circuit_optimizer import Optimizer as Circ_optimizer


class PairWiseOptimizer(BaseHamiltonianOptimizer):
    def __init__(self):
        pass

    def group_by_coeff(self, pauli_list):
        coeff_map = dict()

        for pauli, coeff in pauli_list:
            if coeff in coeff_map:
                coeff_map[coeff].append(pauli)
            else:
                coeff_map[coeff] = [pauli]

        new_list = []
        for coeff, p_list in coeff_map.items():
            new_list.append((coeff, p_list))

        return new_list

    def group_by_u(self, strings):
        nonI_map = dict()
        pauli = ["I", "X", "Y", "Z"]

        for string in strings:
            u_string = string
            for nonI in pauli[1:]:
                u_string = u_string.replace(nonI, "U")

            if u_string in nonI_map:
                nonI_map[u_string].append(string)
            else:
                nonI_map[u_string] = []
                nonI_map[u_string].append(string)

        matched = set()
        new_list = []

        for u_string, u_set in nonI_map.items():
            if u_string in matched:
                continue

            u_list = list(u_set)
            new_list.extend(u_list)

            flip_u_string = (
                u_string.replace("U", "X").replace("I", "U").replace("X", "I")
            )

            if flip_u_string not in nonI_map:
                continue
            flip_set = nonI_map[flip_u_string]
            flip_u_list = sorted(list(flip_set))
            new_list.extend(flip_u_list)

            matched.add(u_string)
            matched.add(flip_u_string)

        assert len(new_list) == len(strings)
        return new_list

    def optimize(self, pauli_op: PauliSumOp) -> PauliSumOp:
        """
        Method for optimizing the Pauli operator.

        Args:
            - pauli_op: Pauli operator to be optimized
        Returns:
            - optimized: Pauli operator
        """
        pauli_list = get_pauli_list(pauli_op)
        new_pair_list = self.group_by_coeff(pauli_list)

        new_list = []
        for coeff, p_list in new_pair_list:
            p_list = self.group_by_u(p_list)
            for p in p_list:
                new_list.append((p, coeff))

        print(new_list)
        return PauliSumOp.from_list(new_list)

    def __call__(self, pauli_op: PauliSumOp) -> PauliSumOp:
        return self.optimize(pauli_op)


def main():
    from constructor import hamiltonian_circuit_error
    from lietrotter import Lie

    hamiltonian = "LiH"
    optimizer = PairWiseOptimizer()
    circ_optimizer = Circ_optimizer()

    constructor = Lie(optimizer=circ_optimizer)
    constructor.load_hamiltonian(hamiltonian, optimizer=optimizer)

    pauli_op = constructor.pauli_op
    constructor.get_circuit()

    dec_circuit = constructor.decompose_circuit()
    dec_circuit.qasm(filename='res.qasm')
    error = hamiltonian_circuit_error(dec_circuit, pauli_op)
    depth = dec_circuit.depth()
    print(f"optimized error:{error}, depth:{depth}")

    constructor.load_hamiltonian(hamiltonian=hamiltonian)
    constructor.get_circuit()
    pauli_op = constructor.pauli_op
    dec_circuit = constructor.decompose_circuit()
    error = hamiltonian_circuit_error(dec_circuit, pauli_op)
    depth = dec_circuit.depth()
    print(f"unoptimized error:{error}, depth:{depth}")


if __name__ == "__main__":
    main()
