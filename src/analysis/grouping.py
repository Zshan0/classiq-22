from enum import unique
from pprint import pprint

"""
Problem Statement: Generate the best possible permutation
of a given set of strings so as to increase some "measure"
of commutativity among all the strings (in order).
"""
with open("LiH") as f:
    probs = []
    signs = []
    strings = []
    for line in f.readlines():
        tokens = line.split()
        if tokens != []:
            probs.append(tokens[0])
            signs.append(tokens[1])
            strings.append(tokens[3])

strings.sort()

"""
Suppose you have the string IIIYYIIIXX,
then hypothesis:
    - IIIYYIIIYY exists
    - IIIXXIIIXX exists
    - IIIXXIIIYY exists

Testing this hypothesis now.
"""
try:
    for string in strings:
        s1 = string.replace("X", "Y")
        s2 = string.replace("Y", "X")

        s3 = string.replace("X", "U")
        s3 = s3.replace("Y", "X")
        s3 = s3.replace("U", "Y")

        assert s1 in strings and s2 in strings and s3 in strings
    print("Hypothesis correct")
except:
    print("Hypothesis incorrect")


"""
Check reflexitivity in the following sense.
If AB is in strings, then BA also is in strings.
Here, A and B each are substrings of length 5.
"""
count = 0
for string in strings:
    s = string[5:] + string[:5]
    if s not in strings:
        count += 1
print(f"Count of non-reflecive shit {count}.")


"""
Check if reverse exists.
"""
count = 0
for string in strings:
    s = string[::-1]
    if s not in strings:
        count += 1
print(f"Count of non-reverse shit {count}.")

"""
Grouping stage 1:
----------
YZZZYIIIYY (1)
XZZZYIIIYY
YZZZYIIIXX
XZZZYIIIXX
IIIYYYZZZY
IIIYYXZZZY
IIIXXYZZZY
IIIXXXZZZY
----------
Current mapping is coeff.


Group stage 2:
Randomly shuffle the groups formed.


Grouping stage 3:
Additional mapping for each group,
based on (1).
Mapping is (1).replace('X'/'Y'/'Z' with 'U').

For example, YZZZYIIIYY has mapping UZZZUIIIUU.
This group should be in touch with IIIIIUUUII.

----------
YZZZYIIIYY (1)
XZZZYIIIYY
YZZZYIIIXX
XZZZYIIIXX
IIIYYYZZZY
IIIYYXZZZY
IIIXXYZZZY
IIIXXXZZZY
----------
"""
