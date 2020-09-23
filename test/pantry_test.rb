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

    assert_equal {}, pantry.stock
  end

end
