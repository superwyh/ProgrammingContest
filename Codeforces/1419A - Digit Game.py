t = int(input())  
for _ in range(t):
    n = int(input())  
    s = input()  
    turn = not (n % 2)  
    win = False
    for p in range(turn, len(s), 2):  
        win |= (int(s[p]) % 2 == (0 if turn else 1)) 
    print(2 - (turn ^ win)) 
