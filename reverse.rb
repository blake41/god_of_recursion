# Write the reverse() function recursively. 
# This function takes a string and the length of the string as 
# arguments and returns the same string with its characters in 
# the reverse order.

def reverse(string)
  return "" if string.empty?
  char = string.slice!(-1)
  char + reverse(string)
end

puts reverse("abc")