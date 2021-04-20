# 10) Khởi tạo một mảng gồm n (n≤ 99) số thực sau đó liệt kê các phần tử có giá trị nhỏ hơn hoặc bằng x.

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
  print 'Nhap x: '
  x = gets.to_i

  arr2 = arr.select { |i| i <= x }
  puts 'Cac phan tu <= x:'
  p arr2
end

def c2
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_i

  gr = arr.group_by { |i| i <=> x}
  arr2 = gr[-1] || []
  if arr2.empty?
    puts 'Mang ko co phan tu <= x'
  else
    puts 'Cac phan tu <= x'
    p arr2
  end
end

def c3
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_i

  arr2 = arr.reject { |i| i > x }
  puts 'Cac phan tu <= x:'
  p arr2
end

def c4
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_i

  arr2 = []
  arr.each {|i| arr2 << i if i <= x}
  puts 'Cac phan tu <= x:'
  p arr2
end

c4
