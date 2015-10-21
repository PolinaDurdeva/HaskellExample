from numpy import matrix
matrix = [[1,2,3,4], [1,5,7,9],[3,12,34,45]]
b = all(map(lambda x: any(number %2 ==0 for number in x), matrix))
print  b