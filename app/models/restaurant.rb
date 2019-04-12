class Restaurant < ApplicationRecord
  has_many :pizzas

  def self.search(value)
    if value
      restaurants = Restaurant.where(name: value)
    else
      Restaurant.all
    end
  end
  
end
