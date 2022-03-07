class Driver
  def gas_up(vehicle)

  end

  def fill_water_tank(vehicle)

  end

  def prepare_trip(trip)
    vehicle = trip.vehicle
    gas_up(vehicle)
    fill_water_tank(vehicle)
  end
end