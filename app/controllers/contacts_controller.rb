class ContactsController < ApplicationController
  def show
  end

  def index
    @user = current_user
    @open_requests_sent = Contact.where(requester: @user, accepted: false)
    @open_requests_received = Contact.where(requestee: @user, accepted: false)
    @contacts = Contact.where(["requester_id = ? or requestee_id = ?", @user.id, @user.id])
    @contacts = @contacts.where(accepted: true)
  end

  def new
    @contact = Contact.new
    @requester = current_user
    @requestee = User.find(params[:user_id])
    @contact.requester = @requester
    @contact.requestee = User.find(params[:user_id])
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.requester = current_user
    @contact.requestee = User.find(params[:user_id])
    @contact.accepted = false

    @contact.save
    @requestee = @contact.requestee

    if @contact.save
      redirect_to user_path(@requestee)
    else
      redirect_to new_contact_path(@contact)
    end
  end


  def update
  end

  def edit
  end

  def destroy
  end


  private

  def contact_params
    params.require(:contact).permit(:requester, :requestee, :accepted, :invite_message)
  end
end
