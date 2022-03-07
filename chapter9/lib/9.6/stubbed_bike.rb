require_relative '../../lib/9.6/bicycle'

class StubbedBike < Bicycle

  def default_tire_size
    0
  end
  
  def local_spares
    {saddle: 'painful'}
  end
end

