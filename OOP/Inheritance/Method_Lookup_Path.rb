module Walkable
  def walk
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing."
  end
end

class Animal
  include Walkable

  def speak
    "I'm an animal, and I speak!"
  end

 class GoodDog < Animal
  include Swimmable
  include Climbable
 end
end

puts "---GoodDog method lookup---"
puts GoodDog.ancestors
puts "---Animal method lookup---"
puts Animal.ancestors
fido = Animal.new
fido.speak 					# => I'm an animal, and I speak!
fido.walk                   # => I'm walking.
fido.swim
  # => NoMethodError: undefined method `swim' for #<Animal:0x007f92832625b0>
puts "---GoodDog method lookup---"
puts GoodDog.ancestors