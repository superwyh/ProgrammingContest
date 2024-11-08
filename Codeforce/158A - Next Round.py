def main():
    n_k = input().split()
    n = int(n_k[0])
    k = int(n_k[1])

    arr_line = input().split()
    arr = list(map(int, arr_line))

    if k > n or k <= 0:
        print(0)
        return

    if arr[k - 1] > 0:
        quali = arr[k - 1]
        count = k
    else:
        m = k - 2
        while m >= 0 and arr[m] <= 0:
            m -= 1
        if m >= 0:
            quali = arr[m]
            count = m + 1
            print(count)
            return
        else:
            print(0)
            return

    j = count
    while j < n and arr[j] == quali:
        count += 1
        j += 1

    print(count)

if __name__ == "__main__":
    main()
