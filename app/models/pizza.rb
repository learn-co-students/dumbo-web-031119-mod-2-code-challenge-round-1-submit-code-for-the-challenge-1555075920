class Pizza < ApplicationRecord
  belongs_to :restaurant

  validates :name, presence: true
  validates :name, uniqueness: true
  validates :restaurant_id, presence: true
  validates :ingredients, presence: true
end
