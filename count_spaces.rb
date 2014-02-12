# Write a function count_spaces(char *s) that counts the number 
# of whitespace characters that appear in a string. Characters 
# are whitespace as defined by the isspace() function in the 
# ctype library. Write this function recursively.

def is_space(char)
  char == " " ? 1 : 0
end

def count_spaces(uncounted, counted = [], count)
  return count if uncounted.empty?
  char = uncounted.shift
  counted << char 
  count += is_space(char)
  count_spaces(uncounted, counted, count)
end

# puts count_spaces(["a", " ", "c", " "], [], 0)

def count_space(array)
  return 0 if array.empty?
  char = array.shift
  is_space(char) + count_space(array)
end

puts count_space([" ", "a", " "])