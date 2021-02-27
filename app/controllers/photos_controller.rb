class PhotosController < ApplicationController
  def index
  end

  def show
    @tacos = Photo.where(user_id: params[:id])
    @photos = Photo.where(user_id: params[:id])
    @photo = Photo.find(params[:id])
    @fishs = User.find(params[:id])
    @users = User.all
    @comments = Comment.all
    @user = User.find(params[:id])
    #@photo = Photo.find(user_id: params[:id])
  end
end
