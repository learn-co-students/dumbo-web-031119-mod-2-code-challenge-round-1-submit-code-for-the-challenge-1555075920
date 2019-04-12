class Restaurant < ApplicationRecord
  has_many :pizzas

# trying to figure out seach bar, google brought this up
  def self.search(search)
  if search
    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
  else
    find(:all)
  end
end
end
