directions = {'U': (0, 1), 'R': (1, 0), 'D': (0, -1), 'L': (-1, 0)}

def main():
    t = int(input())
    for _ in range(t):
        found = False
        n = int(input())
        moves = input().strip()
        x, y = 0, 0
        for move in moves:
            dx, dy = directions[move]
            x += dx
            y += dy
            if x == 1 and y == 1:
                found = True
                break
        print("YES" if found else "NO")

if __name__ == "__main__":
    main()
