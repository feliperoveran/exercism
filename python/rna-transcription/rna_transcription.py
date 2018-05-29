TRANSCRIPTION_DICT = {
        'C': 'G',
        'G': 'C',
        'T': 'A',
        'A': 'U'
        }

def to_rna(dna_strand):
    bases = list(dna_strand)

    transcription = ''

    for base in bases:
        # Check if base is valid
        if not base in TRANSCRIPTION_DICT:
            raise ValueError('Invalid DNA strand.')

        transcription += TRANSCRIPTION_DICT[base]

    return transcription
