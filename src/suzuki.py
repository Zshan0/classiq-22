from qiskit import QuantumCircuit
from qiskit.circuit.library import PauliEvolutionGate
from qiskit.synthesis import SuzukiTrotter
from constructor import Constructor


class Suzuki(Constructor):
    def __init__(self, order: int = 1):
        super().__init__("SUZUKI")
        assert order > 0, "Incorrect order."
        self.order = order

    def get_circuit(self, _reps: int = 1) -> QuantumCircuit:
        """Get Hamiltonian circuit.
        Get the higher level circuit for the Hamiltonian.
        Note that the circuit must be converted to fundamental gates for
        measuring the gate depth.

        Args:
            _reps: Number of times Suzuki must be repeated in the circuit.
            _order: The complexity each iteration goes through.

        Raises:
            AssertionError: Incorrect rep count or order.
            AssertionError: QDrift could not construct circuit.
        """
        assert _reps > 0, "Incorrect number of reps provided."
        synthesizer = SuzukiTrotter(order=self.order, reps=_reps)

        assert synthesizer is not None, "Error constructing the circuit."
        evo_gate = PauliEvolutionGate(self.pauli_op, 1.0, synthesis=synthesizer)

        num_qubits = evo_gate.num_qubits
        self.num_qubits = num_qubits
        circ = QuantumCircuit(num_qubits)  # reset circuit everytime to avoid pile-up
        circ.append(evo_gate, list(range(num_qubits)))

        self.circuit = circ
        return circ
