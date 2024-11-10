def process_strings(t, strings):
    for s in strings:
        sorted_s = sorted(s)
        print(sorted_s[0], end=" ")
        check = False
        for i in s:
            if i == sorted_s[0] and not check:
                check = True
                continue
            print(i, end="")
        print()
t = int(input())
strings = [input().strip() for _ in range(t)]
process_strings(t, strings)
