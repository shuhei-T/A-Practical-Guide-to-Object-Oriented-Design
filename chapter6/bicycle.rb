class Bicycle
  attr_reader :size, :chain, :tire_size

  def initialize(args={})
    @size = args[:size]
    @chain = args[:cnain] || default_chain
    @tire_size = args[:tire_size] || default_tire_size
    post_initialize(args)
  end

  def spares
    { tire_size: tire_size, chain: chain }.merge(local_spares)
  end

  def default_tire_size
    raise NotImplementedError, "This #{self.class} cannot respond to:"
  end

  # subclasses may override
  def post_initialize(args)
    nil
  end

  def local_spares
    {}
  end

  def default_chain
    '10-speed'
  end

end

class RoadBike < Bicycle
  attr_reader :tape_color

  def post_initialize(args)
    @tape_color = args[:tape_color]
  end

  # def initialize(args)
  #   @tape_color = args[:tape_color]
  #   super(args)
  # end

  def local_spares
    { tape_color: tape_color }
  end

  # def spares
  #   super.merge({ tape_color: tape_color })
  # end

  def default_tire_size
    '23'
  end
end

class MountainBike < Bicycle
  attr_reader :front_shock, :rear_shock

  def post_initialize(args)
    @front_shock = args[:front_shock]
    @rear_shock = args[:rear_shock]
  end

  # def initialize(args)
  #   @front_shock = args[:front_shock]
  #   @rear_shock = args[:rear_shock]
  #   super(args)
  # end

  def local_spares
    { rear_shock: rear_shock }
  end

  # def spares
  #   super.merge(rear_shock: rear_shock)
  # end

  def default_tire_size
    '2.1'
  end
end

class RecumbentBike < Bicycle
  attr_reader :flag

  def post_initialize(args)
    @flag = args[:flag]
  end

  def local_spares
    { flag: flag }
  end

  # def initialize(args)
  #   @flag = args[:flag]
  # end

  # def spares
  #   super.merge({flag: flag})
  # end
  
  def default_chain
    '9-speed'
  end

  def default_tire_size
    '28'
  end
end