class Batman
  attr_reader :name, :color, :batcave, :sidekicks

  def initialize(name, color)
    @name = name
    @color = color
    @batcave = {
                "Car" => "Bat-Mobile"
    }
    @sidekicks = []
  end

  def add_vehicle(vehicle_type, vehicle)
    @batcave[vehicle_type] = vehicle
  end

  def add_sidekick(sidekick)
    @sidekicks << (sidekick)
  end

  def vehicle_type?(vehicle)
    @batcave.invert[vehicle]
  end
end
