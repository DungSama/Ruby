# 1) Nhập vào 2 cạnh của một hình chữ nhật. In ra màn hình diện tích và chu vi của nó.

begin
  print 'Nhap canh a > 0: '
  a = gets.to_f
end while a <= 0

begin
  print 'Nhap canh b > 0: '
  b = gets.to_f
end while b <= 0

  dt = a * b 
  cv = (a + b) * 2

puts "Dien tich hcn = #{dt}"
puts "Chu vi hcn = #{cv}"

