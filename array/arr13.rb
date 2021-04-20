# 13) Tìm giá trị phần tử lớn thứ k của một mảng

def tao_mang
  begin
    print "Nhap n (n > 0 && n <= 99): "
    n = gets.to_i
  end while n <= 0 || n > 99

  arr = Array.new(n) { rand(-100..100) }
  puts "Mang vua nhap :\n #{arr}"
  arr
end

def c1
  arr = tao_mang.sort
  print 'Nhap k: '
  k = gets.to_i
  if k >= arr.size || k <= 0
    puts 'k khong hop le'
  else
    puts "Gia tri phan tu lon thu #{k} cua mang: #{arr[-k]}"
  end
end
