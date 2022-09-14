
fileName = 'test_file.txt' 

# reading txt file
with open(fileName, 'r') as file:
    lines  = file.readlines()
    for line in lines:
        print(line.rstrip("\n")) #rstrip("\n") to remove newline, print method provide new line by default

# writing a new file 
with open("new_file.txt", 'w') as file:
    file.write('"what we desire makes us vulnerable"~')

# append the existing data
with open("new_file.txt", 'a') as file:
    file.write('\nAl final la melodía que siempre busqué, estuvo siempre dentro de mi')

