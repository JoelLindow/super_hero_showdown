class PowerPuffGirl
attr_reader :name, :personality
  def initialize(name, personality = "Heroic")
    @name = name
    @personality = personality
  end

  def heroic?
    if personality == "Heroic"
      true
    else
      false
    end
  end

  def say_to_bad_guy(speech)
    "!!! HALT, EVIL DOER !!! #{speech}"
  end

  def say_to_normal_people(speech)
    "*** Hello Citizen! #{speech} ***"
  end
end
