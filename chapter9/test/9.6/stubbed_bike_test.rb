require 'minitest/autorun'
require_relative '../../lib/9.6/stubbed_bike'
require_relative 'bicycle_subclass_test'

class StubbedBikeTest < MiniTest::Test
  include BicycleSubclassTest

  def setup
    @object = StubbedBike.new
  end
end