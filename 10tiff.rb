test = Array.new(2000001,true)
sum = 0
for i in 2..2000000**0.5.round
  if test[i] == true
    sum += i
    j = i
    while j < 2000001 do
      test[j] = false
      j += i
    end
  end
end

p sum
