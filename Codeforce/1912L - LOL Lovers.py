def solve():
    n = int(input())
    s = input()
    ctL = 0
    ctO = 0
    netL = 0
    netO = 0
    for c in s:
        if c == 'L':
            netL += 1
        else:
            netO += 1
    for i in range(n - 1):
        if s[i] == 'L':
            ctL += 1
        else:
            ctO += 1
        if ctL != netL - ctL and ctO != netO - ctO:
            print(i + 1)
            return
    print(-1)

def main():
    TC = 1
    while TC > 0:
        solve()
        TC -= 1

if __name__ == "__main__":
    main()
