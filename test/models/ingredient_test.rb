require "test_helper"

class IngredientTest < ActiveSupport::TestCase
  test "valid ingredient" do
    ingredient = Ingredient.new(name: "Elbow Noodles")
    assert ingredient.valid?
  end

  test "invalid without name" do
    ingredient = Ingredient.new(name: nil)
    refute ingredient.valid?, 'ingredient is valid without a name'
    assert_not_nil ingredient.errors[:name], 'no validation error for name present'
  end
end
