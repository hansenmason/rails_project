class Recipe < ApplicationRecord
  has_many :ingredients
  foreign_key: 'recipe_id'

  has_many :recipeingredients, through: :ingredients
end
