matrix = [1,2,34,56,1,34, 345]
def lastDigitsForTwoDigitNumbers (m):
    k = filter (lambda x: (x / 10) >=1 and (x / 10) <= 9, m )
    return map (lambda x: x % 10, k)
    
print lastDigitsForTwoDigitNumbers(matrix)