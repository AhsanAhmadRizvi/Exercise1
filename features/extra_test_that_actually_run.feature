Feature: this test will verify register functionality

# using reusable common steps only
  Scenario Outline: register user with vaild information
    Given I am on "<page>" page
    When I enter "<text>" to "<textfield>" text field
    And I enter "<text>" to "<textfield>" text field
    And I enter "<text>" to "<textfield>" text field
    And I click on "<selector_text>" button using name
    Then I should see "<text>"
    Examples:
      | page                                            | text                       | textfield       | selector_text |
      | http://newtours.demoaut.com/mercuryregister.php | Thank you for registering. | confirmPassword | register      |



