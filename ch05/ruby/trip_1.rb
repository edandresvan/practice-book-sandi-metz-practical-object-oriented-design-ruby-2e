class Trip
  attr_accessor :bicycles

  def initialize(bicycles:)
    @bicycles = bicycles
  end

  def prepare (mechanic)
    mechanic.prepare_bicycles(bicycles)
  end

end

class Mechanic

  def prepare_bicycles(bicycles)
    bicycles.each {| bicycle | prepare_bicycle(bicycles)}
  end

  def prepare_bicycle(bicycle)
    puts "preparing bicycle"
  end

end

class Bicycle
end

mechanic_1 = Mechanic.new

trip_1 = Trip.new(bicycles: [Bicycle.new, Bicycle.new, Bicycle.new])

trip_1.prepare(mechanic_1)
