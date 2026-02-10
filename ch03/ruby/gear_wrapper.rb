module SomeFramework
  class Gear
    attr_reader :chainring, :cog, :wheel

    def initialize(chainring, cog, wheel)
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
end

module GearWrapper
  def self.gear(chainring: , cog:, wheel:)
    SomeFramework::Gear.new(chainring, cog, wheel)
  end
end

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

gear_1 = GearWrapper.gear(chainring: 52, cog: 11, wheel: Wheel.new(26, 1.5))
puts "Gear inches:\t#{gear_1.gear_inches}"
