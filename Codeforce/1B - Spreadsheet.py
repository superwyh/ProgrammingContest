import re

def column_to_excel(n):
    result = ""
    while n > 0:
        n -= 1
        result = chr(n % 26 + ord('A')) + result
        n //= 26
    return result

def excel_to_column(col):
    result = 0
    for char in col:
        result = result * 26 + (ord(char) - ord('A') + 1)
    return result

def convert_coordinate(coord):
    if re.match(r"R\d+C\d+", coord):
        row, col = map(int, re.findall(r"\d+", coord))
        return f"{column_to_excel(col)}{row}"
    else:
        match = re.match(r"([A-Z]+)(\d+)", coord)
        col, row = match.groups()
        col_num = excel_to_column(col)
        return f"R{row}C{col_num}"

n = int(input())
for _ in range(n):
    coord = input().strip()
    print(convert_coordinate(coord))
