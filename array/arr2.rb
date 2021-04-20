# 2) Khởi tạo một mảng gồm n (n≤ 99) số tự nhiên sau đó tính giá trị trung bình các phần tử của mảng.

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
  tong = arr.inject(:+)
  gttb = (tong * 1.0 / arr.size).round(2)
  puts "Gia tri trung binh cac phan tu trong mang: #{gttb}"
end

def c2
  arr = tao_mang
  tong = arr.sum
  gttb = (tong * 1.0 / arr.size).round(2)
  puts "Gia tri trung binh cac phan tu trong mang: #{gttb}"
end

def c3
  arr = tao_mang
  tong = arr.reduce(:+)
  gttb = (tong * 1.0 / arr.size).round(2)
  puts "Gia tri trung binh cac phan tu trong mang: #{gttb}"
end

def c4
  arr = tao_mang
  tong = 0
  arr.each { |i| tong += i }
  gttb = (tong * 1.0 / arr.size).round(2)
  puts "Gia tri trung binh cac phan tu trong mang: #{gttb}"
end





