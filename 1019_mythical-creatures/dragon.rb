class Dragon
  def initialize(name, color, rider, hunger=3)
    @name = name
    @color = color
    @rider = rider
    @hungry = hungry
    @hunger = hunger
  end

  def name
    @name
  end

  def color
    @color
  end

  def rider
    @rider
  end

  def hungry?
    @hungry !== 0
  end

  def eat
    @hunger -= 1
  end
end
