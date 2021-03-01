class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    #redirect_to controller: 'photos', action: 'index', id: @user
  end
end
