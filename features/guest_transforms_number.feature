Feature: Guest transforms number
  In order to know how to write a number in English
  As a guest
  I must fill the form

  Scenario:
    Given I am on the root page
    When I fill the form with some numerical value
    Then I should see it written in English
