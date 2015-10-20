class Allergy
  def initialize(point_value)
    @point_value = point_value
  end

  def food_allergy_points
    point_value = {eggs: 1, 
                   peanuts: 2,
                   shellfish: 4,
                   strawberries: 8,
                   tomatoes: 16,
                   chocolate: 32,
                   pollen: 64,
                   cats: 128}
    point_value = point_value.invert
  end

  def method_name

  end





end
