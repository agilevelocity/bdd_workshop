Feature: Fixed amount withdrawal
    As a bank customer
    I want to withdraw a fixed amount from my account
    So that I can get cash quickly when using the ATM

  Scenario: Customer withraws a fixed amount
    Given I have $1000 in my account
    When I withraw a fixed amount of $200
    Then my account balance is $800

  Scenario: Attempted withdrawl greater than balance
    Given I have $200 in my account
    When I withdraw a fixed amount of $300
    Then I am told "Insufficient funds to withdraw this amount"
    And My original balance is unchanged

