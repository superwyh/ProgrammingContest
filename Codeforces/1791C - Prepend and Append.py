def main():
    t = int(input())
    for _ in range(t):
        n = int(input())
        s = input().strip()
        i, j = 0, n - 1
        while i <= j:
            if s[i] != s[j]:
                i += 1
                j -= 1
            else:
                break
        print((j - i) + 1)

if __name__ == "__main__":
    main()
