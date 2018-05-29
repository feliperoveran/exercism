import string

def is_isogram(phrase):
    alphabet = list(string.ascii_lowercase)
    phrase = phrase.lower()

    for letter in alphabet:
        count = phrase.count(letter)

        if count > 1:
            return False

    return True
