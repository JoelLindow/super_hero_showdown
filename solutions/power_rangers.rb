class PowerRanger
attr_reader :name, :skills, :energy

  def initialize(name, skills = "Karate")
    @name = name
    @skills = skills
    @energy = true
  end

  def rank
    if name == "Red Ranger"
      "Team Captain"
    else
      "Basic Ranger"
    end
  end

  def energetic?
    energy
  end

  def fight
    @energy = false
  end
end
