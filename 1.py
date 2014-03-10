sum = 0


a = 0
b = 1
c = 1
while (c < 4000000):
    a = b
    b = c
    c = a+b
    if (c%2 == 0):
        sum += c
        
print sum
        
    
