Feature: Adding food to our daily summary
  Scenario: Adding food to daily summary
    Given a user wants to add food to their daily summary
    When the user clicks add food
    Then the user is redirected to a page that allows them to input their food

  Scenario Outline: Adding food to different meals
    Given a user chooses to add calories to their daily summary
    When the user clicks the add food button under <link>
    Then they are taken to a new page prompting the user for their <food> choice
  Examples:
    |link | food |
    |0| Breakfast|
    |1| Lunch    |
    |2| Dinner   |
    |3| Snacks   |

  Scenario: Adding food
    Given a user is adding breakfast food to their daily summary
    When the user enters a real food "Cinnamon Roll"
    Then they are given results about "Cinnamon Roll"

  Scenario: Food number name search
    Given a user is adding food to their daily summary
    When the user enters a number into the food search
    Then they get results including the number

  Scenario Outline: Special character search
    Given a user is adding into their daily summary
    When the user inputs a special character <spcl> into the food search
    Then they are presented with a message displaying that there are no results found
  Examples:
    |spcl|
    |!   |
    |@   |
    |#   |
    |$   |
    |%   |

  Scenario: Searching for nutritional facts
    Given a user is adding “milk” to their daily food summary
    When they input ‘milk’ in the food search
    And choose the best fitting result (first result in this test)
    Then the food is presented at the right with a link to the nutritional facts

  Scenario: Actually adding food to your summary
    Given a user is adding milk to their food summary
    When the user selects the appropriate item and amount
    Then it is added to the selected meal of the day

  Scenario: Adjusting servings
    Given a user adds food to the summary
    When a serving amount is selected
    Then the selected serving amount is appropriately added

  Scenario: Changing the meal type after initial selection
    Given a user is adding food to their summary
    And they select the appropriate food (appropriate with what they entered)
    When the user originally chose one meal of the day
    And they select a different meal when asked
    Then the food is added to the selected meal rather than the initial choice



