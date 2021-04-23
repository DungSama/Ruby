# There is an array with some numbers. All numbers are equal except for one. Try to find it!

# find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
# find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55

def find_uniq(arr)
  return nill if arr.size < 3
  res = Hash[arr.group_by {|x| x}.map {|k,v| [k,v.count]}]
  res.key(1)
end



def c2(arr)
  arr.sort!
  if arr[0] == arr[1]
    return arr[-1]
  else
    return arr[0]
  end
end

def c3(arr)
   a = arr.uniq.each { |x| return x if arr.count(x) == 1 }
end