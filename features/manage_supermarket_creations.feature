Feature: Manage supermarket_creations
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new supermarket_creation
    Given I am on the new supermarket_creation page
    And I press "Create"

  Scenario: Delete supermarket_creation
    Given the following supermarket_creations:
      ||
      ||
      ||
      ||
      ||
    When I delete the 3rd supermarket_creation
    Then I should see the following supermarket_creations:
      ||
      ||
      ||
      ||
