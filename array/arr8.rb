# 8) Khởi tạo một mảng gồm n (n ≤ 99) số tự nhiên.
#    Nhập hai số tự nhiên x và k từ bàn phím
#    sau đó chèn phần tử có giá trị x vào mảng tại vị trí k (tính từ 0)
#    Chú ý: thông báo ra màn hình nếu k không hợp lệ (vượt quá kích thước mảng).

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
  arr = tao_mang
  print 'Nhap gia tri can chen x: '
  x = gets.to_i
  print 'Nhap vi tri can chen k: '
  k = gets.to_i

  arr2 = arr.insert(k, x)

  puts "Mang sau khi chen:"
  p arr2
end

def c2
  arr = tao_mang
  print 'Nhap gia tri can chen x: '
  x = gets.to_i
  print 'Nhap vi tri can chen k: '
  k = gets.to_i
  
  puts "Mang sau khi chen:"
  p arr[0...k] + [x] + arr[k..arr.last]
end

c2
