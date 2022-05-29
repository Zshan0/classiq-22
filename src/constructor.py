from typing import List, Union, Optional
from qiskit import QuantumCircuit
from qiskit.circuit.library import PauliEvolutionGate
from parser import get_pauli_sum_op
from qiskit.opflow import PauliSumOp
from qiskit import Aer, transpile
from qiskit.extensions.hamiltonian_gate import HamiltonianGate

from qiskit.transpiler import PassManager
from qiskit.transpiler.passes import Unroller

import numpy as np
import cmath


def global_phase(a: np.ndarray):
    # get the phase of the first non-zero value in the matrix
    for row in a:
        for x in row:
            if np.abs(x) > 1e-3:
                theta = cmath.phase(x)
                # phase is e^{i\theta}
                phase = np.exp(0 + 1j * theta)
                # print(x, theta, phase)
                return phase

    return 1 + 0j


def export_circuit(circuit: QuantumCircuit, file_name: str):
    qasm_string = circuit.qasm()
    assert qasm_string is not None, "Could not generate qasm string"

    with open(file_name, "w") as f:
        f.write(qasm_string)


def get_circuit_unitary(circuit, decimals: int = 8, backend=None):
    if backend is None:
        backend = Aer.get_backend("aer_simulator")
    unitary = None
    circuit.save_unitary()
    transpiled = transpile(circuit, backend)

    result = backend.run(transpiled).result()
    unitary = result.get_unitary(transpiled, decimals=decimals)
    unitary = unitary.data / global_phase(unitary.data)
    return unitary


def get_hamiltonian_unitary(pauli_op):
    hamiltonian = HamiltonianGate(pauli_op, time=1)
    unitary = hamiltonian.to_matrix()
    unitary = unitary / global_phase(unitary)
    return unitary


def hamiltonian_circuit_error(circuit: QuantumCircuit, hamiltonian: PauliSumOp):

    circ_unitary = get_circuit_unitary(circuit)
    hamiltonian_unitary = get_hamiltonian_unitary(hamiltonian)

    diff_mat = circ_unitary - hamiltonian_unitary
    return np.linalg.norm(diff_mat, 2)


def decompose_circuit(
    circuit: QuantumCircuit, gate_set: Optional[List] = None
) -> Union[QuantumCircuit, List[QuantumCircuit]]:
    if gate_set is None:
        gate_set = ["u3", "cx"]

    transpile_pass = Unroller(gate_set)
    manager = PassManager(transpile_pass)
    return manager.run(circuit)


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

    def decompose_circuit(self) -> QuantumCircuit:
        assert self.circuit is not None, "Circuit not prepared yet."

        dec_circuit = decompose_circuit(self.circuit)
        if type(dec_circuit) is list:
            raise NotImplemented("decompose_circuit returns a list.")
        else:
            self.dec_circuit = dec_circuit
            assert type(dec_circuit) is QuantumCircuit
            return dec_circuit
