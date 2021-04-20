# 14) Kiểm tra tính đối xứng của mảng

def nhap_mang
  begin
    print 'Nhap n (n > 0 && n <= 99): '
    n = gets.to_i
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
  n = arr.size
  dx = true
  for i in 0...n/2
    if arr[i] != arr[-i-1]
      dx = false
      break 
    end
  end
  if dx
    puts 'La mang doi xung'
  else
    puts 'Ko phai mang doi xung'
  end
end


def c2
  arr = nhap_mang
  n = arr.size
  a, b = arr.each_slice( (n/2.0).round ).to_a

  if n.even?
    if a == b.reverse
      puts 'Mang dx'
    else
      puts 'Mang kdx'
    end
  else
    a.pop
    if a == b.reverse
      puts 'Mang dx'
    else
      puts 'Mang kdx'
    end
  end
end

c2
