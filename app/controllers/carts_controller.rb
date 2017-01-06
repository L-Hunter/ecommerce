class CartsController < ApplicationController

before_action :set_cart, only: [:show, :edit, :update, :destroy]

  def index
    @carts = Cart.all
  end

  def show
  end

  def new
    @cart = Cart.new
  end

  def create
    @cart = Cart.create(cart_params)
    redirect_to @cart
  end

  def edit
  end

  def update
    @cart.update(cart_params)
    redirect_to @cart
  end

  def destroy
    @cart.destroy
    redirect_to '/'
  end

  def add_to_cart
    @user = User.find(session[:user_id])
    @product = Product.find(params[:product_id])
    @user.cart.products.push(@product)
    redirect_to @user.cart
  end

  def delete_from_cart
    @user = User.find(session[:user_id])
    @product = Product.find(params[:product_id])
    @user.cart.products.delete(@product)
    redirect_to @user.cart
  end

private

  def cart_params
    params.require(:user).permit(:user_id, :product_id)
  end

  def set_cart
    @cart = Cart.find(params[:id])
  end

end