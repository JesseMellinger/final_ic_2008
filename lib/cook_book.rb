require 'date'

class CookBook
  attr_reader :recipes, :date

  def initialize()
    @recipes = []
    @date = Date.today.strftime("%m-%d-%y")
  end

  def add_recipe(recipe)
    @recipes << recipe
  end

  def ingredients
    @recipes.flat_map do |recipe|
      recipe.ingredients
    end.map(&:name).uniq
  end

  def highest_calorie_meal
    @recipes.max_by {|recipe| recipe.total_calories}
  end

  def summary
    arr = []
    @recipes.each() do |recipe|
      arr << {name: recipe.name,
      details: {ingredients: [recipe.ingredients_required]},
      total_calories: recipe.total_calories
      }
    end
    arr
  end

end
