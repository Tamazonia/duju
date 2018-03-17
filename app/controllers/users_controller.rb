class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def index
    @user = current_user
    @organisation = @user.organisation
    @users = User.where(organisation: @organisation)
  end


end
