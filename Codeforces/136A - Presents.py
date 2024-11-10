def rearrange_indices(n, arr):
    parr = [0] * n
    for i in range(n):
        parr[arr[i] - 1] = i + 1

    for i in range(n):
        print(parr[i], end=" ")
n = int(input())
arr = list(map(int, input().split()))
rearrange_indices(n, arr)
