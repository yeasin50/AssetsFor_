n = int(input("array Size: "))

data = []

for i in range(n):
    data.append(int(input()))

for i in range(n):
    print( i, "=", data[i])


