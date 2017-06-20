class Batman
  attr_reader :name, :color, :batcave, :sidekicks

  def initialize(name, color)
    @name = name
    @color = color
    @batcave = {"Car" => "Bat-Mobile"}
    @sidekicks = []
  end

  def add_vehicle(type, name)
    batcave[type] = name
  end

  def add_sidekick(name)
    sidekicks << name
  end

  def vehicle_type?(name)
    batcave.key(name)
  end
end
