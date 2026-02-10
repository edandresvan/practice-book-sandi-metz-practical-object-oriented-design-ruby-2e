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
  attr_reader :chainring, :cog, :wheel

  def initialize(chainring: default_chainring, cog: 18, wheel:)
    @chainring = chainring
    @cog = cog
    @wheel = wheel
  end

  def default_chainring
    (100.0 / 2.0) - 10
  end

  def ratio
    chainring / cog.to_f
  end

  def gear_inches
    ratio * wheel.diameter
  end
end

gear_1 = Gear.new(
  :cog => 11,
  :chainring => 52,
  :wheel => Wheel.new(26, 1.5))
puts "Gear inches:\t#{gear_1.gear_inches}"

gear_2 = Gear.new(
  wheel: Wheel.new(26, 1.5))
puts "Chainring:\t#{gear_2.chainring}"
