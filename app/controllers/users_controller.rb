class UsersController < ApplicationController
  
  def show
    @user = User.find(params[:id] || current_user.id)
    @items = @user.items
  end

  

  def index
    @users = User.all
  end

end