from qiskit.opflow import PauliSumOp
from parser import get_pauli_list, get_pauli_sum_op
from hamiltonian_optimizer import BaseHamiltonianOptimizer
from pprint import pprint as print
from circuit_optimizer import Optimizer as Circ_optimizer



class PairWiseOptimizer(BaseHamiltonianOptimizer):
    def __init__(self):
        pass

    def group(self, strings):
        nonI_map = dict()

        pauli = ["I", "X", "Y", "Z"]
        for string in strings:
            u_string = string
            for nonI in pauli[1:]:
                u_string = u_string.replace(nonI, "U")

            if u_string in nonI_map:
                nonI_map[u_string].add(string)
            else:
                nonI_map[u_string] = set()
                nonI_map[u_string].add(string)

        matched = set()
        new_list = []

        for u_string, u_set in nonI_map.items():
            if u_string in matched:
                continue

            u_list = sorted(list(u_set))
            new_list.extend(u_list)

            flip_u_string = u_string.replace("U", "X").replace("I", "U").replace("X", "I")

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
        pauli_list.sort()
        pauli_strings = [x[0] for x in pauli_list]
        coeff_map = {x:y for (x, y) in pauli_list}
        new_list = self.group(pauli_strings)

        new_pauli_list = []
        for x in new_list:
            new_pauli_list.append((x, coeff_map[x]))

        return PauliSumOp.from_list(new_pauli_list)

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
