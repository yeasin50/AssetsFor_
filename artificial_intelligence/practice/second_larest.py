# n = int(input("Number of input: "))

data = [2,4,6,7,11,3,3]

# for i in range(n):
#     a = int(input())
#     data.append(a)

for d in data:
    print(d, end=",")

print()
data.sort()

for d in data:
    print(d, end=",")

print()
print("largest number ", data[-1])
print("second largest number ", data[-2])

print("smallest number ", data[0])
print("second smallest number ", data[1])
