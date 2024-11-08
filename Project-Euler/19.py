import datetime

if __name__ == "__main__":
    print(sum(datetime.date(y, m, 1).weekday() == 6 for y in range(1901, 2001) for m in range(1, 13)))
