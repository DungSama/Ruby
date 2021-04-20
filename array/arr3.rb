# 3) Khởi tạo một mảng gồm n (n ≤ 99) số thực,
#    nhập một số thực x từ bàn phím sau đó đếm số phần tử trong mảng có giá trị x.

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
  count = 0
  arr.each { |i| count += 1 if i == x }
  puts "Co #{count} phan tu = #{x}"
end

def c2
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f
  count = arr.count(x)
  puts "Co #{count} phan tu = #{x}"
end

def c3
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f
  arr2 = arr.select { |i| i == x }
  count = arr2.size
  puts "Co #{count} phan tu = #{x}"
end

def c4
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f
  arr2 = arr.reject { |i| i != x }
  count = arr2.size
  puts "Co #{count} phan tu = #{x}"
end

def c5
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f
  arr2 = arr.find_all { |i| i == x }
  count = arr2.size
  puts "Co #{count} phan tu = #{x}"
end

def c6
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f
  arr2 = arr.group_by {|i| i == x}
  count = arr2[true].size
  puts "Co #{count} phan tu = #{x}"
end

c6











