collatz(n) = (n % 2 == 0) ? (n / 2) : (3 * n + 1)
max = 0
numMax = 0
for i = 1:1000000
    num = i
    count = 0
    while num != 1
        num = collatz(num)
        count += 1
    end
    if count > max
        max = count
        numMax = i
    end
end

max
