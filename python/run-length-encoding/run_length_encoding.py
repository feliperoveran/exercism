import re
from functools import reduce

def decode(string):
    quantities = re.findall('(\d+)?(\w|\s)', string)

    return reduce(__decode, quantities, '')


def __decode(result, quantity):
    count = int(quantity[0]) if quantity[0] else 1
    result += count * quantity[1]
    return result


def encode(string):
    return __encode(string, '')


def __encode(string, result):
    if len(string) == 0: return result

    match = re.match('{}+'.format(string[0]), string)
    count = len(match.group())

    if count > 1: result += str(count)
    result += match.group()[0]

    remaining_string = string[match.end():]

    return __encode(remaining_string, result)
