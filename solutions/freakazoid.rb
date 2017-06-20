class Freakazoid
attr_reader :name, :computer, :processor
  def initialize(name, computer = nil)
    @name = name
    @computer = computer
    @processor = "Pentium Chip" if computer
  end

  def owns_computer?
    if computer
      true
    else
      false
    end
  end

  def has_processor?
    if processor
      true
    else
      false
    end
  end

  def upgrade_to_pentacle_chip
    @processor = "Pentacle Chip"
  end

  def freak_out
    if processor == "Pentacle Chip"
      @name = "Freakazoid"
      "Awwwwwwwww..... FREAK OUT! *** ZAAAP ***"
    elsif processor == "Pentium Chip"
      "No Freak for you! You don't have a pentacle chip!. Nut bunnies!"
    else
      "No Freak for you! You don't have a computer! Doodie!"
    end
  end
end
