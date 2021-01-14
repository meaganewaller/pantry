class Recipe < ApplicationRecord
  has_many :recipe_ingredients
  has_many :ingredients, through: :recipe_ingredients

  validates_presence_of :title

  accepts_nested_attributes_for :recipe_ingredients
end
