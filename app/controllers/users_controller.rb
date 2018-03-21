class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @contact = Contact.new
    @contact.requester = current_user
    # @requestee = User.find(params[:user_id])
    # @contact.requestee = @requestee
    # @requestee = @user
  end

  def index
    @search = Search.new
    @user = current_user
    @organisation = @user.organisation
    @users = User.where(organisation: @organisation)


    if params[:user_search] && params[:user_search][:gender].present?
      @gender = params[:user_search][:gender]
      @users = @users.where(gender: @gender)
    end

    if params[:user_search] && params[:user_search][:role].present?
      @role = params[:user_search][:role]
      @users = @users.where(role: @role)
    end

    if params[:user_search] && params[:user_search][:department].present?
      @department = params[:user_search][:department]
      @users = @users.where(department: @department)
    end


  end


end
