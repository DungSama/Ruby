# https://www.codewars.com/kata/52449b062fb80683ec000024/train/ruby
def generateHashtag(str)
  n = str.gsub(/[[:space:]]/, '').size 
  if n == 0 || n >= 140 
    return false
  end

  string = "#"
  res = str.split.map { |i| i.capitalize()}.join
  string << res
end

 p generateHashtag("code" + " " * 140 + "wars")
 