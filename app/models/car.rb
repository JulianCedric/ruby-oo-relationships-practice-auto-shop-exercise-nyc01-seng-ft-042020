class Car
  attr_accessor :car_owner, :mechanic 
  attr_reader :make, :model, :classification 

  @@all = []

  def initialize(make, model, classification, car_owner)
    @car_owner = car_owner
    @mechanic = mechanic 
    @make = make
    @model = model
    @classification = classification
    Car.all << self 
  end

  def self.all
    @@all 
  end

  def self.classifications
    Car.all.map do |car|
      car.classification 
    end 
  end 

  def self.find_mechanics(classification)
    Mechanic.all.select do |mechanic|
      mechanic.specialty == classification 
    end
  end

end