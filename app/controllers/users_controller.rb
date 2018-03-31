class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @contacts = Contact.where(["requester_id = ? and requestee_id = ?", current_user.id, @user.id])
    @contacts_two = Contact.where(["requester_id = ? and requestee_id = ?", @user.id, current_user.id])
    @networks = Network.where(networker_one: @user)
  end

  def index
    @search = Search.new
    @user = current_user
    @organisation = @user.organisation
    @users = User.where(organisation: @organisation)


    if params[:user_search] && params[:user_search][:location].present?
      @location = params[:user_search][:location]
      @users = @users.where(location: @location)
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
