class JohnWick
attr_reader :name, :trigger_level
  def initialize
    @name = "John Wick"
    @trigger_level = 0
  end

  def career
    if trigger_level < 3
      "Retired"
    else
      "Boogeyman"
    end
  end

  def retired?
    if career == "Retired"
      true
    else
      false
    end
  end

  def times_triggered
    trigger_level
  end

  def victimized(trigger)
    if trigger.include?("killed") || trigger == "car stolen"
      @trigger_level += 1
    end
  end

  def mood?
    if trigger_level == 0
      "Mellow"
    elsif trigger_level == 1
      "Depressed"
    elsif trigger_level == 2
      "Upset"
    else
      "Angry"
    end
  end

  def wants_revenge?
    if trigger_level < 3
      "I'm just not ready for revenge"
    else
      "It's time for REVENGE!"
    end
  end
end
