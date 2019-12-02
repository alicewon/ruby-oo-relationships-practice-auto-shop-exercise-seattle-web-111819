class Mechanic

  attr_reader :name, :specialty
  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all<< self
end

def self.all
  @@all
end

# - Get a list of all mechanics

def cars #m1.cars
  # - Get a list of all cars that a mechanic services
  Car.all.select {|car|car.mechanic == self}
end

def car_owners #m1.car_owners
# - Get a list of all the car owners that go to a specific mechanic
cars.map {|car|car.owner}
end

def owner_name #m1.owner_name
  # - Get a list of the names of all car owners who go to a specific mechanic
  car_owners.map {|owners|owners.name}.uniq

end



end
