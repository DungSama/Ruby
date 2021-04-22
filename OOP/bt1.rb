#1 How do we create an object in Ruby? Give an example of the creation of an object.
#2 What is a module? What is its purpose? 
#How do we use them with our classes? Create a module for the class you created in exercise 1 and include it properly.
print <<EOF
 Một mô-đun cho phép  nhóm mã có thể sử dụng lại vào một nơi.
 sử dụng mô-đun trong các lớp của mình bằng cách sử dụng lệnh include gọi phương thức, 
 theo sau là tên mô-đun. Mô-đun cũng được sử dụng như một không gian tên.
EOF

module MyModule
end
class MyName
	include MyModule
end
my_obj = MyName.new

