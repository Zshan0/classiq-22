from qiskit.opflow import PauliSumOp
from parser import get_pauli_list, get_pauli_sum_op
from hamiltonian_optimizer import BaseHamiltonianOptimizer
from pprint import pprint as print
from circuit_optimizer import Optimizer as Circ_optimizer

from random import shuffle, randint


class RandomShuffle(BaseHamiltonianOptimizer):
    def __init__(self, shuffle_count=10):
        self.shuffle_count = shuffle_count

    def optimize(self, pauli_op: PauliSumOp) -> PauliSumOp:
        """
        Method for optimizing the Pauli operator.

        Args:
            - pauli_op: Pauli operator to be optimized
        Returns:
            - optimized: Pauli operator
        """
        pauli_list = get_pauli_list(pauli_op)  # [(string, coeff)]
        shuffle_count = self.shuffle_count

        position = randint(0, len(pauli_list) - (shuffle_count + 1))

        shuffled = pauli_list[position : position + shuffle_count]
        shuffle(shuffled)

        for x in range(shuffle_count):
            pauli_list[x + position] = shuffled[x]

        return PauliSumOp.from_list(pauli_list)

    def __call__(self, pauli_op: PauliSumOp) -> PauliSumOp:
        return self.optimize(pauli_op)


def main():
    from constructor import hamiltonian_circuit_error
    from lietrotter import Lie

    hamiltonian = "LiH"
    circ_optimizer = Circ_optimizer()

    # constructor = Lie(optimizer=circ_optimizer)
    constructor = Lie()
    for ind in range(200, 240, 10):
        optimizer = RandomShuffle(ind)
        constructor.load_hamiltonian(hamiltonian, optimizer=optimizer)
        pauli_op = constructor.pauli_op
        constructor.get_circuit()
        dec_circuit = constructor.decompose_circuit()
        error = hamiltonian_circuit_error(dec_circuit, pauli_op)
        depth = dec_circuit.depth()
        print(f"{ind} optimized error:{error}, depth:{depth}")

    constructor.load_hamiltonian(hamiltonian=hamiltonian)
    constructor.get_circuit()
    # pauli_op = constructor.pauli_op
    dec_circuit = constructor.decompose_circuit()
    error = hamiltonian_circuit_error(dec_circuit, pauli_op)
    depth = dec_circuit.depth()
    print(f"unoptimized error:{error}, depth:{depth}")


if __name__ == "__main__":
    main()
