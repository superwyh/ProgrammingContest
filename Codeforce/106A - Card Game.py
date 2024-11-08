trump = input().strip()
input_cards = input().strip()

output = "NO"

value = {
    '6': 6, '7': 7, '8': 8, '9': 9,
    'T': 10, 'J': 11, 'Q': 12, 'K': 13, 'A': 14
}

if input_cards[1] == trump and input_cards[4] != trump:
    output = "YES"

elif input_cards[1] == input_cards[4] and value[input_cards[0]] > value[input_cards[3]]:
    output = "YES"

print(output)
