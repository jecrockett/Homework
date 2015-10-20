class Ogre
  attr_reader :name, :home, :encounters, :swings

  def initialize(name, home='Swamp', encounters=0, swings=0)
    @name = name
    @home = home
    @encounters = encounters
    @swings = swings
  end

  def encounter
    swing_a_club
    @encounters = @encounters + 1
  end

  def encounter_counter
    @encounters
  end

  def swing_a_club
    @swings = @swings + 1
  end

end

# This one got weird. "test_it_hits_the_human_every_second_time_it_swings" is written poorly. swings should be 3, not 2. why would the encounter_counter reset to 0 after 6 encounters? stopping now.


class Human
 attr_reader :name

 def initialize
   @name = 'Jane'
 end

 def notices_ogre?
   if (@encounters.to_i % 3) == 0
     true
   end
 end

end
