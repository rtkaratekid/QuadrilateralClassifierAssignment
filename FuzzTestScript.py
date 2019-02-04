#!/use/bin/env python3
import string
import random

# scaling oracle, outputs should be the same for each of these shape text files
test_file_count = 1

print("\nMaking Squares")
square = [2, 0, 2, 2, 0, 2]
for i in range(1, 50, 5):
    fileName = str(test_file_count) + '.txt'
    test_file_count += 1
    f = open(fileName, "w+")
    my_new_list = [j * i for j in square]
    tokens = ' '.join(map(str, my_new_list))
    f.write(tokens)
    #print(tokens)
    #print(fileName)
    f.close()

print("\nMaking Rectangles")
rectangle = [2, 0, 2, 1, 0, 1]
rectangle2 = [1, 0, 1, 2, 0, 2]
for i in range(1, 50, 5):
    fileName = str(test_file_count) + '.txt'
    test_file_count += 1
    f = open(fileName, "w+")
    my_new_list = [j * i for j in rectangle]
    tokens = ' '.join(map(str, my_new_list))
    f.write(tokens)
    #print(tokens)
    #print(fileName)
    f.close()

for i in range(1, 50, 5):
    fileName = str(test_file_count) + '.txt'
    test_file_count += 1
    f = open(fileName, "w+")
    my_new_list = [j * i for j in rectangle2]
    tokens = ' '.join(map(str, my_new_list))
    f.write(tokens)
    #print(tokens)
    #print(fileName)
    f.close()


print("\nMaking Rhombi")
rhombus = [5, 0, 8, 4, 3, 4]
for i in range(1, 11):
    fileName = str(test_file_count) + '.txt'
    test_file_count += 1
    f = open(fileName, "w+")
    my_new_list = [j * i for j in rhombus]
    tokens = ' '.join(map(str, my_new_list))
    f.write(tokens)
    #print(tokens)
    #print(fileName)
    f.close()

print("\nMaking Trapezoids")
trapezoid = [3, 0, 3, 1, 2, 1]
for i in range(1, 31, 3):
    fileName = str(test_file_count) + '.txt'
    test_file_count += 1
    f = open(fileName, "w+")
    my_new_list = [j * i for j in trapezoid]
    tokens = ' '.join(map(str, my_new_list))
    f.write(tokens)
    #print(tokens)
    #print(fileName)
    f.close()

print("\nMaking Kites")
kite = [2, 1, 2, 2, 1, 2]
for i in range(1, 51, 5):
    fileName = str(test_file_count) + '.txt'
    test_file_count += 1
    f = open(fileName, "w+")
    my_new_list = [j * i for j in kite]
    tokens = ' '.join(map(str, my_new_list))
    f.write(tokens)
    #print(tokens)
    #print(fileName)
    f.close()

print("\nMaking Quadrilaterals")
quadrilateral = [2, 0, 3, 1, 0, 3]
for i in range(1, 31, 3):
    fileName = str(test_file_count) + '.txt'
    test_file_count += 1
    f = open(fileName, "w+")
    my_new_list = [j * i for j in quadrilateral]
    tokens = ' '.join(map(str, my_new_list))
    f.write(tokens)
    #print(tokens)
    #print(fileName)
    f.close()

print("\nMaking Random ints")
# random ints text files
for i in range(1, 667):
    fileName = str(test_file_count) + '.txt'
    test_file_count += 1
    f = open(fileName, "w+")
    for j in range(6):
        token = random.randint(0, 150)  # so err toward less than, but allow greater than 100
        f.write(str(token) + ' ')
        #print(str(token))
    #print(fileName)
    f.close()

print("\nMaking Random ASCII")
# Now open for ASCII hell
for i in range(667, 1001):
    fileName = str(test_file_count) + '.txt'
    test_file_count += 1
    f = open(fileName, "w+")
    for j in range(6):
        token = ''.join(random.choice(string.ascii_letters + string.digits) for _ in range(2))
        f.write((token) + ' ')
        #print(token)
    #print(fileName)
    f.close()
