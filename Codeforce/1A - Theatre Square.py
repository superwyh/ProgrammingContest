import math

n, m, a = map(int, input().split())

num_flagstones = math.ceil(n / a) * math.ceil(m / a)

print(num_flagstones)