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
    @wishlist.update(wishlist_params)
    redirect_to @wishlist
  end

  def destroy
    @wishlist.destroy
    redirect_to '/'
  end

  def add_to_wishlist
    @user = User.find(session[:user_id])
    @product = Product.find(params[:product_id])
    @user.wishlist.products.push(@product)
    redirect_to @user.wishlist
  end

  def delete_from_wishlist
    @user = User.find(session[:user_id])
    @product = Product.find(params[:product_id])
    @user.wishlist.products.delete(@product)
    redirect_to @user.wishlist
  end

private

  def wishlist_params
    params.require(:user).permit(:user_id, :product_id)
  end

  def set_wishlist
    @wishlist = Wishlist.find(params[:id])
  end

end
