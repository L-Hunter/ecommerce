class Product < ApplicationRecord
	has_and_belongs_to_many :carts
	has_and_belongs_to_many :wishlists

	def self.search(search)
     where("pname LIKE ? OR price LIKE ?", "%#{search}%", "%#{search}%") 
	end
end
