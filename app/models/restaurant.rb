class Restaurant < ApplicationRecord
  

  	has_many :pizzas

  	def self.search(request)
  		request.nil? ? (Restaurant.all) : (Restaurant.where("name LIKE ?", "%#{request[:search]}%"))
  	end

end
