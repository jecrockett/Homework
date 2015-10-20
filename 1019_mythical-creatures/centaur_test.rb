gem 'minitest', '~> 5.2'    # => true
require 'minitest/autorun'  # => true
require 'minitest/pride'    # => true
require_relative 'centaur'  # => true

class CentaurTest < Minitest::Test
  def test_it_has_a_name
    centaur = Centaur.new("George","Palomino")  # => #<Centaur:0x007fe1cb8076e0 @name="George", @breed="Palomino", @health=3, @standing=true>
    assert_equal "George", centaur.name         # => true
  end

  def test_it_has_a_horse_breed
    centaur = Centaur.new("George","Palomino")  # => #<Centaur:0x007fe1cb805d90 @name="George", @breed="Palomino", @health=3, @standing=true>
    assert_equal "Palomino", centaur.breed      # => true
  end

  def test_it_has_excellent_bow_skills
    centaur = Centaur.new("George","Palomino")  # => #<Centaur:0x007fe1cb80d6a8 @name="George", @breed="Palomino", @health=3, @standing=true>
    assert_equal "Twang!!!", centaur.shoot      # => true
  end

  def test_it_makes_a_horse_sound_when_it_runs
    centaur = Centaur.new("George","Palomino")          # => #<Centaur:0x007fe1cb806920 @name="George", @breed="Palomino", @health=3, @standing=true>
    assert_equal "Clop clop clop clop!!!", centaur.run  # => true
  end

  def test_when_first_created_it_is_not_cranky
    centaur = Centaur.new("George","Palomino")  # => #<Centaur:0x007fe1cb805840 @name="George", @breed="Palomino", @health=3, @standing=true>
    refute centaur.cranky?                      # => false
  end

  def test_when_first_created_it_is_standing_up
    centaur = Centaur.new("George","Palomino")   # => #<Centaur:0x007fe1ca961cd0 @name="George", @breed="Palomino", @health=3, @standing=true>
    assert centaur.standing?                     # => true
  end

  def test_after_running_or_shooting_a_bow_three_times_it_gets_cranky
    centaur = Centaur.new("George","Palomino")                         # => #<Centaur:0x007fe1cb807168 @name="George", @breed="Palomino", @health=3, @standing=true>
    refute centaur.cranky?                                             # => false
    centaur.shoot                                                      # => "Twang!!!"
    centaur.run                                                        # => "Clop clop clop clop!!!"
    centaur.shoot                                                      # => "Twang!!!"
    assert centaur.cranky?                                             # => true
  end

  def test_when_cranky_it_will_not_shoot_a_bow
    centaur = Centaur.new("George","Palomino")  # => #<Centaur:0x007fe1cb805390 @name="George", @breed="Palomino", @health=3, @standing=true>
    3.times { centaur.shoot }                   # => 3
    assert_equal "NO!", centaur.shoot           # => true
  end

  def test_when_cranky_it_will_not_run
    centaur = Centaur.new("George","Palomino")  # => #<Centaur:0x007fe1cb804cd8 @name="George", @breed="Palomino", @health=3, @standing=true>
    3.times { centaur.shoot }                   # => 3
    assert_equal "NO!", centaur.run             # => true
  end

  def test_when_standing_it_will_not_sleep
    centaur = Centaur.new("George","Palomino")  # => #<Centaur:0x007fe1cb80dc20 @name="George", @breed="Palomino", @health=3, @standing=true>
    assert_equal "NO!", centaur.sleep           # => true
  end

  def test_it_can_lay_down
    centaur = Centaur.new("George","Palomino")  # => #<Centaur:0x007fe1cb80d130 @name="George", @breed="Palomino", @health=3, @standing=true>
    assert centaur.respond_to?(:lay_down)       # => true
  end

  def test_after_laying_down_it_is_not_standing
    centaur = Centaur.new("George","Palomino")   # => #<Centaur:0x007fe1cb80cca8 @name="George", @breed="Palomino", @health=3, @standing=true>
    centaur.lay_down                             # => false
    refute centaur.standing?                     # => false
    assert centaur.laying?                       # => true
  end

  def test_it_can_sleep_when_laying_down
    centaur = Centaur.new("George","Palomino")  # => #<Centaur:0x007fe1cb80c028 @name="George", @breed="Palomino", @health=3, @standing=true>
    centaur.lay_down                            # => false
    refute_equal "NO!", centaur.sleep           # => false
  end

  def test_when_laying_down_it_cannot_shoot_a_bow
    centaur = Centaur.new("George","Palomino")     # => #<Centaur:0x007fe1cb80e8a0 @name="George", @breed="Palomino", @health=3, @standing=true>
    centaur.lay_down                               # => false
    assert_equal "NO!", centaur.shoot              # => true
  end

  def test_when_laying_down_it_cannot_run
    centaur = Centaur.new("George","Palomino")  # => #<Centaur:0x007fe1cb80e260 @name="George", @breed="Palomino", @health=3, @standing=true>
    centaur.lay_down                            # => false
    assert_equal "NO!", centaur.run             # => true
  end

  def test_it_can_stand_up
    centaur = Centaur.new("George","Palomino")  # => #<Centaur:0x007fe1cb8063a8 @name="George", @breed="Palomino", @health=3, @standing=true>
    centaur.lay_down                            # => false
    centaur.stand_up                            # => true
    assert centaur.standing?                    # => true
  end

  def test_after_sleeping_it_is_no_longer_cranky
    centaur = Centaur.new("George","Palomino")    # => #<Centaur:0x007fe1cb80f6b0 @name="George", @breed="Palomino", @health=3, @standing=true>

    centaur.shoot  # => "Twang!!!"
    centaur.run    # => "Clop clop clop clop!!!"
    centaur.shoot  # => "Twang!!!"

    assert centaur.cranky?  # => true

    centaur.lay_down  # => false
    centaur.sleep     # => 3

    refute centaur.cranky?  # => false

    centaur.stand_up  # => true

    assert_equal "Twang!!!", centaur.shoot              # => true
    assert_equal "Clop clop clop clop!!!", centaur.run  # => true
  end

  def test_becomes_rested_after_drinking_a_potion
    centaur = Centaur.new("George", "Palomino")    # => #<Centaur:0x007fe1cb804620 @name="George", @breed="Palomino", @health=3, @standing=true>

    centaur.shoot  # => "Twang!!!"
    centaur.shoot  # => "Twang!!!"
    centaur.shoot  # => "Twang!!!"

    assert centaur.cranky?  # => true

    centaur.drink_potion    # => "I don't feel so good..."
    refute centaur.cranky?
  end

  def test_can_only_drink_potion_while_standing
    centaur = Centaur.new("George", "Palomino")  # => #<Centaur:0x007fe1cb80c668 @name="George", @breed="Palomino", @health=3, @standing=true>

    centaur.lay_down                          # => false
    assert_equal "NO!", centaur.drink_potion  # => true
  end

  def test_gets_sick_if_drinks_potion_while_rested
    centaur = Centaur.new("George", "Palomino")     # => #<Centaur:0x007fe1cb80fde0 @name="George", @breed="Palomino", @health=3, @standing=true>
    assert centaur.full_health?                     # => true
    centaur.drink_potion                            # => "I don't feel so good..."
    refute centaur.full_health?                     # => false
    assert centaur.sick?                            # => true
  end

end

# >> Run options: --seed 54131
# >>
# >> # Running:
# >>
# >> ........F...........
# >>
# >> Finished in 0.001514s, 13210.1181 runs/s, 18494.1654 assertions/s.
# >>
# >>   1) Failure:
# >> CentaurTest#test_becomes_rested_after_drinking_a_potion [/Users/JEC/Turing/1Module/Homework/1019_mythical-creatures/centaur_test.rb:130]:
# >> Failed refutation, no message given
# >>
# >> 20 runs, 28 assertions, 1 failures, 0 errors, 0 skips
