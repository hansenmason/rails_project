class MealSerializer < ActiveModel::Serializer
  attributes :id, :date
  has_one :recipe
  has_one :ingredient
end
