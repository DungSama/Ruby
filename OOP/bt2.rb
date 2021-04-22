#1 .Tạo một lớp gọi là MyCar. Khi bạn khởi tạo một phiên bản hoặc đối tượng mới của lớp, 
# hãy cho phép người dùng xác định một số biến phiên bản cho chúng ta biết năm, màu sắc và kiểu xe. 
# Tạo một biến thể hiện được đặt thành 0 trong quá trình khởi tạo đối tượng để theo dõi tốc độ hiện tại của ô tô.
# Tạo các phương thức thể hiện cho phép xe tăng tốc, phanh và tắt máy.
#2 .Thêm một phương thức truy cập vào lớp MyCar của bạn để thay đổi và xem màu xe của bạn. 
# Sau đó, thêm một phương thức truy cập cho phép bạn xem, nhưng không sửa đổi, năm xe của bạn.
#3 Tạo một phương thức được gọi spray_paint có thể được gọi trên một đối tượng và sẽ sửa đổi màu sắc của chiếc xe.


class MyCar
		# 2
		attr_accessor :color
  		attr_reader :year
	def initialize(year, model, color)
		@year = year
	    @model = model
	    @color = color 
	    #bien instance theo doi toc do cua xe
	    @current_speed = 0
	end

	def tang_toc(number)
		@current_speed +=number
		puts "tang toc #{number} mph"
	end

	def phanh(number)
		@current_speed-=number
		puts "giam toc #{number} mph"
	end

	def toc_do_hien_tai
		puts "toc do hien tai #{@current_speed} mph"
	end

	def tat_may
		@current_speed = 0
		puts "tat may"
	end

	def spray_paint(color)
    self.color = color
    puts "mau moi : #{color} "
  end
end

vfast = MyCar.new(2021,"thethao","den")
vfast.tang_toc(20)
vfast.toc_do_hien_tai
vfast.phanh(10)
vfast.toc_do_hien_tai
vfast.tat_may
vfast.toc_do_hien_tai
#2
vfast.color = 'trang'
puts vfast.color
puts vfast.year
#3
vfast.spray_paint('do')


