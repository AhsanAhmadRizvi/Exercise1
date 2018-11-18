Feature:
  verify the right count of values appear on the screen
  verify the values on the screen are greater than 0
  verify the total balance is correct based on the values listed on the screen
  verify the values are formatted as currencies
  verify the total balance matches the sum of the values


  Scenario: Verify values in page for exercise 1
    Given I am on exercise values page
    Then I verify the right count of values appear on the screen
    And I enter "122365.24" amount to value one
    And I enter "599.00" amount to value two
    And I enter "850139.99" amount to value three
    And I enter "23329.50" amount to value four
    And I enter "566.27" amount to value five
    Then I verify the values on the screen are greater than 0
    Then I verify the values are formatted as currencies
    Then I verify the total balance matches the sum of the values











