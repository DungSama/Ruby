# You will be given a number and you will need to return it as a string in Expanded Form. For example:

# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'

def expanded_form(num)
  arr = []
  str = ""
  digits = num.digits
  n = digits.size

  n.times do |i|
    arr << digits[i] * 10 ** i
  end
  
  res = arr.reverse - [0]
  res.join(' + ')
end

p expanded_form(70304)

def c2(num)
  a = num.digits.map.with_index { |d, i| d * 10 ** i }
  b = a.reject(&:zero?).reverse.join(' + ')
  
end

