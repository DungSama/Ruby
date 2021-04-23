# https://www.codewars.com/kata/5679aa472b8f57fb8c000047/train/ruby
# [1,2,3,4,3,2,1]),3)
require 'pry'
def find_even_index(arr)
  n = arr.size
  for i in 0...arr.size
    left = arr[0...i].sum
    right = arr[i+1..n].sum
    if left == right
      return i 
    end
  end
  
  return -1
end

p find_even_index([1,2,3,4,3,2,1])


