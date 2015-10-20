class Vampire
  def initialize(name, pet="bat", thirsty="yes")
    @name = name
    @pet = pet
    @thirsty = thirsty
  end

  def name
    @name
  end

  def pet
    @pet
  end

  def thirsty?
    @thirsty == "yes"
  end

  def drink
    @thirsty = "no"
  end

end
