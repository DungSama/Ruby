# 2) Nhập vào bán kính của hình tròn. In ra màn hình diện tích và chu vi của nó

PI = 3.14

begin
  print 'Nhap ban kinh: '
  r = gets.to_f
end while r <= 0

  dt = (r * r * PI).round(2)
  cv = (2 * r * PI).round(2)

puts "Dien tich ht = #{dt}"
puts "Chu vi ht = #{cv}"
