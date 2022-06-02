from qiskit.opflow import PauliSumOp


class BaseHamiltonianOptimizer:
    def __init__(self):
        pass

    def __call__(self, pauli_op: PauliSumOp) -> PauliSumOp:
        """
        Method for optimizing the Pauli operator.

        Args:
            - pauli_op: Pauli operator to be optimized
        Returns:
            - optimized: Pauli operator
        """
        raise NotImplemented("Do not use the base class for creating instances.")
