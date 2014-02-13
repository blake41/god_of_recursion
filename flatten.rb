def flatten(array)
  container = []
  array.each do |element|
    if element.is_a?(Array)
      sub = flatten(element)
      container += sub
    else
      container += [element]
    end
  end
  return container
end
my_array = [[1, [8, 9]], [3, 4]]
flattened_array = flatten(my_array)
