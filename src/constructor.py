from qiskit import QuantumCircuit
from qiskit.circuit.library import PauliEvolutionGate
from parser import get_pauli_sum_op
from qiskit.opflow import PauliSumOp

from qiskit import Aer, transpile
from qiskit.extensions.hamiltonian_gate import HamiltonianGate


def export_circuit(circuit: QuantumCircuit, file_name: str):
    assert circuit is not None, "Circuit hasn't been constructed."
    qasm_string = circuit.qasm()
    assert qasm_string is not None, "Could not generate qasm circuit"

    with open(file_name, "w") as f:
        f.write(qasm_string)


def get_circuit_unitary(circuit, decimals: int = 3, backend=None):
    if backend is None:
        backend = Aer.get_backend("aer_simulator")
    unitary = None
    circuit.save_unitary()
    transpiled = transpile(circuit, backend)

    result = backend.run(transpiled).result()
    unitary = result.get_unitary(transpiled, decimals=decimals)
    return unitary


def get_hamiltonian_unitary(pauli_op):
    hamiltonian = HamiltonianGate(pauli_op, time=1)
    unitary = hamiltonian.to_matrix()
    return unitary


class Constructor:
    def __init__(self, method: str):
        self.method = method
        self.hamiltonian = None
        self.circuit = None

    def load_hamiltonian(self, hamiltonian: str):
        self.pauli_op: PauliSumOp = get_pauli_sum_op(hamiltonian)

    def get_circuit(
        self, operator: PauliEvolutionGate, _reps: int = 1
    ) -> QuantumCircuit:
        raise NotImplemented("Accessing superclass is not allowed")

    def get_error(self):
        assert self.circuit is not None, "Circuit not prepared yet."
        circ_unitary = get_circuit_unitary(self.circuit)
        hamiltonian_unitary = get_hamiltonian_unitary(self.pauli_op)

        diff_mat = circ_unitary - hamiltonian_unitary
        print(diff_mat)
