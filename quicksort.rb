require 'debugger'
# The steps are:
# Pick an element, called a pivot, from the list.
# Reorder the list so that all elements with values 
# less than the pivot come before the pivot, while all 
# elements with values greater than the pivot come after it 
# (equal values can go either way). After this partitioning, 
# the pivot is in its final position. This is called the 
# partition operation.
# Recursively apply the above steps to the sub-list of elements 
# with smaller values and separately the sub-list of elements with greater values.
# The base case of the recursion are lists of size zero or one, 
# which never need to be sorted.

# [1,7,4,3]
def quicksort(array)
  # debugger
  return [] if array.empty?
  smaller = []
  larger = []
  array.each do |item|
    if item < array.last
      smaller << item
    elsif item > array.last
      larger << item
    end
  end

   quicksort(smaller) + [array.last] + quicksort(larger)
end

puts quicksort([1,7,4,3,10,9,8,6]).inspect