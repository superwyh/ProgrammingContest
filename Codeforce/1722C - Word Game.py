from collections import Counter

def calculate_points(t, test_cases):
    results = []
    
    for case in test_cases:
        n = case[0]  
        words_player1 = case[1]
        words_player2 = case[2]
        words_player3 = case[3]

        all_words = words_player1 + words_player2 + words_player3
        word_counts = Counter(all_words)
        
        scores = [0, 0, 0]
        
        for i, words in enumerate([words_player1, words_player2, words_player3]):
            for word in words:
                if word_counts[word] == 1:  
                    scores[i] += 3
                elif word_counts[word] == 2:  
                    scores[i] += 1    
        results.append(scores)
    return results

t = int(input())  
test_cases = []

for _ in range(t):
    n = int(input())  
    words_player1 = input().split()
    words_player2 = input().split()
    words_player3 = input().split()
    test_cases.append((n, words_player1, words_player2, words_player3))

results = calculate_points(t, test_cases)

for result in results:
    print(*result)