class Mechanic
  def prepare_bicycle(bicycle)
    
  end

  def prepare_trip(trip)
    trip.bicycles.each {|bicycle| prepare_bicycle(bicycle)}
  end
end
