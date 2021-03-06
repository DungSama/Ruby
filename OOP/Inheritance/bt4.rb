# 1) Tạo một lớp cha được gọi Vehicle để MyCarlớp của bạn kế thừa và di chuyển hành vi không dành riêng cho MyCarlớp đó sang lớp cha.
#    Tạo một hằng số trong MyCar lớp của bạn để lưu trữ thông tin về phương tiện làm cho nó khác với các loại Phương tiện khác.
#    Sau đó, tạo một lớp mới có tên MyTruck kế thừa từ lớp cha của bạn, 
#    lớp này cũng có một hằng số được định nghĩa để tách nó khỏi lớp MyCar theo một cách nào đó.

# 2) Thêm một biến lớp vào lớp cha của bạn để theo dõi số lượng các đối tượng được tạo kế thừa từ lớp cha.
#    Tạo một phương thức để in ra giá trị của biến lớp này.

# 3) Tạo một mô-đun mà bạn có thể trộn vào MỘT trong các lớp con của bạn mô tả một hành vi duy nhất cho lớp con đó.

# 4) In ra màn hình bản tra cứu phương thức của bạn cho các lớp mà bạn đã tạo.

# 5) Di chuyển tất cả các phương thức từ lớp MyCar cũng liên quan đến lớp MyTruck vào lớp Xe.
#    Đảm bảo rằng tất cả các lệnh gọi phương thức trước đó của bạn đang hoạt động khi bạn kết thúc.
module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color
  attr_reader :model, :year
  @@number_of_vehicles = 0

  def self.number_of_vehicles
    puts "This program has created #{@@number_of_vehicles} vehicles"
  end

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate #{number} mph."
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate #{number} mph."
  end

  def current_speed
    puts "You are now going #{@current_speed} mph."
  end

  def shut_down
    @current_speed = 0
    puts "Let's park this bad boy!"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "My truck  is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "My car is a #{self.color}, #{self.year}, #{self.model}!"
  end
end

lumina = MyCar.new(1997, 'chevy lumina', 'white')
lumina.speed_up(20)
lumina.current_speed
lumina.speed_up(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.brake(20)
lumina.current_speed
lumina.shut_down
MyCar.gas_mileage(13, 351)
lumina.spray_paint("red")
puts lumina
puts MyCar.ancestors
puts MyTruck.ancestors
puts Vehicle.ancestors




