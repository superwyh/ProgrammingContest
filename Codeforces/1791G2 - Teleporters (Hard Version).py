# 程序想不到优化余地了，但是在第10组数据会超时，应该是Python的问题了
def binary_search(i, n, c, nums, right_nums, sum_nums):
    idx = right_nums[i][1]

    if c < (nums[idx] + idx + 1):
        return 0

    c -= (nums[idx] + idx + 1)
    l, r = 0, n - 1

    while l < r:
        m = r - (r - l) // 2
        dup = right_nums[i][0] if m > i else 0
        if c >= (sum_nums[m] - dup):
            l = m
        else:
            r = m - 1

    return l + (i >= l)

def do1(n, c, left_nums, right_nums, visited):
    lidx, ridx = 0, 0
    used_left = False
    output = 0

    for _ in range(1, n + 1):
        while visited[left_nums[lidx][1]]:
            lidx += 1
        while visited[right_nums[ridx][1]]:
            ridx += 1

        if c < min(left_nums[lidx][0], right_nums[ridx][0]):
            break

        if left_nums[lidx] <= right_nums[ridx]:
            c -= left_nums[lidx][0]
            visited[left_nums[lidx][1]] = True
            lidx += 1
            used_left = True
        else:
            c -= right_nums[ridx][0]
            visited[right_nums[ridx][1]] = True
            ridx += 1

        output += 1

    return output if used_left else 0

def solve():
    n, c = map(int, input().split())
    nums = list(map(int, input().split()))

    left_nums = [(nums[i] + i + 1, i) for i in range(n)]
    right_nums = [(nums[i] + n - i, i) for i in range(n)]
    visited = [False] * n
    sum_nums = [0] * (n + 1)

    left_nums.sort()
    right_nums.sort()

    output = do1(n, c, left_nums, right_nums, visited)

    if output > 0:
        print(output)
        return

    for i in range(n):
        sum_nums[i + 1] = sum_nums[i] + right_nums[i][0]

    for i in range(n):
        output = max(output, binary_search(i, n, c, nums, right_nums, sum_nums))

    print(output)

if __name__ == "__main__":
    t = int(input())
    for _ in range(t):
        solve()
