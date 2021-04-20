#Viết chương trình cho nhập vào đường dẫn một thư mục, in ra danh sách tên file trong thư mục đó 
 
puts 'Moi ban nhap duong dan thu muc (vd:/home/dung/ruby/File)'
path = gets.chomp
puts Dir.children(path)
