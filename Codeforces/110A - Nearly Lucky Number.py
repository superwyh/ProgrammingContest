n = int(input())

check = 0

while n != 0:
    rem = n % 10
    n //= 10
    if rem == 7 or rem == 4:
        check += 1

if check != 4 and check != 7:
    print("NO")
else:
    print("YES")
