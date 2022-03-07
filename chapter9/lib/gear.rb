require_relative 'wheel'
require_relative 'diameter_double'

class Gear
  attr_reader :chainring, :cog, :wheel

  def initialize(args)
    @chainring = args[:chainring]
    @cog = args[:cog]
    # @rim = args[:rim]
    # @tire = args[:tire]
    @wheel = args[:wheel]
  end

  def gear_inches
    # ratio * Wheel.new(rim, tire).diameter

    # 'wheel'変数内のオブジェクトが'Diameterizable'ロールを担う
    ratio * wheel.width
  end

  def ratio
    chainring / cog.to_f
  end
end
