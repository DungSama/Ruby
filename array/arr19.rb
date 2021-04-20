# 19) Nhập một số tự nhiên h (h ≤ 20) từ bàn phím
#     sau đó hiển thị ra màn hình tam giác Pascal với chiều cao h.

#  0     n           k   k    k-1
# C  = C   = 1 ;   C  = C  + C
#  n     n           n   n-1  n-1
def c(k, n)
  return 1 if k == 0 || k == n
  return n if k == 1
  return c(k, n-1) + c(k-1,n-1)
end

def pascal
  print 'Nhap h (h <= 20): '
  h = gets.to_i
  for i in 0...h do
    puts "\n"
    for j in 0..i do
      print "#{c(j,i)} "
    end
  end
end

pascal

