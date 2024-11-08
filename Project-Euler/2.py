if __name__ == "__main__":
    ans, x, y = 0, 1, 2
    while x <= 4000000:
        if x % 2 == 0:
            ans += x
        x, y = y, x + y
    print(ans)
