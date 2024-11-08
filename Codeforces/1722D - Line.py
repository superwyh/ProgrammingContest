def main():
    t = int(input())  
    for _ in range(t):
        n = int(input())  
        s = input()  
        diffs = [0] * n
        sum = 0
        for p in range(n):
            cur = p if s[p] == 'L' else n - p - 1
            mx = max(p, n - p - 1)
            sum += cur
            diff = mx - cur
            diffs[p] = diff

        diffs.sort(reverse=True)

      
        for p in range(n):
            sum += diffs[p]
            print(sum, end=" ")
        print() 

if __name__ == "__main__":
    main()
