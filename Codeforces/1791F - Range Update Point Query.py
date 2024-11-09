# 程序应该没错，使用Python 3第3个就会超时，使用PyPy 3-64会在第18个超时
def get_digit_sum(x):
    return sum(int(d) for d in str(x))

def main():
    t = int(input())
    for _ in range(t):
        n, q = map(int, input().split())
        arr = list(map(int, input().split()))
        indices = set(range(n))

        for _ in range(q):
            query = list(map(int, input().split()))
            if query[0] == 1:
                l, r = query[1] - 1, query[2] - 1
                current_indices = sorted(i for i in indices if l <= i <= r)

                for i in current_indices:
                    arr[i] = get_digit_sum(arr[i])
                    if arr[i] <= 9:
                        indices.remove(i)
            else:
                x = query[1] - 1
                print(arr[x])

if __name__ == "__main__":
    main()
