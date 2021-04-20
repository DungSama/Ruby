# 6) Khởi tạo một mảng gồm n (n ≤ 99) số tự nhiên.
#    Nhập một số tự nhiên k từ bàn phím sau đó xóa phần tử thứ k trong mảng (k được tính từ 0).
#    Chú ý: thông báo ra mình nếu k không hợp lệ (vượt quá số phần tử của mảng)

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
  print 'Nhap k: '
  k = gets.to_i

    if k >= arr.size
      puts 'K khong hop le'
    else
      arr.delete_at(k)
      puts "Mang sau khi phan tu tai vi tri #{k}: \n#{arr}"
    end
end

def c2
  arr = tao_mang
  print 'Nhap k: '
  k = gets.to_i

  if k >= arr.size || k <= - arr.size
     puts 'K khong hop le'
  else
    (arr.size).times do |i|
      if i == k
        arr[i] = nil
        break
      end
    end 
    arr2 = arr.compact!
    puts "Mang sau khi xoa phan tu tai vi tri #{k}:\n#{arr2}"
  end
end

c2 
def c3
  arr = tao_mang
  print 'Nhap k: '
  k = gets.to_i

  if k >= arr.size || k <= - arr.size
     puts 'K khong hop le'
  else
    gr = arr.group_by { |i| i == arr[k]}
    puts "Mang sau khi xoa phan tu tai vi tri #{k}:\n#{gr[false]}"
  end
end





