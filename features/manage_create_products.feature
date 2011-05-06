Feature: Manage create_products
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new create_product
    Given I am on the new create_product page
    And I press "Create"

  Scenario: Delete create_product
    Given the following create_products:
      ||
      ||
      ||
      ||
      ||
    When I delete the 3rd create_product
    Then I should see the following create_products:
      ||
      ||
      ||
      ||
