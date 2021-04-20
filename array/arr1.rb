# 1) Nhập vào một mảng gồm n (n≤ 99) số tự nhiên từ bàn phím
#    quá trình nhập sẽ dừng khi người sử dụng nhập vào giá trị -1 
#    sau đó hiển thị mảng vừa nhập và giá trị nhỏ nhất của mảng ra màn hình.

def nhap_mang
  begin
    print 'Nhap n (n > 0 && n <= 99): '
    n = gets.to_i
  end while n <= 0 || n > 99

  arr = []
  (1..n).each do |i| 
    print "Nhap phan tu thu #{i}: "
    i = gets.to_f
    arr << i
    break arr if i == -1
  end

  puts "Mang vua nhap:\n #{arr}"
  arr
end

def gt_min
  arr = nhap_mang
  gtnn = arr.min
  puts "Gia tri nho nhat cua mang: #{gtnn}"
end

gt_min