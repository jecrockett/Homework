class Wizard
  attr_reader :name

  def initialize(name, beard = { :bearded => true }, spells=0)
    @name = name
    @bearded = beard[:bearded]
    @spells = spells
  end

  def bearded?
    @bearded
  end

  def incantation(something)
    "sudo #{something}"
  end

  def rested?
    true if @spells < 3
  end

  def cast
    @spells = @spells + 1
    "MAGIC MISSILE!"
  end
end
