def number_to_english(n: int) -> str:
    ones = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten",
            "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
    tens = ["", "", "twenty", "thirty", "forty", "fifty", "sixty", "seventy", "eighty", "ninety"]
    
    if 0 <= n < 20:
        return ones[n]
    elif 20 <= n < 100:
        return tens[n // 10] + ("-" + ones[n % 10] if n % 10 != 0 else "")
    elif 100 <= n < 1000:
        return ones[n // 100] + " hundred" + (" and " + number_to_english(n % 100) if n % 100 != 0 else "")
    elif n == 1000:
        return "one thousand"
    else:
        raise ValueError("Number out of range")

def solve():
    return sum(len(number_to_english(i + 1).replace(" ", "").replace("-", "")) for i in range(1000))

if __name__ == "__main__":
    print(solve())
