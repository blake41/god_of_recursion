# Write a recursive function int count_digit(int n, int digit); 
# to count the number of digits in a number n (n > 0) that are 
# equal to a specified digit. For example, if the digit we're 
# searching for were 2 and the number we're searching were 220, 
# the answer would be 2.

def is_digit(num, digit)
  num.to_i == digit ? 1 : 0
end

def count_digits(number, digit)
  number = number.to_s
  return 0 if number.empty?
  num = number.slice!(0) 
  is_digit(num, digit) + count_digits(number, digit)
end

puts count_digits(220,2)