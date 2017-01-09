class User < ApplicationRecord
	# has_many :carts, dependent: :destroy
	# has_many :wishlists, dependent: :destroy
	has_one :cart, dependent: :destroy
	has_one :wishlist, dependent: :destroy

	validates :email, presence: true, uniqueness: true
	validates :password, presence: true, confirmation: true
	validates :password_confirmation, presence: true
end
