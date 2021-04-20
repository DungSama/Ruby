# 9) Khởi tạo một mảng gồm n (n≤ 99) số tự nhiên có thứ tự không giảm.
#    Tiếp đến nhập một số tự nhiên x từ bàn phím và tìm cách chèn phần tử có giá trị x vào mảng
#    sao cho mảng vẫn đảm bảo thứ tự không giảm.

def tao_mang
  begin
    print "Nhap n (n > 0 && n <= 99): "
    n = gets.to_i
  end while n <= 0 || n > 99

  arr = Array.new(n) { rand(-100..100) }
  puts "Mang vua nhap :\n #{arr}"
  arr.sort
end

def c1
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_i

  if x >= arr.max
    arr2 = arr.insert(-1, x)
  elsif x <= arr.min
    arr2 = arr.insert(0, x)
  else
    idx = arr.index { |i| i > x }
    arr2 = arr.insert(idx, x)
  end
    puts 'Mang sau khi chen:'
    p arr2
end
