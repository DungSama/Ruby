# 17) Khởi tạo một mảng gồm n (n≤ 99) số thực và nhập một số tự nhiên k (k ≤ n)
#     sau đó quay vòng mảng sang phải k vị trí.

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
  print 'Nhap vi tri k: '
  k = gets.to_i

  if k >= arr.size || k <= -arr.size
    puts 'k khong hop le'
  else
    a = arr[0...k]
    b = (arr - a)
    mang_xoay = [b, a].flatten
    puts 'Mang sau khi xoay phai k vi tri'
    p mang_xoay
  end
end

c1

def c2
  arr = tao_mang
  print 'Nhap vi tri k: '
  k = gets.to_i

  if k >= arr.size || k <= -arr.size
    puts 'k khong hop le'
  else
    arr2 = arr.rotate(k)
    puts 'Mang sau khi xoay phai k vi tri'
    p arr2
  end
end
