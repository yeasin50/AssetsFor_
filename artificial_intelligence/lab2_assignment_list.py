data = ["a","b", "c"]
print("total items ")

i = 0
while(i< len(data)):
    print("index:", i, " data:", data[i])
    i+=1

# ['b', 'c']
print(data[1:])


# check if a contains in list `data`
if "a" in data:
    print("a contains in data list")
else:
    print("a doesn't contain in data list")

# check if x contains in list `data`
if "x" in data:
    print("x contains in data list")
else:
    print("x doesn't contain in data list")

 
# check if b contains in list `data`
if "b" not in data:
    print("b doesn't contain in data list")
else:
    print("b contains in data list")
   
# check if c contains in list `data`
if "c" not in data:
    print("c doesn't contain in data list")
else:
    print("c contains in data list")
    
