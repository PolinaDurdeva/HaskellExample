def CheckDigitCurried(i):
    return (lambda elem: str(i) in str(elem))
b = [17,13,17,14]
c = [17,77,27,276]
print CheckDigitCurried(7) (5)
print CheckDigitCurried(7) (17)
print all(CheckDigitCurried(7) (x) for x in b)
print all(CheckDigitCurried(7) (x) for x in c)