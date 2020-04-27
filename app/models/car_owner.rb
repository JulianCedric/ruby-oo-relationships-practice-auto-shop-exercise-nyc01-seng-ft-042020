class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    CarOwner.all << self 
  end

  def self.all
    @@all
  end

  def cars 
    Car.all.select do |car|
      car.car_owner == self 
    end 
  end  

  def mechanics 
    cars.map do |car|
      car.mechanic 
    end
  end 

  def self.average_number_of_cars 
    average = (Car.all.count) / (CarOwner.all.count)
    average.to_f   
  end

end