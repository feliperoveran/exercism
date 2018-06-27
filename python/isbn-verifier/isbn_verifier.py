import re

def verify(isbn):
    regex = '\A\d{1}-?\d{3}-?\d{5}-?[0-9X]{1}\Z'

    if not re.match(regex, isbn):
        return False

    isbn = re.sub("-", "", isbn)

    result = 0

    for i, num in enumerate(isbn):
        if num == 'X':
            num = 10

        result += int(num) * (10-i)

    return result % 11 == 0
