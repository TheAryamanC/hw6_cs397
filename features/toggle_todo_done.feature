Feature: Toggle todo done status
  As a user
  I want to mark todos as done or not done
  So that I can track my task completion

  Background:
    Given I have a todo "Buy groceries"

  Scenario: Successfully toggle todo to done
    Given I am on the todos page
    When I click the "Mark done" button for "Buy groceries"
    Then I should see "Done: Yes"

  Scenario: Attempt to toggle non-existent todo
    When I try to update a non-existent todo
    Then I should see a not found error
