require 'spec_helper'

describe Contact do
  describe "validations" do
    describe "email" do
      it "must be an email" do
        contact = Contact.new(:name => "Foo Barina")
        contact.email = nil;
        contact.should_not be_valid
        contact.should have(2).errors_on(:email)
        contact.email = "bar"
        contact.should_not be_valid
        contact.should have(1).error_on(:email)
        contact.email = "foo@bar.cx"
        contact.should be_valid
      end
    end
  end
end
