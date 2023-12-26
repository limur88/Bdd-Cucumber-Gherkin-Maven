#Author Hanna Voronova
#Jira task 654
@medicenter

Feature: Medicenter test scenarios

@medicenter1
    Scenario: Log in as patient with valid credentials
      Given I open url "https://medicenter-qa2.vercel.app/"
      Then I should see page title as "Medicenter"
      Then I click on element with xpath "//button[contains(text(),'Login')]"
      Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
      And element with xpath "//a[contains(text(),'Back to home')]" should be displayed
      Then I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
      Then I type "abc123" into element with xpath "//input[@id='password']"
      Then I click on element with xpath "//button[contains(text(),'Sign in')]"
      Then I wait for 2 sec
      Then element with xpath "//h1[contains(text(), 'James Johnson')]" should contain text 'James Johnson'


@medicenter2
Scenario: Log in with invalid credentials
  Given I open url "https://medicenter-qa2.vercel.app/"
  Then I should see page title as "Medicenter"
  Then I click on element with xpath "//button[contains(text(),'Login')]"
  Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
  And element with xpath "//a[contains(text(),'Back to home')]" should be displayed
  Then I type "patient1@gmail.com" into element with xpath "//input[@id='email']"
  Then I type "abcl23" into element with xpath "//input[@id='password']"
  Then I click on element with xpath "//button[contains(text(),'Sign in')]"
  And I wait for 5 sec
  Then element with xpath "//span[contains(text(),'Invalid login credentials')]" should be present

  @medicenter3
  Scenario Outline: Log in with invalid credentials
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    Then element with xpath "//a[contains(text(),'Back to home')]"should be displayed
    Then I type "email" into element with xpath "//input[@id='email']"
    Then I type "password" into element with xpath "//input[@id='password']"
    Then I click on element with xpath "//button[contains(text(),'Sign in')]"
    And I wait for 5 sec
    Then element with xpath //span[contains(text(),'Invalid login credentials')]" should be present
    Then I click on element with xpath "//span[contains(text(),'logout')]"
    Examples:
      | "email"              | "password"  |
      | "patient1@gmail.com" | "abc123"    |
      | "patient@gmail.com" | "abc123"    |
      | "patient1gmail.com" | "abcl23"    |
      | "patient1@gmail.com" | "abC123"    |
      | "patient1@gmail.com" | "abc123!"    |