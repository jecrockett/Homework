class Hobbit
  def initialize(name, disposition="homebody", age=0)
    @name = name
    @disposition = disposition
    @age = age
  end

  def name
    @name
  end

  def disposition
    @disposition
  end

  def age
    @age
  end

  def celebrate_birthday
    @age = @age + 1
  end

  def adult?
    true if @age > 32
  end

  def old?
    true if @age > 100
  end

  def has_ring?
    true if @name == 'Frodo'
  end

  def is_short?
    true
  end
end
