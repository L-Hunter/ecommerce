class User < ApplicationRecord
	# has_many :carts, dependent: :destroy
	# has_many :wishlists, dependent: :destroy
	has_one :cart, dependent: :destroy
	has_one :wishlist, dependent: :destroy
end
