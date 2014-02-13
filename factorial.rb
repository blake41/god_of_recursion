# Define a recursive function that finds the factorial of a number.
def factorial(n)
  return 1 if n == 1
  n * factorial(n - 1)
end

puts factorial(4)