require 'minitest/autorun'
require_relative '../../lib/9.6/bicycle'
require_relative '../../lib/9.6/stubbed_bike'
require_relative 'bicycle_interface_test'

class BicycleTest < MiniTest::Test
  include BicycleInterfaceTest

  def setup
    @bike = @object = Bicycle.new({tire_size: 0})
    @stubbed_bike = StubbedBike.new
  end
  
  def test_forces_subclasses_to_implement_default_tire_size
    assert_raises(NotImplementedError) {@bike.default_tire_size}
  end

  def test_includes_local_spares_in_spares
    assert_equal @stubbed_bike.spares,
                  { tire_size: 0,
                    chain: '10-speed',
                    saddle: 'painful' }
  end
end