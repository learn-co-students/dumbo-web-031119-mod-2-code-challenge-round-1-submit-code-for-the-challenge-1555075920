class Pizza < ApplicationRecord
    belongs_to :restaurants
    validates :name, uniqueness: true
end
