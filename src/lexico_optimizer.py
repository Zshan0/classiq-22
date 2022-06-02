from qiskit.opflow import PauliSumOp
from parser import get_pauli_list
from hamiltonian_optimizer import BaseHamiltonianOptimizer


class LexicoOptimizer(BaseHamiltonianOptimizer):
    def __init__(self):
        pass

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

        return PauliSumOp.from_list(pauli_list)

    def __call__(self, pauli_op: PauliSumOp) -> PauliSumOp:
        return self.optimize(pauli_op)


def main():
    from lietrotter import Lie
    from constructor import hamiltonian_circuit_error

    hamiltonian = "H2"
    optimizer = LexicoOptimizer()
    constructor = Lie()
    constructor.load_hamiltonian(hamiltonian=hamiltonian, optimizer=optimizer)

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
