from qiskit.synthesis import LieTrotter
from constructor import Constructor, hamiltonian_circuit_error
import numpy as np


class Lie(Constructor):
    def __init__(self, _reps: int = 1, optimizer=None):
        super().__init__("LIE", optimizer)
        assert _reps > 0, "Incorrect number of reps provided"
        self.reps = _reps
        self.synthesizer = LieTrotter(reps=_reps)
        assert self.synthesizer is not None, "Error constructing the circuit."

    def re_init(self, _reps):
        """Re-initialize synthesizer
        Re-initializes the synthesizer with new number of reps.

        Args:
            _reps: Number of times QDRIFT must be repeated in the circuit.
        Raises:
            AssertionError: Incorrect rep count.
            AssertionError: QDrift could not construct circuit.
        """
        assert _reps > 0, "Incorrect number of reps provided"
        self.synthesizer = LieTrotter(reps=_reps)
        assert self.synthesizer is not None, "Error constructing the circuit."


def loop(a, b, print_circuit, hamiltonian):
    constructor = Lie()
    constructor.load_hamiltonian(hamiltonian)
    min_err = np.inf
    for reps in range(a, b):
        constructor.re_init(reps)
        circ = constructor.get_circuit()
        pauli_op = constructor.pauli_op
        dec_circuit = constructor.decompose_circuit()
        if print_circuit:
            print(circ.decompose())
        error = hamiltonian_circuit_error(dec_circuit, pauli_op)
        if error < min_err:
            min_err = error

        depth = dec_circuit.depth()
        print(f"reps:{reps} error:{error}, depth:{depth}")

    print(f"{min_err}")


def main():
    loop(1, 2, True, "H2")


if __name__ == "__main__":
    main()
