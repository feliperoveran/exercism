from functools import reduce
from collections import Counter


# Score categories
YACHT = 'YACHT'
ONES = 'ONES'
TWOS = 'TWOS'
THREES = 'THREES'
FOURS = 'FOURS'
FIVES = 'FIVES'
SIXES = 'SIXES'
FULL_HOUSE = 'FULL_HOUSE'
FOUR_OF_A_KIND = 'FOUR_OF_A_KIND'
LITTLE_STRAIGHT = 'LITTLE'
BIG_STRAIGHT = 'BIG_STRAIGHT'
CHOICE = 'CHOICE'


def score(dice, category):
    if category == ONES:
        return sum_equals(dice, 1)
    elif category == TWOS:
        return sum_equals(dice, 2)
    elif category == THREES:
        return sum_equals(dice, 3)
    elif category == FOURS:
        return sum_equals(dice, 4)
    elif category == FIVES:
        return sum_equals(dice, 5)
    elif category == SIXES:
        return sum_equals(dice, 6)
    elif category == LITTLE_STRAIGHT:
        return little_straight(dice)
    elif category == YACHT:
        return yacht(dice)
    elif category == BIG_STRAIGHT:
        return big_straight(dice)
    elif category == CHOICE:
        return sum(dice)
    elif category == FOUR_OF_A_KIND:
        return four_of_a_kind(dice)
    elif category == FULL_HOUSE:
        return full_house(dice)


def sum_equals(arr, num):
    return reduce((lambda sum, n: n + sum if n == num else sum), arr, 0)


def little_straight(dice):
    dice.sort()
    if dice == [1, 2, 3, 4, 5]:
        return 30
    else:
        return 0


def big_straight(dice):
    dice.sort()
    if dice == [2, 3, 4, 5, 6]:
        return 30
    else:
        return 0


def yacht(dice):
    if len(set(dice)) == 1:
        return 50
    else:
        return 0


def four_of_a_kind(dice):
    counter = Counter(dice)
    most_frequent = max(counter)
    if counter[most_frequent] >= 4:
        return 4 * most_frequent
    else:
        return 0


def full_house(dice):
    counter = Counter(dice)
    values = list(counter.values())
    values.sort()
    if values == [2, 3]:
        return sum(dice)
    else:
        return 0
