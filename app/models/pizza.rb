class Pizza < ApplicationRecord
  belongs_to :restaurant

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :ingredients, presence: true
  validates :restaurant_id, presence: true
  validates :restaurant_id, numericality: true

end
