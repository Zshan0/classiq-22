import parser
import constructor

def main():
    file_name = "qasm/res.qasm"
    circ = parser.import_circuit(file_name)
    print(f"depth:{circ.depth()}")
    pauli = parser.get_pauli_sum_op("LiH")
    print(f"error: {constructor.hamiltonian_circuit_error(circ, pauli)}")


if __name__ == "__main__":
    main()

