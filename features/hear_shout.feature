Feature: Hear Shout

  Shouts have a range of approximately 1000m

  Scenario: Hear in-range shouts
    Given Lucy is at 0, 0
    And Sean is at 0, 900
    When Sean shouts
    Then Lucy should hear Sean
    
  Scenario: Not hear out-of-range shouts
    Given Lucy is at 0, 0
    And Sean is at 800, 800
    When Sean shouts
    Then Lucy should hear nothing

  Scenario Outline: Only hear in-range shouts
    Given Lucy is at 0, 0
    And Sean is at <Seans-location>
    When Sean shouts
    Then Lucy should hear <what-Lucy-hears>
    
    Examples: some simple examples
    | Seans-location | what-Lucy-hears |
    | 0, 900         | Sean            |
    | 800, 800       | nothing         |
    














  # Scenario: Multiple shouters
  #   # data table
  #   Given people are located at
  #   | name  | x    | y   |
  #   | Lucy  | 0    | 0   |
  #   | Sean  | 0    | 500 |
  #   | Oscar | 1100 | 0   |

  #   When Sean shouts
  #   And Oscar shouts
  #   Then Lucy should not hear Oscar
  #   But Lucy should hear Sean
    
  # Scenario: Multiple shouts from one person
  #   Given people are located at
  #   | name | x | y   |
  #   | Lucy | 0 | 0   |
  #   | Sean | 0 | 500 |
   
  #   When Sean shouts
  #   And Sean shouts
  #   Then Lucy should hear 2 shouts from Sean
    
    
  # Scenario: Shouters should not hear their own shouts
  #   Given Lucy has an account
  #   When Lucy shouts
  #   Then Lucy should not hear Lucy