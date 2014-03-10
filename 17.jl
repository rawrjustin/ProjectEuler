ones = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tens = ["twenty", "thirty", "fourty", "fifty", "sixty", "seventy", "eighty", "ninty"]

firsttwenty = sum(map((x) -> length(x), ones))
nexteighty = 0
for prefix in tens
    nexteighty += length(prefix) * 10 + sum(map((x) -> length(x), ones[1:9]))
end
hundred = "hundred"

nexthundreds = 0
for prefix in ones[1:9]
    nexthundreds += (length(prefix) + length(hundred) + length("and")) * 99 + (firsttwenty + nexteighty) + length(prefix) + length(hundred)
end

thousand = length("onethousand")

total = firsttwenty + nexteighty + nexthundreds + thousand
