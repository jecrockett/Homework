class Medusa
  attr_reader :name

  def initialize(name, victims=0, statues = [])
    @name = name
    @victims = victims
    @statues = statues
  end

  def stare(person)
    person.update_statue_state
    @statues << person
    @victims = @victims + 1
    if @statues.length > 3
      @statues[0].update_statue_state
      @statues.shift
    end
  end

  def statues
    @statues
  end

  def victims
    @statues.length
  end

  def alive?
    true unless @victims == 5
  end

end

class Person
  attr_reader :name

  def initialize(name, statue_state=false)
    @name = name
    @statue_state = statue_state
  end

  def stoned?
    @statue_state
  end

  def update_statue_state
    @statue_state = !@statue_state
  end

end
