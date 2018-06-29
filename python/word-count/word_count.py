from collections import Counter
import re

def word_count(phrase):
    regex = re.compile('([0-9a-zA-Z]+\'?[0-9a-zA-Z]+|\d)')
    result = regex.findall(phrase.lower())

    return dict(Counter(result))
