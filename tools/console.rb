require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

puts "hello"

# 2 instances of CarOwner class:

a = CarOwner.new("a")
b = CarOwner.new("b")

# 2 instances of Mechanic class: 

c = Mechanic.new("c", "Sedan")
d = Mechanic.new("d", "Couple")

# 3 instances of Car class: 

e = Car.new("Ford", "Focus", "Sedan", a, c)
f = Car.new("Ford", "Focus", "Sedan", b, c)
e = Car.new("Ford", "Focus", "Coupe", a, d)

binding.pry