t = int(input())
MOD = 1000000007

for _ in range(t):
    n = int(input())
    res = (n - 1) * n
    for i in range(1, n + 1):
        res = (res * i) % MOD
    print(res)
