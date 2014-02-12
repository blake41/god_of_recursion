def factorial(n)
  factiter(n,0,1)
end

def factiter(n, counter, sum)
  return sum if n == counter
  sum = sum * (counter + 1)
  factiter(n, counter + 1, sum)
end

puts factorial(6)