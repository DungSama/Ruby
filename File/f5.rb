#5 Viết chương trình cho nhập vào đường dẫn một thư mục, in ra danh sách tệp .rb trong thư mục đó 

puts 'Moi ban nhap duong dan thu muc (vd:/home/dung/ruby/File)'
path = gets.chomp
#doi duong dan thu muc
Dir.chdir(path)
puts "danh sách tệp .rb :"
puts Dir.glob("*.rb")
