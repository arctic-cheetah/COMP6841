import math
import matplotlib.pyplot as plt
import numpy as np

data = [
    824.50,
    367.40,
    925.20,
    146.10,
    782.35,
    234.00,
    673.90,
    513.60,
    391.75,
    865.00,
    214.30,
    358.40,
    689.10,
    471.90,
    134.25,
    297.80,
    842.60,
    518.45,
    633.70,
    984.00,
    173.25,
    791.55,
    329.95,
    253.60,
    694.85,
    375.20,
    867.30,
    123.45,
    964.10,
    432.60,
    251.90,
    712.80,
    198.50,
    346.75,
    659.30,
    572.00,
    879.60,
    423.50,
    768.10,
    381.70,
    216.40,
    951.20,
    344.95,
    862.90,
    704.80,
    235.55,
    176.60,
    697.40,
    348.10,
    914.75,
]
NUM_ELEMENTS = 50
frequency = {}
bins = 10

for d in data:
    most_significant_digit = math.floor(d / 100)
    numOccurrence = frequency.get(most_significant_digit)
    if numOccurrence:
        frequency[most_significant_digit] = numOccurrence + 1
    else:
        frequency[most_significant_digit] = 1

freq_list = list(frequency.items())
freq_list.sort(key=lambda x: x[0])
res = list(map(lambda x: (x[0], x[1] / NUM_ELEMENTS), freq_list))
print(res)
# numOccurences = list(zip(*res))
# print(numOccurrence)
freq_dict = dict(res)
print(freq_dict)

plt.bar(
    list(freq_dict.keys()),
    list(freq_dict.values()),
)
plt.xlabel("Digit from 1-9")
plt.ylabel("Frequency")
plt.title("Frequency of digit")
plt.xticks([x for x in range(0, 10)])
plt.grid(True)
# print(numOccurences)
# # np.array(numOccurrences[0])
# # np.array(numOccurrences[1])

# fig, axes = plt.plot(np.array(numOccurences[0]), np.array(numOccurences[1]), )
plt.show()
