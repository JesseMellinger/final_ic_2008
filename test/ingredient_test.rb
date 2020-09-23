require './test/test_helper'
require './lib/ingredient'

class IngredientTest < Minitest::Test

  def test_it_exists
    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})

    assert_instance_of Ingredient, ingredient1
  end

end
