class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @containers = @user.containers.reject{|c| c.staging?}
    @staging = @user.containers.select{|c| c.staging?}
    @link = Link.new
  end
  def index
    @users = User.all
  end
end
