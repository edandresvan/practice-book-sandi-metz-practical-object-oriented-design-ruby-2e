class Gear
  attr_reader :chainring, :cog

  def initialize(chainring: ,cog: 18)
    @chainring = chainring
    @cog = cog
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches(diameter)
    ratio * diameter
  end
end

class Wheel
  attr_reader :rim, :tire, :gear

  def initialize(rim:, tire:, chainring:, cog:)
    @rim = rim
    @tire = tire
    @gear = Gear.new(chainring: chainring, cog: cog)
  end

  def diameter
    rim + (tire * 2)
  end

  def circumference
    diameter * Math::PI
  end

  def gear_inches
    gear.gear_inches(diameter)
  end

end

wheel_1 = Wheel.new(rim: 26, tire: 1.5, chainring: 52, cog: 11)
puts "Gear inches:\t#{wheel_1.gear_inches}"
