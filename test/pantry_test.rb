require './test/test_helper'
require './lib/ingredient'
require './lib/pantry'

class PantryTest < Minitest::Test

  def test_it_exists
    pantry = Pantry.new

    assert_instance_of Pantry, pantry
  end

  def test_it_has_stock_attribute
    pantry = Pantry.new

    assert_equal ({}), pantry.stock
  end

  def test_ingredient_stock_can_be_checked
    pantry = Pantry.new

    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})

    assert_equal 0, pantry.stock_check(ingredient1)
  end

  def test_ingredients_can_be_restocked
    pantry = Pantry.new

    ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})

    pantry.restock(ingredient1, 5)
    pantry.restock(ingredient1, 10)

    assert_equal 15, pantry.stock_check(ingredient1)

    pantry.restock(ingredient2, 7)

    assert_equal 7, pantry.stock_check(ingredient2)
  end

end
