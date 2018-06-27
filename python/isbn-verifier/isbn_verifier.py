import re

def verify(isbn):
    if validate_format(isbn):
        result = 0

        for i, num in enumerate(remove_dashes(isbn)):
            if num == 'X':
                num = 10

            result += int(num) * (10 - i)

        return mod_11(result)
    else:
        return False


def validate_format(isbn):
    return re.match('\A\d{1}-?\d{3}-?\d{5}-?[0-9X]{1}\Z', isbn)


def remove_dashes(isbn):
    return re.sub("-", "", isbn)


def mod_11(value):
    return value % 11 == 0
