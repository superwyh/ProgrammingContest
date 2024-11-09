def main():
    t = int(input())
    for _ in range(t):
        n = int(input())
        arr = list(map(int, input().split()))
        total_sum = sum(abs(x) for x in arr)
        negative_count = sum(1 for x in arr if x < 0)
        arr = [abs(x) for x in arr]

        if negative_count % 2 == 0:
            print(total_sum)
        else:
            print(total_sum - 2 * min(arr))

if __name__ == "__main__":
    main()
