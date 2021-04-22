#1 Add a class method to your MyCar class that calculates the gas mileage of any car
#2 Override the to_s method to create a user friendly print out of your object.
class MyCar
		attr_accessor :color
  		attr_reader :year
	def initialize(year, model, color)
		  @year = year
	    @model = model
	    @color = color 
	end
	   
	def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
    end

    def to_s
    "My car is a #{color}, #{year}, #{@model}!"
    end
end

MyCar.gas_mileage(13, 351)
my_car = MyCar.new("2010", "Ford Focus", "silver")
puts my_car 




