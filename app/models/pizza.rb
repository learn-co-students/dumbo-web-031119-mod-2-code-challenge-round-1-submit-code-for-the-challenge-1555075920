class Pizza < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  belongs_to :restaurant



  def ingredient_arr
    Pizza.first.ingredients.split(", ")
  end

end
