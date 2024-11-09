def main():
    t = int(input())
    for _ in range(t):
        n, c = map(int, input().split())
        elements = list(map(int, input().split()))

        for i in range(n):
            elements[i] += i + 1

        elements.sort()
        res = 0
        cnt = 0

        for i in range(n):
            res += elements[i]
            if res > c:
                break
            cnt += 1

        print(cnt)

if __name__ == "__main__":
    main()
