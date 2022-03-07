require 'minitest/autorun'
require_relative 'preparer_interface_test'
require_relative '../../lib/9.5/tripcordinator'
require_relative '../../lib/9.5/driver'

class TripCordinatorTest < MiniTest::Test
  include PreparerInterfaceTest

  def setup
    @driver = @object = Driver.new
  end
end