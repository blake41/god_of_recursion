def fibonacci(n)
  iter(0,1,n)
end

def iter(a,b,count)
  return b if count == 2
  iter(b, a + b, count - 1)
end

# 0,1,1,2,3,5,8
puts fibonacci(7)