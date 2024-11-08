for a in range(3, 1000):
    for b in range(a + 1, 999):
        c = (a**2 + b**2)**0.5
        if a + b + c == 1000 and c.is_integer():
            product = int(a * b * c)
            print(product)
            break
