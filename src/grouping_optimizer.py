from pickletools import decimalnl_long
from requests import delete
from qiskit.opflow import PauliSumOp
import copy
from parser import get_pauli_list
from hamiltonian_optimizer import BaseHamiltonianOptimizer
import random
from pprint import pprint
from circuit_optimizer import Optimizer as Circ_optimizer
from optimized_order import order, coeffs
from order import order as ordered_grouping

class bcolors:
    HEADER = "\033[95m"
    OKBLUE = "\033[94m"
    OKCYAN = "\033[96m"
    OKGREEN = "\033[92m"
    WARNING = "\033[93m"
    FAIL = "\033[91m"
    ENDC = "\033[0m"
    BOLD = "\033[1m"
    UNDERLINE = "\033[4m"


class PairWiseOptimizer(BaseHamiltonianOptimizer):
    def __init__(self, iter):
        self.num_deletes = 8
        self.iter = iter

    def randomize(self, d):
        keys = list(d.keys())
        random.shuffle(keys)

        coeff_map = dict()
        for key in keys:
            coeff_map[key] = d[key]
        return coeff_map

    def delete_single_group(self, d):
        pass

    def group_by_coeff(self, pauli_list):
        coeff_map = dict()

        for pauli, coeff in pauli_list:
            if coeff in coeff_map:
                coeff_map[coeff].append(pauli)
            else:
                coeff_map[coeff] = [pauli]

        new_list = []
        # coeff_map = self.randomize(coeff_map)
        for coeff, p_list in coeff_map.items():
            new_list.append((coeff, p_list))

        return new_list

    def group_by_u(self, strings):
        nonI_map = dict()
        pauli = ["I", "X", "Y", "Z"]

        for string in strings:
            u_string = string
            for nonI in pauli[1:]:
                u_string = u_string.replace(nonI, "U")

            if u_string in nonI_map:
                nonI_map[u_string].append(string)
            else:
                nonI_map[u_string] = []
                nonI_map[u_string].append(string)

        matched = set()
        new_list = []

        for u_string, u_set in nonI_map.items():
            if u_string in matched:
                continue

            u_list = list(u_set)
            new_list.extend(u_list)

            flip_u_string = (
                u_string.replace("U", "X").replace("I", "U").replace("X", "I")
            )

            if flip_u_string not in nonI_map:
                continue
            flip_set = nonI_map[flip_u_string]
            flip_u_list = sorted(list(flip_set))
            new_list.extend(flip_u_list)

            matched.add(u_string)
            matched.add(flip_u_string)

        assert len(new_list) == len(strings)
        return new_list

    def delete_coffient_group(self, pauli_list):
        """
        delete terms with low coefficints
        """
        new_list = copy.deepcopy(pauli_list)
        for i in range(self.num_deletes):
            deleted_list = []
            min_coff = min([x[1] for x in new_list])
            for term in pauli_list:
                if term[1] > min_coff:
                    deleted_list.append(term)
            new_list = copy.deepcopy(deleted_list)

        # print("newlist len: ", len(new_list))
        return new_list

    def delete_term(self, pauli_list):
        """
        delete a term given its index
        """

        pauli_list.pop(self.iter)
        return pauli_list

    def delete_group(self, pauli_list):
        """
        delete a group given its coeff
        """
        new_list = []
        for string, coeff in pauli_list:
            if coeff != coeffs[self.iter]:
                new_list.append((string, coeff))
        return new_list

    def intra_group_swipe(self, pauli_list):
        """
        Bring reflexives closer within a given group
        """
        new_list = []
        for string, coeff in pauli_list:
            reflected_string = string[5:] + string[:5]
            if reflected_string != string and (reflected_string, coeff) in pauli_list:
                new_list.append((string, coeff))
                new_list.append((reflected_string, coeff))
                pauli_list.remove((reflected_string, coeff))
            else:
                new_list.append((string, coeff))
        return new_list

    def optimize(self, pauli_op: PauliSumOp) -> PauliSumOp:
        """
        Method for optimizing the Pauli operator.

        Args:
            - pauli_op: Pauli operator to be optimized
        Returns:
            - optimized: Pauli operator
        """
        # pauli_list = get_pauli_list(pauli_op)
        # new_pair_list = self.group_by_coeff(pauli_list)

        # new_list = []
        # for coeff, p_list in new_pair_list:
        #     p_list = self.group_by_u(p_list)
        #     for p in p_list:
        #         new_list.append((p, coeff))

        # new_list = self.intra_group_swipe(new_list)
        # pprint(new_list)
        # exit(0)
        new_list = ordered_grouping
        # new_list = self.delete_group(new_list)

        return PauliSumOp.from_list(new_list)

    def __call__(self, pauli_op: PauliSumOp) -> PauliSumOp:
        return self.optimize(pauli_op)


def main(iter):
    from constructor import hamiltonian_circuit_error
    from lietrotter import Lie

    hamiltonian = "LiH"
    optimizer = PairWiseOptimizer(iter)
    circ_optimizer = Circ_optimizer()

    constructor = Lie(optimizer=circ_optimizer)

    constructor.load_hamiltonian(hamiltonian=hamiltonian)
    original_pauli_op = constructor.pauli_op
    constructor.load_hamiltonian(hamiltonian, optimizer=optimizer)

    pauli_op = constructor.pauli_op
    constructor.get_circuit()
    dec_circuit = constructor.decompose_circuit()
    error = hamiltonian_circuit_error(dec_circuit, original_pauli_op)
    depth = dec_circuit.depth()
    print(
        f"{bcolors.WARNING}Optimized error:{error}, depth:{depth} with len(H): {len(original_pauli_op)}{bcolors.ENDC}"
    )

    if error < 0.1 and depth < 2000:
        dec_circuit.qasm(filename=f"QASM--{iter}--{depth}--{error}.qasm")

    return (error, depth)

    # constructor.load_hamiltonian(hamiltonian=hamiltonian)
    # constructor.get_circuit()
    # pauli_op = constructor.pauli_op
    # dec_circuit = constructor.decompose_circuit()
    # error = hamiltonian_circuit_error(dec_circuit, original_pauli_op)
    # depth = dec_circuit.depth()
    # print(
    #     f"{bcolors.WARNING}Unoptimized error:{error}, depth:{depth} with len(H): {len(original_pauli_op)}{bcolors.ENDC}"
    # )


if __name__ == "__main__":
    # del_error = []
    # for i in range(len(coeffs)):
    #     del_error.append((main(i), coeffs[i]))
    # pprint(del_error)
    main(1)