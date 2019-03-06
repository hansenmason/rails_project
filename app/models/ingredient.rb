class Ingredient < ApplicationRecord
  belongs_to :recipe,
  foreign_key: 'ingredient_id'

  has_many :recipeingredients, through: :recipes

end
