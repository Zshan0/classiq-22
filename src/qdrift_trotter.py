from qiskit import QuantumCircuit
from qiskit.circuit.library import PauliEvolutionGate
from qiskit.synthesis import QDrift

from constructor import Constructor


class Qdrift(Constructor):
    def __init__(self):
        super().__init__("QDRIFT")

    def get_circuit(self, _reps: int = 1) -> QuantumCircuit:
        assert _reps > 0, "Incorrect number of reps provided"
        self.simulator = QDrift(reps=_reps)  # order 1 always.

        circuit = self.simulator.synthesize(PauliEvolutionGate(self.pauli_op))
        assert circuit is not None, "Could not make a circuit for given operator"

        self.circuit = circuit
        return self.circuit


def main():
    hamiltonian = "H2"
    reps = 1

    constructor = Qdrift()
    constructor.load_hamiltonian(hamiltonian)
    circ = constructor.get_circuit(reps)
    constructor.get_error()


if __name__ == "__main__":
    main()
