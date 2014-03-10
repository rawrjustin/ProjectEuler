function parallelNumFactors(n::Int64)
    nfactors = @parallel (+) for i = 1:ifloor(sqrt(n))
        int(n % i == 0)
    end
    if (sqrt(n)*sqrt(n) == n)
        return nfactors * 2 - 1
    else
        return nfactors * 2
    end
end

triangle(n::Int64) = convert(Int64,sum(linspace(0,n,n+1)))

max = 0
i = 0

while max < 501
    i+=1
    max = parallelNumFactors(triangle(i))
end

triangle(i)
