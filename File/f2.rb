# 2) Viết chương trình thực hiện nhập vào một số tự nhiên n
#    sau đó tạo ra ngẫu nhiên n số tự nhiên rồi lưu vào một file. Đọc tất cả các số từ file đã lưu, tính tổng rồi in ra màn hình

def create_array
  begin
    print "Nhap n: "
    n = gets.to_i
    puts "Vui long nhap so > 0 va <= 99" if n <= 0 || n > 99
  end while n <= 0 || n > 99                                                
  
  arr = Array.new(n) { rand(-100..100) }
  arr
end

arr = create_array

File.open('./fl2_numbers.txt', 'w') do |f|
  arr.each do |n|
    f.puts n
  end
end

content = File.read('./fl2_numbers.txt')
content_arr = content.split("\n")
numbers = content_arr.map{|str| str.to_i}
sum = numbers.sum

puts "Array: #{content_arr.join(', ')}"
puts "Sum: #{sum}"
