class ContactsController < ApplicationController
  #before_action :set_contact, only: [:show, :edit, :update, :destroy]
  layout "lightbox", :only => [ :message, :message_error ]

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # POST /contacts
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to root_path, notice: 'Contact was successfully created.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { redirect_to root_path, notice: 'Contact not created.' }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # GET /contacts/message
  def message
  end

  # GET /contacts/message-error
  def message_error
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :phone, :body)
    end
end
