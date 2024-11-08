t = int(input())

for _ in range(t):
    l, r = map(int, input().split())
    l -= 1

    if l % 2 == 0:
        odd_l = (l // 2) ** 2
    else:
        odd_l = ((l // 2) + 1) ** 2

    even_l = (l // 2) * ((l // 2) + 1)

    if r % 2 == 0:
        odd_r = (r // 2) ** 2
    else:
        odd_r = ((r // 2) + 1) ** 2

    even_r = (r // 2) * ((r // 2) + 1)

    even_s = even_r - even_l
    odd_s = odd_r - odd_l

    print(even_s - odd_s)
