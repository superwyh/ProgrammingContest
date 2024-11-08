def is_prime(n):
    return n > 1 and all(n % i != 0 for i in range(2, int(n**0.5) + 1))

def nth_prime(n):
    numberOfPrimes, prime = 0, 1

    while numberOfPrimes < n:
        prime += 1
        if is_prime(prime):
            numberOfPrimes += 1
    return prime

print(nth_prime(10001))
