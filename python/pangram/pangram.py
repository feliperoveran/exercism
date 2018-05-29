import string

def is_pangram(sentence):
    alphabet = list(string.ascii_lowercase)
    sentence = sentence.lower()

    for letter in alphabet:
        count = sentence.count(letter)

        if count == 0:
            return False

    return True
