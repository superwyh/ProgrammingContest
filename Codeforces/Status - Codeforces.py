def max_cards_taken(t, test_cases):
    results = []
    for n, k, cards in test_cases:
        cards.sort()
        
        ans = 0
        r = 0

        for l in range(n):
            while r < n and (cards[r] - cards[l] < k) and (r == l or abs(cards[r] - cards[r - 1]) < 2):
                r += 1
            ans = max(ans, r - l)

        results.append(ans)
    
    return results

t = int(input())
test_cases = []
for _ in range(t):
    n, k = map(int, input().split())
    cards = list(map(int, input().split()))
    test_cases.append((n, k, cards))

results = max_cards_taken(t, test_cases)

for res in results:
    print(res)