Given /^the following contacts exist:$/ do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |attributes|
      Contact.create!(attributes)
  end
end

