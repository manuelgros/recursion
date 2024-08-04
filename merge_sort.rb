# Merge Sort algorithm
# Pseudo Code:
#
# If only one number
#   Quit
# Else
#   Sort left half of numbers
#   Sort right half of numbers
#   Merge sorted halves

require 'pry-byebug'

def merge_sort(arr)
  return arr if arr.length == 1

  merge(merge_sort(arr.slice!(0, arr.length / 2)), merge_sort(arr))
end

def merge(left_side, right_side)
  sorted_array = []
  until left_side.empty? && right_side.empty?
    next sorted_array << left_side.shift if right_side.empty?
    next sorted_array << right_side.shift if left_side.empty?

    sorted_array.push(right_side.first > left_side.first ? left_side.shift : right_side.shift)
  end
  sorted_array
end

array_one = [3, 2, 1, 13, 8, 5, 0, 1]
# array_two = [105, 79, 100, 110]

puts merge_sort(array_one)
# puts merge_sort(array_two)
