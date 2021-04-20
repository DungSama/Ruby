# 4) Tìm giá trị lớn nhất và nhỏ nhất trong 4 số a, b, c, d (a, b, c, được nhập từ bàn phím).

def c0
  print 'Nhap a: '
  a = gets.to_f
  print 'Nhap b: '
  b = gets.to_f
  print 'Nhap c: '
  c = gets.to_f
  print 'Nhap d: '
  d = gets.to_f

  arr = [a, b, c, d]
  maxmin = arr.minmax
  puts "Gia tri lon nhat: #{maxmin[1]}"
  puts "Gia tri nho nhat: #{maxmin[0]}"
end

def c1
  print 'Nhap a: '
  a = gets.to_f
  print 'Nhap b: '
  b = gets.to_f
  print 'Nhap c: '
  c = gets.to_f
  print 'Nhap d: '
  d = gets.to_f

  arr = [a, b, c, d]
  max = arr.max
  min = arr.min
  puts "Gia tri lon nhat: #{max}"
  puts "Gia tri nho nhat: #{min}"
end

def c2
  print 'Nhap a: '
  a = gets.to_f
  print 'Nhap b: '
  b = gets.to_f
  print 'Nhap c: '
  c = gets.to_f
  print 'Nhap d: '
  d = gets.to_f

  arr = [a, b, c, d].sort
  puts "Gia tri lon nhat: #{arr[-1]}"
  puts "Gia tri nho nhat: #{arr[0]}"
end

def c3
  print 'Nhap a: '
  a = gets.to_f
  print 'Nhap b: '
  b = gets.to_f
  print 'Nhap c: '
  c = gets.to_f
  print 'Nhap d: '
  d = gets.to_f

  arr = [a, b, c, d]
  max = arr[0]
  min = arr[0]
  arr.each { |i| max = i if i > max }
  arr.each { |i| min = i if i < min }
  puts "Gia tri lon nhat: #{max}"
  puts "Gia tri nho nhat: #{min}"
end




