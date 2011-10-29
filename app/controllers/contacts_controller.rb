class ContactsController < ApplicationController
  def new
    
  end
  def create
    contact = Contact.create(params[:contact])
    redirect_to new_contact_path, :notice => "contact saved"
  end
end
