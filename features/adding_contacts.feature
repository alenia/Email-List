Feature: Adding Contacts
  Scenario: Add A Contact
    Given I am on the home page
    Then I should see "Add a Contact"
    When I fill in "name" with "Foo Barina"
    And I fill in "email" with "foo@bar.com"
    Then I should see "contact saved"
    And I should be on the home page
