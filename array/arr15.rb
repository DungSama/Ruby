# 15 Tính giá trị trung bình các phần tử có giá trị chẵn

def nhap_mang
  begin
    print 'Nhap n (n > 0 && n <= 99): '
    n = gets.to_i
  end while n <= 0 || n > 99

  arr = []
  (1..n).each do |i| 
    print "Nhap phan tu thu #{i}: "
    i = gets.to_i
    arr << i
    break arr if i == -1
  end

  puts "Mang vua nhap:\n #{arr}"
  arr
end

def c1
  arr = nhap_mang

  even = arr.select { |i| (i.even?) }
  gttb = even.inject(:+) / (even.size * 1.0)

  puts "Gia tri tb = #{gttb.round(2)}"
end

def c2
  arr = nhap_mang
  even = []

  arr.each { |i| even << i if i.even? }
  gttb = even.sum / (even.size * 1.0)

  puts "Gia tri tb = #{gttb.round(2)}"
end

c2

