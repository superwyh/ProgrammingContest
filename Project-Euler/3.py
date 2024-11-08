import math

if __name__ == "__main__":
    n = 600851475143
    for i in range(2, math.isqrt(n) + 1):
        while n % i == 0:
            n //= i
    print(n)
