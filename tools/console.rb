require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


o1 = CarOwner.new("Sergio")
o2 = CarOwner.new("Alice")
o3 = CarOwner.new("Mike")


m1 = Mechanic.new("joe", "tires")
m2 = Mechanic.new("jen", "engine")
m3 = Mechanic.new("molly", "alignment")


c1 = Car.new("Ford", "1escort", "1sedan")
c2 = Car.new("Ford1", "2escort", "2sedan")
c3 = Car.new("Ford2", "3escort", "3sedan")
c4 = Car.new("Ford3", "4escort", "4sedan")
c5 = Car.new("Ford4", "5escort", "5sedan")
c6 = Car.new("Ford5", "6escort", "6sedan")

c1.owner = o1
c2.owner = o3
c3.owner = o3
c4.owner = o1
c5.owner = o3
c6.owner = o3

c1.mechanic = m1
c2.mechanic = m2
c3.mechanic = m3
c4.mechanic = m1
c5.mechanic = m2
c6.mechanic = m3



binding.pry
