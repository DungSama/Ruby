# 16) Khởi tạo mảng gồm n (n≤ 9) số tự nhiên sau đó tách mảng này thành 2 mảng A và B,
#    sao cho mảng A chứa các số lẻ và mảng B chứa các số chẵn.

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
  even = []
  odd = []

  arr.each do |i|
    if i.even?
      even << i
    else
      odd << i
    end
  end

  puts 'Mang chan:'
  p even
  puts 'Mang le:'
  p odd
end

def c2
  arr = tao_mang
  odd = arr.reject { |i| i.even? }
  even = arr - odd

  puts 'Mang chan:'
  p even
  puts 'Mang le:'
  p odd
end

def c3
  arr = tao_mang
  gr = arr.group_by { |i| i.even? }
  even = gr[true]
  odd = gr[false]

  puts 'Mang chan:'
  p even
  puts 'Mang le:'
  p odd
end



