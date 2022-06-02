from qiskit.synthesis import SuzukiTrotter
from constructor import Constructor


class Suzuki(Constructor):
    def __init__(self, order: int = 1, optimizer=None):
        super().__init__("SUZUKI", optimizer)
        assert order > 0, "Incorrect order."
        self.order = order

    def re_init(self, _reps):
        """Re-initialize synthesizer
        Re-initializes the synthesizer with new number of reps.

        Args:
            _reps: Number of times QDRIFT must be repeated in the circuit.
        Raises:
            AssertionError: Incorrect rep count.
            AssertionError: QDrift could not construct circuit.
        """
        assert _reps > 0, "Incorrect number of reps provided"
        self.synthesizer = SuzukiTrotter(reps=_reps)
        assert self.synthesizer is not None, "Error constructing the circuit."
