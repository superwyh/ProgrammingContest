def main():
    t = int(input())
    for _ in range(t):
        n = int(input())
        s = input().strip()
        pre = set()
        suff = set()
        prefix = []
        suffix = [0] * n
        
        for char in s:
            pre.add(char)
            prefix.append(len(pre))

        for i in range(n - 1, -1, -1):
            suff.add(s[i])
            suffix[i] = len(suff)

        ans = 0
        for i in range(n - 1):
            ans = max(prefix[i] + suffix[i + 1], ans)

        print(ans)

if __name__ == "__main__":
    main()
