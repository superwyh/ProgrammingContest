import math

def gcd(a, b):
    return math.gcd(a, b)

a, b, n = map(int, input().split())

flag1 = 0

while n > 0:
    if flag1 == 0:
        val = gcd(a, n)
        n -= val
        flag1 = 1
    else:
        val = gcd(b, n)
        n -= val
        flag1 = 0

if flag1 == 1:
    print("0")
else:
    print("1")
