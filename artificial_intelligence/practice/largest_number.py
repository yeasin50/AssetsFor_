n = int(input("Number of input: "))

data = []

for i in range(n):
    a = int(input())
    data.append(a)


maxValue = 0

for i in range(n):
    if maxValue < data[i]:
        maxValue = data[i]
print("got max: ", maxValue)
     

