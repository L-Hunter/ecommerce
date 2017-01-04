class ProductsController < ApplicationController

before_action :set_product, only: [:show, :edit, :update, :destroy]

  def index
    @products = Product.all
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.create(product_params)
    redirect_to @product
  end

  def edit
  end

  def update
    @product.update
    redirect_to @product
  end

  def destroy
  end

private

  def product_params
    params.require(:user).permit(:fname, :lname, :email, :password, :ccnum, :cctype, :street, :city)
  end

  def set_product
    @product = Product.find(params[:id])
  end

end
