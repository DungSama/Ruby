# unique_in_order('AAAABBBCCDAABBB') == ['A', 'B', 'C', 'D', 'A', 'B']
# unique_in_order('ABBCcAD')         == ['A', 'B', 'C', 'c', 'A', 'D']
#unique_in_order([1,2,2,3,3])       == [1,2,3]

def unique(a)
  arr = a.split(//)
  split = []

  for i in 0...arr.size - 1
    if arr[i] != arr[i+1]
        split << i+1
    end
  end
  
  unique = []
  step = 0

  for i in 0..split.size - 1
    res = []
    for j in step...split[i]
      res << arr[j]
      step += 1
    end
    unique << res.uniq
  end
  
  reslust = unique.flatten << arr.last
  reslust
end

p unique('AAAABBBCCDAABBB')
