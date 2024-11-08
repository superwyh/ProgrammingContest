def main():
    t = int(input()) 
    for _ in range(t):
        n, k = map(int, input().split())  
        s = input() 
        v = [0] * n 
        for p in range(n):
            v[p] = (s[p] == 'W') + (v[p - 1] if p > 0 else 0)
        res = v[k - 1]
        for p in range(k, n):
            cur = v[p] - v[p - k]
            res = min(res, cur)
        print(res)

if __name__ == "__main__":
    main()