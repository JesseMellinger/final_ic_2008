require './test/test_helper'
require './lib/ingredient'
require './lib/recipe'

class RecipeTest < Minitest::Test

  def test_it_exists
    recipe1 = Recipe.new("Mac and Cheese")

    assert_instance_of Recipe, recipe1
  end

  def test_it_has_attributes
    recipe1 = Recipe.new("Mac and Cheese")

    assert_equal "Mac and Cheese", recipe1.name
    assert_equal ({}), recipe1.ingredients_required
  end

  def test_ingredients_can_be_added
    recipe1 = Recipe.new("Mac and Cheese")

    ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})

    recipe1.add_ingredient(ingredient1, 2)
    recipe1.add_ingredient(ingredient1, 4)
    recipe1.add_ingredient(ingredient2, 8)

    expected = {
                ingredient1 => 6,
                ingredient2 => 8
               }

    assert_equal expected, recipe1.ingredients_required
  end

end
