class Car
  attr_accessor :car_owner, :mechanic 
  attr_reader :make, :model, :classification 

  @@all = []

  def initialize(make, model, classification, car_owner, mechanic)
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

  def find_mechanics(classification)
    specialized_mechanics = Mechanic.all.select do |mechanic|
      mechanic.specialty == self.classification 
    end
    specialized_mechanics.map do |specialized_mechanic|
      specialized_mechanic
    end
  end

end