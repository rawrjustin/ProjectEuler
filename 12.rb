n * (n+1)/2  = sum

def sum(number)
  number * (number + 1)/2
end

def numFactors(number)
  numFactors = 0
  while number
  for factor in 2..(number/2)
    if number % factor == 0
      
    
  