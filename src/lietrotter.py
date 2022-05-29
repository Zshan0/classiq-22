from qiskit import QuantumCircuit
from qiskit.circuit.library import PauliEvolutionGate
from qiskit.synthesis import LieTrotter
from constructor import Constructor, hamiltonian_circuit_error
import numpy as np


class Lie(Constructor):
    def __init__(self):
        super().__init__("LIE")

    def get_circuit(self, _reps: int = 1) -> QuantumCircuit:
        """Get Hamiltonian circuit.
        Get the higher level circuit for the Hamiltonian.
        Note that the circuit must be converted to fundamental gates for
        measuring the gate depth.

        Args:
            _reps: Number of times QDRIFT must be repeated in the circuit.

        Raises:
            AssertionError: Incorrect rep count.
            AssertionError: QDrift could not construct circuit.
        """
        assert _reps > 0, "Incorrect number of reps provided"
        synthesizer = LieTrotter(reps=_reps)  # order 1 always.

        assert synthesizer is not None, "Error constructing the circuit."
        evo_gate = PauliEvolutionGate(self.pauli_op, 1.0, synthesis=synthesizer)

        num_qubits = evo_gate.num_qubits
        self.num_qubits = num_qubits
        circ = QuantumCircuit(num_qubits)  # reset circuit everytime to avoid pile-up
        circ.append(evo_gate, list(range(num_qubits)))

        self.circuit = circ
        return circ


def loop(a, b, print_circuit, hamiltonian):
    constructor = Lie()
    constructor.load_hamiltonian(hamiltonian)
    min_err = np.inf
    for reps in range(a, b):
        constructor.get_circuit(reps)
        pauli_op = constructor.pauli_op
        dec_circuit = constructor.decompose_circuit()
        if print_circuit:
            print(dec_circuit)
        error = hamiltonian_circuit_error(dec_circuit, pauli_op)
        if error < min_err:
            min_err = error

        depth = dec_circuit.depth()
        print(f"reps:{reps} error:{error}, depth:{depth}")

    print(f"{min_err}")


def main():
    loop(1, 2, False, "LiH")


if __name__ == "__main__":
    main()
