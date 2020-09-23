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

end
