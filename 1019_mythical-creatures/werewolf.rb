class Werewolf
  attr_reader :name, :location

  def initialize(name, location="London", human=true, hungry=false)
    @name = name
    @location = location
    @human = human
    @hungry = hungry
  end

  def human?
    @human
  end

  def werewolf?
    !@human
  end

  def change!
    @hungry = true
    @human = !@human
  end

  def hungry?
    @hungry
  end

end
