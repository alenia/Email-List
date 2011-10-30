Feature: Contacts
  Scenario: Add A Contact
    Given I am on the home page
    Then I should see "Add a Contact"
    When I fill in "contact_name" with "Foo Barina"
    And I fill in "contact_email" with "foo@bar.com"
    And I press "+"
    Then I should see "contact saved"
    And I should be on the new contact page
  Scenario: Editing contacts
    Given I am on the home page
    And the following contacts exist:
      | name        | email         |
      | Foo Barina  | foo@bar.com   |
      | Joe Schmo   | w00t@test.net |
    When I follow "Rolodex"
    Then I should be on the contacts page
    And I should see "Foo Barina"
    And I should see "Joe Schmo"

