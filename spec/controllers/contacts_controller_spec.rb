require 'spec_helper'

describe ContactsController do
  describe "new" do
    it "is successful" do
      get :new
      response.should be_success
    end
  end
  describe "create" do
    context "with a name and email" do
      let(:contact_info_hash) { 
        {:name => "Foo Barina", :email => "foo@bar.com"}
      }
      before do
        post :create, :contact => contact_info_hash
      end
      it "creates a contact" do
        Contact.where(contact_info_hash).count.should == 1
      end
      it "sets a notice" do
        flash[:notice ].should_not be_nil
      end
      it "redirects to new" do
        response.should redirect_to new_contact_path
      end
    end
  end
  describe "index" do
    before do
      @contact = Contact.create!(:name => "Foo Barina", :email => "foo@bar.com")
      get :index
    end
    it "is successful" do
      response.should be_success
    end
    it "assigns contacts" do
      assigns(:contacts).should include(@contact)
    end
  end
end
