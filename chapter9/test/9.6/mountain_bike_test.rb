require 'minitest/autorun'
require_relative '../../lib/9.6/road_bike'
require_relative 'bicycle_interface_test'
require_relative 'bicycle_subclass_test'

class MountainBikeTest < minitest::Test
  include BicycleInterfaceTest
  include BicycleSubclassTest

  def setup
    @bike = @object = MountainBike.new
  end
end