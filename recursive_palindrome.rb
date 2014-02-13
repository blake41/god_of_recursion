def palindrome(string)
  if string.length == 1 || string.length == 0  
    return true
  else
    if string[0] == string[-1]
      palindrome(string[1..-2])
    else
      return false
    end
  end
end

puts palindrome("blake")
puts palindrome("amanaplanacanalpanama")