class Product < ApplicationRecord
	has_and_belongs_to_many :carts
	has_and_belongs_to_many :wishlists
end
