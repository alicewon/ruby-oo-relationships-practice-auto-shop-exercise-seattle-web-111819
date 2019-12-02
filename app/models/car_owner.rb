class CarOwner

  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars #o1.cars
     # - Get a list of all the cars that a specific owner has
    Car.all.select {|cars|cars.owner == self}
  end

  def mechanics #o1.mechanics
    # - Get a list of all the mechanics that a specific owner goes to
    cars.map {|cars|cars.mechanic}.uniq
  end


  def self.average_cars #CarOwner.average_cars
    # - Get the average amount of cars owned for all owners

    # look at all the car owners' # of cars and add them up
    # look at carowners.count
    # divide sum by amount:  cars_sum / car_owners.count

    car_owner = Car.all.select {|car|car.owner }
    car_owner.count / (car_owner.map {|car|car.owner}.uniq.count).to_f
  
  end

end


  # - Get a list of all owners