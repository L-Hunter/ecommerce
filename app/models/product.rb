class Product < ApplicationRecord
	belongs_to :cart
	belongs_to :user
	belongs_to :wishlist
end
