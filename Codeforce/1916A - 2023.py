def main():
    t = int(input()) 
    for _ in range(t):
        n, k = map(int, input().split()) 
        b_values = list(map(int, input().split()))  
        assert len(b_values) == n 
        rem = 2023
        ans = True
        for b in b_values:
            if rem % b != 0: 
                ans = False
                break 
            else:
                rem //= b  

        if ans:
            print("YES")
            print(" ".join(["1"] * (k - 1) + [str(rem)]))
        else:
            print("NO")

if __name__ == "__main__":
    main()
