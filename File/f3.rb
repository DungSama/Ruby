#3 Tạo lớp Person với các thuộc tính: tên, năm sinh, giới tính, quê quán.
#Yêu cầu người dùng nhập vào thông tin 5 người, lưu thông tin vào file dưới dạng JSON. 
#Đọc thông tin đã lưu từ JSON, in ra danh sách người đã nhập

require 'rubygems'
require 'json'
require 'pp'

class Person
  attr_accessor :ten, :nam_sinh, :gioi_tinh, :que_quan

  def initialize
   puts "nhap so nguoi can nhap thong tin"
   n = gets.to_i
   arr =[]
    (1..n).each do |i|
    puts "nhap thong tin thu #{i}"
    puts "ten:"
    @ten = gets.chomp
    puts "namsinh:"
    @nam_sinh = gets.chomp
    puts "gioitinh:"
    @gioi_tinh = gets.chomp
    puts "quequan :"
    @que_quan = gets.chomp
    thong_tin ={stt: i, ten:@ten, namsinh:@nam_sinh, gioitinh:@gioi_tinh, quequan:@que_quan }
    arr << thong_tin
    end 
    
    File.open('fl3.json',"w") do |f|
      f.write(arr.to_json)
         end
    json = File.read('fl3.json')
    obj = JSON.parse(json)
    pp obj
  end
end

Person.new
