# 11) Khởi tạo một mảng gồm n (n≤ 99) số tự nhiên sau đó đảo ngược các phần tử trong mảng.

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
  arr = tao_mang.reverse 
  puts 'Mang sau khi dao ngc:'
  p arr
end

def c2
  arr = tao_mang
  arr2 = []
  arr.reverse_each do |i|
    arr2 << i
  end
  p arr2
end

def c3
  arr = tao_mang
  n = arr.size
  for i in 0...n/2
    arr[i], arr[-i - 1] = arr[-i - 1], arr[i]
  end
  p arr
end

