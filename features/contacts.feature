Feature: Contacts
  Scenario: Add A Contact
    Given I am on the home page
    Then I should see "Add a Contact"
    When I fill in "contact_name" with "Foo Barina"
    And I fill in "contact_email" with "foo@bar.com"
    And I press "+"
    Then I should see "contact saved"
    And I should be on the new contact page
    When I follow "Rolodex"
    Then I should be on the contacts page
    And I should see "Foo Barina"
  # Scenario: Editing contacts
    # Given there is a contact "Foo Barina" with email "foo@bar.com"
    # And I am on the contacts page
    # When I follow "edit" for "Foo Barina"
    # Then I should be on the edit contact page
    # When I fill in "contact_email" with "barina@test.com"
    # And I press "save"
    # Then I should be on the contacts page
    # And I should see "contact saved"

