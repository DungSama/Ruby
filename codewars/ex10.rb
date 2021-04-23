# https://www.codewars.com/kata/559a28007caad2ac4e000083/train/ruby
def perimeter(n)
   arr = n.times.each_with_object([0,1]) { |num, obj| obj << obj[-2] + obj[-1] }
   res = arr.sum * 4
end
p perimeter(5)