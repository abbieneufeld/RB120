module Towable
  def can_tow?(pounds)
    pounds > 2000 ? false : true
  end
end


class Vehicle
  attr_accessor :color
  attr_reader :year
  attr_reader :model
  
  @@number_of_vehicles=0
  
  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end
  
  def self.number_of_vehicles
    @@number_of_vehicles
  end
  
  def age
    puts "Your #{model} is #{years_old} years old."
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
  
  def spray_paint(color)
    self.color=color
    puts "Your new #{color} paint job looks great!"
  end
  
  def self.gas_mileage(gallons, miles)
    puts "#{miles/gallons} miles per gallon of gas"
  end
  
  private
  
  def years_old
    Time.now.year-self.year.to_i
  end
end

class MyCar < Vehicle
 NUMBER_OF_DOORS = 4
  def to_s
    "My car is a #{color}, #{year}, #{model}!"
  end
  
end

class MyTruck < Vehicle
  include Towable
  NUMBER_OF_DOORS=2
  
  def to_s
    "My truck is a #{color}, #{year}, #{model}!"
  end
  
end

my_car=MyCar.new("2010", "Ford Focus","Silver")
my_truck=MyTruck.new("2010", "Ford Tundra", "white")

puts my_car
puts my_truck

puts Vehicle.number_of_vehicles
puts my_truck.can_tow?(4000)

puts MyCar.ancestors
puts "-------------"
puts MyTruck.ancestors
puts "-------------"
puts Vehicle.ancestors

my_car.speed_up(30)
my_car.current_speed

my_truck.spray_paint("red")
puts my_truck.to_s

my_car.age