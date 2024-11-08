t = int(input())

for _ in range(t):
    n = int(input())
    numbers = map(int, input().split())
    s1 = set(numbers)
    print(len(s1))
