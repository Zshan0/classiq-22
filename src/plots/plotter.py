from matplotlib import pyplot as plt

depth = [2309, 2056, 1999, 1425, 1311]
error = [0.0839846, 0.0834046, 0.0832852, 0.0985824, 0.0989012]
plt.figure(figsize=(5,5))
plt.xlim(0.081, 0.102)
plt.scatter(error, depth)
n = [
    "none",
    "after ordering",
    "ordered and grouped",
    "after deletions",
    "after re-calibration",
]
for i, txt in enumerate(n):
    plt.annotate(txt, (error[i] + 0.00045, depth[i] - 10))

plt.xlabel("Error")
plt.ylabel("Depth")
plt.title("Depth vs Error for different trotter methods")
plt.show()
