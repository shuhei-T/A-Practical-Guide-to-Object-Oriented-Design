class Trip
  attr_reader :bicycles, :customers, :vehicle

  # def prepare(preparers)
  #   preparers.each { |preparer|
  #     case preparer
  #     when Mechanic
  #       preparer.prepare_bicycles(bicycles)
  #     when TripCordinator
  #       preparer.buy_food(customers)
  #     when Driver
  #       preparer.gas_up(vehicle)
  #       preparer.fill_water_tank(vehicle)
  #     end
  #   }
  # end

  def prepare(preparers)
    preparers.each {|preparer|
      preparer.prepare_trip(self)}
  end
end