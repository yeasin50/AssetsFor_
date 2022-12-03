data  = "This is main String"

print("original data:",data)

#replace the `This is` with That
newData = data.replace("This is", "That was")

print(newData)

# replace without builtIn funtion
newData =  data[0:8]+ "without builtin function"

print(newData)
