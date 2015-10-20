class AllergyTest < Minitest::Test

def test_that_it_exists
  assert Allergy
end

def test_that_a_score_of_two_means_the_patient_is_allergic_to_peanuts
  test = Allergy.new
  assert_equal test.tester(2), "peanuts"
end

def test_that_a_score_of_3_means_the_patient_is_allergic_to_eggs_and_peanuts
  test = Allergy.new
  assert_equal t
end
