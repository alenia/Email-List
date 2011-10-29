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
      before do
        post :create, :contact => {:name => "Foo Barina", :email => "foo@bar.com"}
      end
      it "creates a contact" do
        Contact.where(:name => "Foo Barina", :email => "foo@bar.com").count.should == 1
      end
      it "sets a notice" do
        flash[:notice].should_not be_nil
      end
      it "redirects to new" do
        response.should redirect_to new_contact_path
      end
    end
  end
end
