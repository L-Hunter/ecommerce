class UsersController < ApplicationController

before_action :set_user, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    Wishlist.create(user_id: @user.id)
    Cart.create(user_id: @user.id)
    redirect_to @user
  end

  def edit
  end

  def update
    @user.update
    redirect_to @user
  end

  def destroy
    @user.destroy
  end

private

  def user_params
    params.require(:user).permit(:fname, :lname, :email, :password, :ccnum, :cctype, :street, :city)
  end

  def set_user
    @user = User.find(params[:id])
  end

end
