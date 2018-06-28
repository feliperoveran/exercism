from functools import reduce

def distance(strand_a, strand_b):
    if len(strand_a) != len(strand_b):
        raise ValueError('Strands size does not match')

    distance = 0

    for a, b in zip(strand_a, strand_b):
        distance += int(a != b)

    return distance
