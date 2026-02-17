class Trip
  attr_reader :bicycles, :customers, :vehicle

  def initialize(bicycles:, customers:, vehicle:)
    @bicycles   = bicycles
    @customers  = customers
    @vehicle   = vehicle
  end

  def prepare(preparers)
    preparers.each { |preparer|
      preparer.prepare_trip(self)
    }
  end
end

class Mechanic
  def prepare_trip(trip)
    trip.bicycles.each {|bicycle|
      prepare_bicycle(bicycle)
    }
  end

  def prepare_bicycle(bicycle)
    puts "Mechanic prepare_bicycle"
  end
end

class TripCoordinator
  def prepare_trip(trip)
    buy_food(trip.customers)
  end
  def buy_food(customers)
    puts "TripCoordinator buy_food"
  end
end

class Driver
  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end

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
preparers_1 = [TripCoordinator.new, Mechanic.new,Driver.new, ]

trip_1.prepare(preparers_1)
