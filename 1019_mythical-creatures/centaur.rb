class Centaur
  attr_reader :name, :breed, :health  # => nil

  def initialize(name, breed, health=3, standing=true)
    @name = name
    @breed = breed
    @health = health
    @standing = standing
  end

  def shoot
    if @health == 0 || @standing == false
      "NO!"
    else
    @health = @health - 1
    "Twang!!!"
    end
  end

  def run
    if @health == 0 || @standing == false
      "NO!"
    else
    @health = @health - 1
    "Clop clop clop clop!!!"
    end
  end

  def cranky?
    true if @health == 0
  end

  def sick?
    cranky?
  end

  def standing?
    @standing
  end

  def laying?
    !@standing
  end

  def full_health?
    true if health == 3
  end

  def sleep
    if @standing == true
      "NO!"
    else
      @health = 3
    end
  end

  def lay_down
    @standing = !@standing
  end

  def stand_up
    lay_down
  end

  def drink_potion
    if @standing == false
      "NO!"
    elsif @health == 3
      @health = 0
      "I don't feel so good..."
    else
      @health = 3
    end
  end

end
