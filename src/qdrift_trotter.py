from qiskit import QuantumCircuit
from qiskit.circuit.library import PauliEvolutionGate
from qiskit.synthesis import QDrift

from parser import get_pauli_sum_op

def qdrift_trotter(operator: PauliEvolutionGate, _reps:int= 1) -> QuantumCircuit:
    trotterizor = QDrift(reps=_reps)  # order 1 always.
    circ = trotterizor.synthesize(operator)
    return circ


def main():
    hamiltonian = "H2" 
    reps = 1

    operator = get_pauli_sum_op(hamiltonian)
    operator = PauliEvolutionGate(operator)
    circ = qdrift_trotter(operator, reps)
    decomposed = circ.decompose()
    print("High-level circuit:")
    print(circ)
    print("Low-level circuit:")
    print(decomposed)


if __name__ == "__main__":
    main()
