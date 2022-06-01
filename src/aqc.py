import numpy as np

from qiskit.transpiler.synthesis.aqc import (
    make_cnot_network,
    AQC,
    CNOTUnitCircuit,
    DefaultCNOTUnitObjective,
)
from qiskit.algorithms.optimizers import L_BFGS_B


def get_approximate_circuit(unitary: np.ndarray, **kwargs):
    num_qubits = int(round(np.log2(unitary.shape[0])))
    default_params = {
        "network_layout": "sequ",
        "connectivity_type": "full",
        "depth": 50,
    }

    params = {**default_params, **kwargs}

    # Generate a network made of CNOT units
    cnots = make_cnot_network(num_qubits=num_qubits, **params)

    optimizer = L_BFGS_B(maxiter=10, iprint=99)
    aqc = AQC(optimizer)
    approximating_objective = DefaultCNOTUnitObjective(
        num_qubits=num_qubits, cnots=cnots
    )

    approximate_circuit = CNOTUnitCircuit(num_qubits=num_qubits, cnots=cnots)
    aqc.compile_unitary(
        target_matrix=unitary,
        approximate_circuit=approximate_circuit,
        approximating_objective=approximating_objective,
    )
    return approximate_circuit


def main():
    from lietrotter import Lie
    from constructor import get_hamiltonian_unitary, hamiltonian_circuit_error

    hamiltonian = "LiH"
    constructor = Lie()
    constructor.load_hamiltonian(hamiltonian)
    unitary = get_hamiltonian_unitary(constructor.pauli_op)
    approximate_circuit = get_approximate_circuit(unitary)

    print(approximate_circuit.depth())
    print(hamiltonian_circuit_error(approximate_circuit, constructor.pauli_op))


if __name__ == "__main__":
    main()
