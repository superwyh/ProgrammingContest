def transform_string(s):
    r = ""
    s = s.lower()
    for i in s:
        if i in ['a', 'e', 'i', 'o', 'u', 'y']:
            continue
        else:
            r += "."
            r += i
    
    print(r)
    
s = input()
transform_string(s)
