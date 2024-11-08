def main():
    s1 = input().strip()
    s2 = input().strip()
    s3 = input().strip()
    s4 = s1 + s2
    if len(s4) != len(s3):
        print("NO")
        return
    else:
        s3_sorted = ''.join(sorted(s3))
        s4_sorted = ''.join(sorted(s4))
        if s3_sorted != s4_sorted:
            print("NO")
            return
        else:
            print("YES")
            return

if __name__ == "__main__":
    main()
