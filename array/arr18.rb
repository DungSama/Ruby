# 18) Khởi tạo một mảng gồm n phần tử (n ≤ 20),
#     mỗi phần tử là một số tự nhiên thuộc đoạn [0..10]18 Khởi tạo một mảng gồm n phần tử (n ≤ 20)                                                 
#     sau đó tìm giá trị xuất hiện nhiều nhất trong mảng.

def tao_mang
  begin
    print "Nhap n (n > 0 && n <= 99): "
    n = gets.to_i
  end while n <= 0 || n > 99

  arr = Array.new(n) { rand(0..5) }
  puts "Mang vua nhap :\n #{arr}"
  arr
end

def c1
  a = tao_mang
  n = a.size
  b = Array.new(n, 0)

  for i in 0...n
    for j in 0...n
      if a[i] == a[j] 
        b[i] += 1
      end
    end
  end
  
  max = b.max
  for i in 0...n
      if max == b[i] 
         gtxhnn = a[i]
      end
  end
    puts "Phan tu #{gtxhnn} xuat hien nhieu nhat voi so lan xuat hien #{max}"
end

c1

def c2
  arr = tao_mang
  gr = arr.group_by { |i| i }.values.max_by(&:size)
  gtxhnn = gr.first

  puts "Gia tri xuat hien nhieu nhat trong mang: #{gtxhnn}"
end

def c3
  arr = taoMang
  gtxhnn = arr.max_by { |i| arr.count(i) }
  puts "Gia tri xuat hien nhat trong mang :#{gtxhnn}"
end





