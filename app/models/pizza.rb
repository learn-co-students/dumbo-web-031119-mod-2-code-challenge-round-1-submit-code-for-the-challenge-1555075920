class Pizza < ApplicationRecord
    belongs_to :restaurant, dependent: :destroy

    validates :name, uniqueness: true
    validates :name, presence: true
    validates :ingredients, presence: true
    validates :restaurant_id, presence: true

    def ingredients_arr
        self.ingredients.split("\n")
    end
end
