class ContactsController < ApplicationController
  def show
  end

  def index
  end

  def new
    @contact = Contact.new
    @requester = current_user
    @requestee = User.find(params[:user_id])
    # @contact.requestee = @requestee
    # requestee = params[:user]
    # @contact.requestee = requestee
    @contact.requester = @requester
    @contact.requestee = User.find(params[:user_id])
  end

  def create
    @contact = Contact.new(contact_params)
    @contact.requester = current_user
    @contact.requestee = User.find(params[:user_id])

    @contact.save

    if @contact.save
      redirect_to users_path
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
    params.require(:contact).permit(:requester, :requestee)
  end
end
