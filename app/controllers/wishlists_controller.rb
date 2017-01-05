class WishlistsController < ApplicationController
  before_action :set_wishlist, only: [:show, :edit, :update, :destroy]
  
  def index
    @wishlists = Wishlist.all
  end

  def show
  end

  def new
    @wishlist = Wishlist.new
  end

  def create
    @wishlist = Wishlist.create(wishlist_params)
    redirect_to @wishlist
  end

  def edit
  end

  def update
    @wishlist.update
    redirect_to @wishlist
  end

  def destroy
  end

private

  def wishlist_params
    params.require(:user).permit(:user_id, :product_id)
  end

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

end
