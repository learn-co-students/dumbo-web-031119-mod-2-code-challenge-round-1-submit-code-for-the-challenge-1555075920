class Restaurant < ApplicationRecord
  has_many :pizzas

  # validates :name
  # validate :ingredients

end
