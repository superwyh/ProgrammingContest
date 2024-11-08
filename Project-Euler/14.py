from typing import Dict

def collatz(n: int, d: Dict[int, int]) -> int:
    if n not in d:
        if n % 2 == 0:
            d[n] = 1 + collatz(n // 2, d)
        else:
            d[n] = 1 + collatz(3 * n + 1, d)
    return d[n]

def solve():
    upper_bound = 1000000
    d = {1: 1}
    
    for i in range(1, upper_bound):
        collatz(i, d)
    
    answer = max(d, key=d.get)
    return answer

if __name__ == "__main__":
    print(solve())
