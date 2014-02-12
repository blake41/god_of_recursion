# Write a recursive function void replace(char *s, char from, char to); 
# that changes all occurrences of from in s to to. 
# For example, if s were "steve", and from == 'e' and to == 'a', 
# s would become "stava".

def replace(string, from, to)
  return "" if string.empty?
  char = string.slice!(0)
  char.gsub!(from, to)
  char + replace(string, from, to)
end

puts replace("steve", "e", "a")