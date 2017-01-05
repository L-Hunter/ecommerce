class SessionsController < ApplicationController

 #route for login form
 def new
 end

 #processes data from login form
 def create
    @user = User.where(email: params[:email]).first
    if @user && @user.password == params[:password]
	  session[:user_id] = @user.id
      redirect_to @user
      # flash[:notice] = "You have successfully logged in!"
    end

 end

 
 #route for logging out a user
 def destroy
    session[:user_id] = nil
    redirect_to root_path
 end

end
