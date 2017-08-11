Feature: Login to tesco

  Scenario: user login
    Given I am on home page
    When I login
    Then I should see the signout link