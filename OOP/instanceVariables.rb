class CoffeeMachine
	def initalize
		#instance Variable
		@water = 100
	end

	def make_coffe
		@water -=10
	end
end

#How to Access Instance Variables
class CoffeeMachine
	def initialize
		@water = 50
	end

	def print_water_level
		puts "waterlever: #{@water}"
	end
end

machine = CoffeeMachine.new
machine.print_water_level 
# Water Level: 50

#Using Attribute Accessors
machine = CoffeeMachine.new
machine.water
# NoMethodError: undefined method `water' for #<CoffeeMachine:0x2d0a530>
machine.@water
# SyntaxError: unexpected tIVAR, expecting '('