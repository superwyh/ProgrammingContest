def sieve_of_eratosthenes(limit):
    sieve = [True] * (limit + 1)
    sieve[0] = sieve[1] = False
    for p in range(2, int(limit**0.5) + 1):
        if sieve[p]:
            for i in range(p * p, limit + 1, p):
                sieve[i] = False
    return [i for i, is_prime in enumerate(sieve) if is_prime]

limit = 2000000
primes = sieve_of_eratosthenes(limit)
total = sum(primes)

print(total)
