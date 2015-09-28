Feature: Doing a Google Search
  Scenario Outline: Searching for Zoo Animals
    Given A user goes to Google to Search for Zoo Animals
    When the user inputs the name of the zoo <animal>
    Then the user is shown results for <zoo> animals
    Examples:
    | animal | zoo |
    | Zebra  | Zebra |
    | Elephant | Elephant|
    | Gorilla | Gorilla |
    | Tiger | Tiger |
