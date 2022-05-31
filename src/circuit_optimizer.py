from qiskit import QuantumCircuit
from lietrotter import Lie
from constructor import hamiltonian_circuit_error
from parser import export_circuit

from qiskit.transpiler import PassManager
from qiskit.transpiler.passes import (
    Optimize1qGatesSimpleCommutation,
    CommutativeCancellation,
)


def pass_call_back(original_depth, dict_):
    print(f"{dict_['pass_']} completed in {dict_['time']}")
    print(f"original depth: {original_depth} new depth: {dict_['dag'].depth()}")


def backend_optimize(circuit: QuantumCircuit):
    circ = circuit.copy()
    original_depth = circ.depth()

    gates = ["u3", "cx"]
    simple_commutation_pass = Optimize1qGatesSimpleCommutation(basis=gates)
    commutative_cancellation_pass = CommutativeCancellation(basis_gates=gates)

    passes = [simple_commutation_pass, commutative_cancellation_pass]
    manager = PassManager(passes)

    def call_back(**kwargs):
        pass_call_back(original_depth, kwargs)

    transpiled_circ = manager.run(circ, callback=call_back)

    assert type(transpiled_circ) is QuantumCircuit, "transpile returned list."
    new_depth = transpiled_circ.depth()
    print(f"new:{new_depth} old:{original_depth}")

    return transpiled_circ


def main():
    hamiltonian = "LiH"
    constructor = Lie(1)
    constructor.load_hamiltonian(hamiltonian)
    constructor.get_circuit()
    pauli_op = constructor.pauli_op
    dec_circuit = constructor.decompose_circuit()

    optim_circ = backend_optimize(dec_circuit)
    new_error = hamiltonian_circuit_error(optim_circ, pauli_op)
    original_error = hamiltonian_circuit_error(dec_circuit, pauli_op)

    print(f"original error:{original_error}, new error:{new_error}")
    export_circuit(
        optim_circ,
        f"circuits/{constructor.hamiltonian}_{constructor.method}_{optim_circ.depth()}.qasm",
    )


if __name__ == "__main__":
    main()
