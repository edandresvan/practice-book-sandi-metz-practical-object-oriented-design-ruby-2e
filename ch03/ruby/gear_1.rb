class Wheel
  attr_reader :rim, :tire

  def initialize(rim, tire)
    @rim = rim
    @tire = tire
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end
end

class Gear
  attr_reader :chainring, :cog, :rim, :tire

  def initialize(chainring, cog, rim, tire)
    @chainring = chainring
    @cog = cog
    @rim = rim
    @tire = tire
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * Wheel.new(rim, tire).diameter
  end

end

gear_1 = Gear.new(52, 11, 26, 1.5)
puts "Gear inches:\t#{gear_1.gear_inches}"

# @wheel = Wheel.new(26, 1.5)
# puts "Circumference:\t#{@wheel.circumference}"

# gear_1 = Gear.new(52, 11, @wheel)
# puts "Gear inches:\t#{gear_1.gear_inches}"

# gear_2 = Gear.new(52, 11)
# puts "Gear ratio:\t#{gear_2.ratio}"
