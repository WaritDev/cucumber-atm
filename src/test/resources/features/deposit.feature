Feature: deposit
  As a customer
  I want to deposit money to my account
  so that my balance increases

  Background:
    Given a customer with id 1 and pin 111 with balance 500.0 exists

  Scenario: Deposit a valid amount
    When I login to ATM with id 1 and pin 111
    And I deposit 300.0 to ATM
    Then my account balance is 800.0

  Scenario: Deposit an invalid (non-positive) amount is rejected
    When I login to ATM with id 1 and pin 111
    And I deposit invalid -50.0 to ATM
    Then my account balance is 500.0