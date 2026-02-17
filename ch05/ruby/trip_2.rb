class Trip
  attr_reader :bicycles, :customers, :vehicle

  def initialize(bicycles:, customers:, vehicle:)
    @bicycles   = bicycles
    @customers  = customers
    @vehicle   = vehicle
  end

  def prepare(preparers)
    preparers.each {|preparer|
      case preparer
      when Mechanic
        preparer.prepare_bicycles(bicycles)
      when TripCoordinator
        preparer.buy_food(customers)
      when Driver
        preparer.gas_up(vehicle)
        preparer.fill_water_tank(vehicle)
      end
    }
  end
end

class Mechanic
  def prepare_bicycles(bicycles)
    bicycles.each {| bicycle | prepare_bicycle(bicycles)}
  end

  def prepare_bicycle(bicycle)
    puts "Mechanic prepare_bicycle"
  end
end


class TripCoordinator
  def buy_food(customers)
    puts "TripCoordinator buy_food"
  end
end

class Driver
  def gas_up(vehicle)
    puts "Driver gas_up"
  end

  def fill_water_tank(vehicle)
    puts "Driver fill_water_tank"
  end
end

class Bicycle
end

class Customer
end

class Vehicle
end

bicycles_1 = [Bicycle.new, Bicycle.new, Bicycle.new]
customers_1 = [Customer.new, Customer.new]
vehicle_1 = Vehicle.new

trip_1 = Trip.new(bicycles: bicycles_1, customers: customers_1, vehicle: vehicle_1)
preparers_1 = [TripCoordinator.new, Driver.new, Mechanic.new]

trip_1.prepare(preparers_1)
