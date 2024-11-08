import itertools, math

def num_divisors(n):
    return sum(2 for i in range(1, int(math.sqrt(n)) + 1) if n % i == 0) - (1 if int(math.sqrt(n))**2 == n else 0)

if __name__ == "__main__":
    triangle = 0
    for i in itertools.count(1):
        triangle += i
        if num_divisors(triangle) > 500:
            print(triangle)
            break
