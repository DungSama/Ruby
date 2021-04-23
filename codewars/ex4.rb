# Complete the solution so that it splits the string into pairs of two characters.
# If the string contains an odd number of characters 
# then it should replace the missing second character of the final pair with an underscore ('_').

# Examples:

# solution('abc') # should return ['ab', 'c_']
# solution('abcdef') # should return ['ab', 'cd', 'ef']

def solution(str)
  if str.size.even?
    res = str.scan(/../)
  else
    str << '_'
    res = str.scan(/../)
  end
  res
end

p solution('abcde')


def c2 str
  (str + '_').scan /../
end