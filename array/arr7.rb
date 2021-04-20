# 7) Khởi tạo một mảng gồm n (n ≤ 99) số tự nhiên.
#    Nhập một số tự nhiên x từ bàn phím sau đó xóa tất cả các phần tử có giá trị x trong mảng.
#    Chú ý:thông báo ra màn hình số phần tử bị xóa

def tao_mang
  begin
    print "Nhap n (n > 0 && n <= 99): "
    n = gets.to_i
  end while n <= 0 || n > 99

  arr = Array.new(n) { rand(0..10) }
  puts "Mang vua nhap :\n #{arr}"
  arr
end

def c1
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f

  if arr.any? { |e| e == x  }
    dem = arr.count(x)
    arr.delete(x)
    puts "Mang sau khi xoa #{dem} phan tu #{x}: \n#{arr}"
  else
    puts 'Mang khong co phan tu bang x'
  end
end

def c2
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_i

  if arr.any? { |e| e == x  }
    dem = arr.count(x)
    arr -= [x]
    puts "Mang sau khi xoa #{dem} phan tu #{x}: \n#{arr}"
  else
    puts 'Mang khong co phan tu bang x'
  end
end


def c3
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f

  if arr.any? { |e| e == x  }
    dem = arr.count(x)
    gr = arr.group_by { |e| e == x }
    puts "Mang sau khi xoa #{dem} phan tu #{x}: \n#{gr[false]}"
  else
    puts 'Mang khong co phan tu bang x'
  end
end










