# calculate x ^n in O(n) time recursively

# def exponent(x, n)
#   a = Array.new(n) {x}
#   sum = a.inject {|product, element| product * element}
# end

def exponent(x, n)
  return x if n == 1
  x * exponent(x, n-1)
end

puts exponent(2,3)