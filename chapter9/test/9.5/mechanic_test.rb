require 'minitest/autorun'
require_relative 'preparer_interface_test'
require_relative '../../lib/9.5/mechanic'

class MechanicTest < MiniTest::Test
  include PreparerInterfaceTest
  
  def setup
    @mechanic = @object = Mechanic.new
  end
end