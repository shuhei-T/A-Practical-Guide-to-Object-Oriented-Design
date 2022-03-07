require 'minitest/autorun'
require_relative 'preparer_interface_test'
require_relative '../../lib/9.5/tripcordinator'

class TripCordinatorTest < MiniTest::Test
  include PreparerInterfaceTest

  def setup
    @trip_cordinator = @object = TripCordinator.new
  end
end