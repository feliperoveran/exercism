import re

def hey(phrase):
    phrase = phrase.rstrip()

    if re.match('^\s*$', phrase):
        return 'Fine. Be that way!'
    elif re.match('[A-Z\s]*\?\Z', phrase):
        return "Calm down, I know what I'm doing!"
    elif re.match('.*\?\Z', phrase):
        return 'Sure.'
    elif re.match('[A-Z\s]+\Z', phrase) or re.match('[A-Z \W\d]+!+\Z', phrase):
        return 'Whoa, chill out!'
    else:
        return 'Whatever.'
