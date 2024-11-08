t = int(input())
for _ in range(t):
    n = int(input())
    arr = list(map(int, input().split()))
    ans = 0
    for i in range(n - 1):
        if ((arr[i] % 2 == 1 and arr[i + 1] % 2 == 1) or (arr[i] % 2 == 0 and arr[i + 1] % 2 == 0)):
            ans += 1
    print(ans)
