import math
import sys
number = 600851475143

def factor(num):
    newFactor = 0;
    for i in range (2,int(num**0.5)+1):
        if num % i == 0:
            newFactor = num/i
            print newFactor     
            factor(newFactor)    
            break; 
        elif i == int(num**0.5):
            return i
            
            
    

factor(600851475143)
