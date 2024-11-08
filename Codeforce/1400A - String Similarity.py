def main():
    t = int(input()) 
    for _ in range(t):
        n = int(input())  
        s = input() 
    
        result = s[0:2*n-1:2]
        
        print(result)

if __name__ == "__main__":
    main()
