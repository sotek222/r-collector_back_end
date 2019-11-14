class Api::V1::UsersController < ApplicationController

  def show
    user = User.find(params[:id])
    render json: user
  end
  
  def create
    user = User.find_or_create_by(email: params[:email])
    render json: user
  end
end
