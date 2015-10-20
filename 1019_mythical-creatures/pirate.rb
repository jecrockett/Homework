class Pirate

  def initialize(name, job="Scallywag", heinous_acts=0, booty=0)
    @name = name
    @job = job
    @heinous_acts = heinous_acts
    @booty = booty
  end

  def name
    @name
  end

  def job
    @job
  end

  def booty
    @booty
  end

  def cursed?
    true if @heinous_acts >= 3
  end

  def commit_heinous_act
    @heinous_acts = @heinous_acts + 1
  end

  def rob_ship
    @booty = @booty + 100
  end

end
