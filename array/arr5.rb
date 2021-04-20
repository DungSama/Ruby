# 5) Nhập vào một mảng A gồm n (n≤ 99) số tự nhiên từ bàn phím
#    quá trình nhập sẽ dừng khi người sử dụng nhập vào giá trị -1.
#    Sau đó sắp xếp mảng theo thứ tự không giảm.


def nhap_mang
  begin
    print 'Nhap n (n > 0 && n <= 99): '
    n = gets.to_f
  end while n <= 0 || n > 99

  arr = []
  (1..n).each do |i| 
    print "Nhap phan tu thu #{i}: "
    i = gets.to_i
    arr << i
    break arr if i == -1
  end

  puts "Mang vua nhap:\n #{arr}"
  arr
end

def c1
  arr = nhap_mang
  arr2 = arr.sort
  puts "Mang sau khi sap xep:"
  p arr2
end

def c2
  arr = nhap_mang
  n = arr.size
  return arr if n <= 1

  swapped = true
  while swapped
    swapped = false
    (n-1).times do |i|
      if arr[i] > arr[i+1]
         arr[i], arr[i+1] = arr[i+1], arr[i]
         swapped = true
      end
    end
  end

  puts "Mang sau khi sap xep: \n#{arr}"
end

def c3
  arr = nhap_mang
  n = arr.size
  return arr if n <= 1

  for i in 1...n do
    x = arr[i] # Phan tu can chen
    pos = i - 1 # Vi tri truoc pt can chen
    while pos > 0 && arr[pos] > x
      arr[pos+1] = arr[pos]
      pos -= 1
    end
    arr[pos+1] = x #Chen vao dung vi tri
  end

    puts "Mang sau khi sap xep:\n #{arr}"
end

def c4
  arr = nhap_mang
  n = arr.size - 1
  return arr if n <= 1

  n.times do |i|
    min_index = i
    for j in (i + 1)..n
      min_index = j if array[j] < arr[min_index]
    end
    arr[i], arr[min_index] = arr[min_index], arr[i] if min_index != i
  end

  puts "Mang sau khi sap xep:\n #{arr}"
end

def quick_sort(arr)
  n = arr.size
  return arr if n <= 1

  gr = arr.group_by { |e| e <=> arr[n / 2] }

  less_than = gr[-1] || [] 
  equal = gr[0] || []
  greater_than = gr[1] || []

  quick_sort(less_than) + equal + quick_sort(greater_than)
end
p quick_sort(nhap_mang)

