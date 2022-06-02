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


def get_circuit_unitary(circuit, decimals: int = 8, backend=None):
    if backend is None:
        backend = Aer.get_backend("aer_simulator")
    unitary = None
    # have to make copy to avoid changes in the original circuit due to save_unitary.
    new_circuit = circuit.copy()
    new_circuit.save_unitary()
    transpiled = transpile(new_circuit, backend)

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
        self.synthesizer = None

    def load_hamiltonian(self, hamiltonian: str, optimizer=None):
        """Load given Hamiltonian

        Loads the given Hamiltonian from the folder `hamiltonian/`.
        Hamiltonian when read from a file can further be optimized

        Args:
            - hamiltonian: name of the hamiltonian file
            - optimizer: callable that will take in the pauli_op and optimize it
        """
        self.hamiltonian = hamiltonian
        pauli_op: PauliSumOp = get_pauli_sum_op(hamiltonian)
        if optimizer is not None:
            pauli_op = optimizer(pauli_op)

        self.pauli_op = pauli_op

    def re_init(self):
        """
        Re-initialize the synthesizer for the construction of circuit.
        """
        raise NotImplemented("Accessing superclass is not allowed")

    def get_circuit(self) -> QuantumCircuit:
        """Get Hamiltonian circuit.

        Get the higher level circuit for the Hamiltonian.
        Note that the circuit must be converted to fundamental gates for
        measuring the gate depth.

        Returns:
            Quantum Circuit for the loaded hamiltonian.
        """
        evo_gate = PauliEvolutionGate(self.pauli_op, 1.0, synthesis=self.synthesizer)

        num_qubits = evo_gate.num_qubits
        self.num_qubits = num_qubits
        circ = QuantumCircuit(num_qubits)  # reset circuit everytime to avoid pile-up
        circ.append(evo_gate, list(range(num_qubits)))

        self.circuit = circ
        return circ

    def decompose_circuit(self, optimizer=None) -> QuantumCircuit:
        assert self.circuit is not None, "Circuit not prepared yet."

        dec_circuit = decompose_circuit(self.circuit)
        if type(dec_circuit) is list:
            raise NotImplemented("decompose_circuit returns a list.")

        if optimizer is not None:
            dec_circuit = optimizer(dec_circuit)

        self.dec_circuit = dec_circuit
        assert type(dec_circuit) is QuantumCircuit
        return dec_circuit
