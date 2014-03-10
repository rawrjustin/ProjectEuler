def isprime(n):
    for x in range(2, int(n**0.5)+1):
        if n % x == 0:
            return False
    return True
    
i = 1
lastPrime = 2
while i < 10001:
    for num in range(lastPrime+1,1000000):
        if isprime(num):
            lastPrime = num
            i+=1
            print lastPrime
            break;
    
    
print lastPrime