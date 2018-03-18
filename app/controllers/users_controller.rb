class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def index
    @search = Search.new
    @user = current_user
    @organisation = @user.organisation
    @users = User.where(organisation: @organisation)
  end


end
