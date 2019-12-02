class Car

  attr_accessor :owner, :mechanic
  attr_reader :make, :model, :classification
  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @@all<< self
  end

  def self.all
    @@all
  end


# - Get a list of all cars

def self.classifications #Car.classifications
  # - Get a list of all car classifications
  @@all.map {|car|car.classification}.uniq
end


# - Get a list of mechanics that have an expertise that matches the car classification


end