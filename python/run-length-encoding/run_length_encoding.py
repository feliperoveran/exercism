import re

def decode(string):
    quantities = re.findall('(\d+)?(\w|\s)', string)
    result = ''

    for quantity in quantities:
        count = quantity[0]
        letter = quantity[1]

        if count:
            result += int(count) * letter
        else:
            result += letter

    return(result)


def encode(string):
    result = ''

    while len(string) > 0:
        remaining_string = string.lstrip(string[0])
        if len(remaining_string) > 0:
            different_element = remaining_string[0]
            count = string.index(different_element)
        else:
            different_element = string[-1]
            count = len(string)

        if count > 1:
            result += str(count) + string[0]
        else:
            result += string[0]

        string = remaining_string

    return result
