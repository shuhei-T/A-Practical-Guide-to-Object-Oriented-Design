require 'minitest/autorun'
require_relative '../lib/diameter_double'
require_relative 'diameterizable_interface_test'

class DiameterDoubleTest < MiniTest::Test
  include DiameterizableInterfaceTest

  def setup
    @object = DiameterDouble.new
  end
end
