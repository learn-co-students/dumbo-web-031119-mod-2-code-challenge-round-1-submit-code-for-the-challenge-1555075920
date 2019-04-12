class Pizza < ApplicationRecord
  belongs_to :restaurant
  validates :name,uniqueness:true,presence:true
  validates :ingredients,presence:true

  def pizza_name
  category.try(:name)
  end

  def pizza_name=(name)
  self.category = Category.find_by(name: name) if name.present?
  end

end
