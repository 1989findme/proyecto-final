class UsersController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource
  def search
    @user = User.random(current_user.id)
  end

  def show
    @user = User.find(params[:id])
  end
end
