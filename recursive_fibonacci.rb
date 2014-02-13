def fibonacci(n)
  if n == 1
    return 1
  elsif n == 0
    return 0
  else
    fibonacci(n-1) + fibonacci(n-2)
  end
end

puts fibonacci(6)