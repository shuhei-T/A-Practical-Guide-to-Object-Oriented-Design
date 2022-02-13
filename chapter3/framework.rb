require './wheel.rb'

module SomeFramework
  class Gear
    attr_reader :chainring, :cog, :wheel

    def initialize(chainring, cog, wheel)
      @chainring = chainring
      @cog = cog
      @wheel = wheel
    end

    def gear_inches
      ratio * wheel.diameter
    end
  
    def ratio
      chainring / cog.to_f
    end
  end
end


module GearWraper
  def self.gear(args)
    SomeFramework::Gear.new(args[:chainring], args[:cog], args[:wheel])
  end
end

puts GearWraper.gear(:chainring => 52, :cog => 11, :wheel => Wheel.new(26, 1.5)).gear_inches