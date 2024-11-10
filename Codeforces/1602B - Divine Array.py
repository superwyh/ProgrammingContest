def process_queries(t, test_cases):
    for n, arr, queries in test_cases:
        max_val = max(arr)
        brr = [[0] * n for _ in range(max_val + 1)]

        for i in range(n):
            brr[0][i] = arr[i]

        for j in range(max_val):
            freq_map = {}
            for i in range(n):
                freq_map[brr[j][i]] = freq_map.get(brr[j][i], 0) + 1
            for i in range(n):
                brr[j + 1][i] = freq_map[brr[j][i]]

        for a, b in queries:
            if b < max_val:
                print(brr[b][a - 1])
            else:
                print(brr[max_val][a - 1])

t = int(input())
test_cases = []
for _ in range(t):
    n = int(input())
    arr = list(map(int, input().split()))
    q = int(input())
    queries = [tuple(map(int, input().split())) for _ in range(q)]
    test_cases.append((n, arr, queries))

process_queries(t, test_cases)
