import sys

largest = 0
def reverse(num):
    reversed_number = 0
    digitlist = []
    number = num
    while number % 10 != number:
        digitlist.append(number % 10)
        number = number/10
    digitlist.append(number)
    
    i = 0
    digitlist.reverse()
    for integer in digitlist:
        reversed_number += (10**i) * integer
        i+=1
    return reversed_number


def palindrome(num):
    return num == reverse(num)


for i in range(999,100,-1):
    for j in range(999,100,-1):
        product = i*j
        if palindrome(product):
            if (product > largest):
                largest = product


print largest