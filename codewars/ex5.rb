# Complete the solution so that the function will break up camel casing, using a space between words.

# Example
# solution("camelCasing")  ==  "camel Casing"

require 'pry'

def c2(string)
  result = ""
  string.split(//).each do |x|
    if x == x.upcase
      result << " " + x
      binding.pry
    else
      result << x
    end
  end
  result
end

p c2('camelCasing')

def c3(string)
  string.gsub /([A-Z])/, ' \1'
end
