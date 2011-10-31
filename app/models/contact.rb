class Contact < ActiveRecord::Base
  validates :email, :presence => true, :format => { :with => /^[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,4}$/i }
end
