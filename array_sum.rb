# calculate sum of [1,3,5,7,9]

# def summer(array)
#   sum(array, 0)
# end

# def sum(unsummed, sum)
#   if unsummed.empty?
#     return sum
#   else
#     sum = sum + unsummed.shift
#     sum(unsummed, sum)
#   end
# end

# puts summer([1,2,3])

def sum(array)
  if array.length == 1
    return array.first
  else
    item = array.shift
    return item + sum(array)
  end
end

puts sum([1,2,3])