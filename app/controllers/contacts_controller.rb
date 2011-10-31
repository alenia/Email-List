class ContactsController < ApplicationController
  def new; end
  def create
    contact = Contact.create(params[:contact])
    if contact.save
      flash[:notice] = "contact saved"
    else
      error_string = contact.errors.map do |field, error|
        field.to_s.gsub('_',' ') + ' ' + error + '.'
      end.join('<br/>')
      flash[:error] = "#{error_string}".html_safe
        
    end
    redirect_to new_contact_path
  end
  def index
    @contacts = Contact.all
  end
end
