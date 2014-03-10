expsum = 0
sum = 0

for i in range(1,101):
    expsum += i**2
    sum += i


print expsum-sum**2