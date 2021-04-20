# 4) Khởi tạo một mảng gồm n (n ≤ 99) số thực,
#    nhập một số thực x từ bàn phím sau đó tìm xem trong mảng có phần tử nào bằng x hay không.

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
  x = gets.to_f
  check = arr.find {|i| i == x }.nil?

  if check 
    puts "Mang ko co phan tu = #{x}"
  else
    puts "Mang co phan tu = #{x}"
  end
end

def c2
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f
  check = arr.include?(x)

  if check 
    puts "Mang co phan tu = #{x}"
  else
    puts "Mang ko co phan tu = #{x}"
  end
end

def c3
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f
  check = arr.any?(x)

  if check 
    puts "Mang co phan tu = #{x}"
  else
    puts "Mang ko co phan tu = #{x}"
  end
end

def c4
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f
  check = arr.grep(x)

  if check 
    puts "Mang co phan tu = #{x}"
  else
    puts "Mang ko phan tu = #{x}"
  end
end

def c5
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f
  check = arr.delete(x).nil?

  if check 
    puts "Mang ko co phan tu = #{x}"
  else
    puts "Mang co phan tu = #{x}"
  end
end

def c8
    
  def binary_search
    arr = tao_mang.sort
    print 'Nhap x: '
    x = gets.to_f
    left = 0
    right = arr.size - 1
    
    begin
      mid = (left + right) / 2

      if x == arr[mid]
        return true
      elsif x > arr[mid]
        left = mid + 1
      else
        right = mid -1
      end
    end while left <= right

        return false
  end

  kq = binary_search
    if kq 
       puts "Tim thay phan tu x trong mang"
    else
      puts "Ko tim thay pt x trong mang"
    end
end

def c9

  def binary_search2(arr, left, right, x)
    if right >= left
      mid = (left + right) / 2
      if arr[mid] == x
        return true
      elsif arr[mid] > x
        return binary_search2(arr,left, mid - 1, x)
      else
        return binary_search2(arr,mid + 1, right, x)
      end
    else
      return false
    end
end

  arr = tao_mang.sort
    print 'Nhap x: '
    x = gets.to_f
  kq = binary_search2(arr, 0, arr.size - 1, x)
    if kq 
       puts "Tim thay phan tu x trong mang"
    else
      puts "Ko tim thay pt x trong mang"
    end
end

def c10
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f
  count = 0
  arr.each { |i| break count = 1 if i == x }

   if count == 1
    puts "Mang co phan tu = #{x}"
  else
    puts "Mang ko phan tu = #{x}"
  end
end

c10
def c6
  arr = tao_mang
  print 'Nhap x: '
  x = gets.to_f
  check = arr.select { |i| i == x }.size > 0
  
  if check 
    puts "Mang co phan tu = #{x}"
  else
    puts "Mang ko phan tu = #{x}"
  end
end
# Cach canh con lai tuong tu nhu bai arr3,rb
