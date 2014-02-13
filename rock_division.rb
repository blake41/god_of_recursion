require 'debugger'
array = []
30.times do
  array << Kernel.rand(500)
end

def largest_rock(array)
  if array.size < 3
    a = array[0]
    b = array[-1]
  else
    a = largest_rock(array.slice!(0,array.size/2))
    b = largest_rock(array)
  end
  # if a is not greater than b return b, a and b are the same if we only have 1 element
  return a > b ? a : b
end


a = largest_rock(array.clone)
puts a
puts a == array.sort[-1]
