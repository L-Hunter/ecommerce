class User < ApplicationRecord
	has_many :carts
	has_many :wishlists
end
