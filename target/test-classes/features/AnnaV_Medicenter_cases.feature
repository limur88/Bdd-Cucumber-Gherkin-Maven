# Author: Anna Verkhovskaya
#Jira ID
@medicenter
Feature: MedicalCenter Test Scenarios

  @medicenter1
  Scenario: Login as patient
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
      # land on Login page
    And element with xpath "//a[contains(text(),'Back to home')]" should be present
      # use login credentials
    Then I type "kupvi@amoniteas.com" into element with xpath "//input[@id='email']"
    Then I type "123abc" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath " //h1[contains(text(),'Medical Center')]" to be present
      #verification that user's name exist on the page
    #Then I wait for 1 sec
    Then I wait for element with xpath "//h1[contains(text(),'kupvi amoniteas')]" to be present
    Then element with xpath "//h1[contains(text(),'kupvi amoniteas')]" should contain text "kupvi amoniteas"

  @medicenter2
  Scenario Outline: Login as patient Data driven scenario
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
    And element with xpath "//a[contains(text(),'Back to home')]" should be present
    Then I type <emailAddress> into element with xpath "//input[@id='email']"
    Then I type <password> into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath " //h1[contains(text(),'Medical Center')]" to be present
    Then I wait for element with xpath <xpath6> to be present
    Then element with xpath <xpath6> should contain text <userName>
    Examples:
      | emailAddress          | password    |   xpath6                                     | userName        |
      | "kupvi@amoniteas.com" |  "123abc" |   "//h1[contains(text(),'kupvi amoniteas')]" | "kupvi amoniteas" |
      | "patient1@gmail.com" |  "abc123" |   "//h1[contains(text(),'James Johnson')]" | "James Johnson" |
      | "patient2@gmail.com" |  "abc123" |   "//h1[contains(text(),'Ben Simpson')]" | "Ben Simpson" |
      | "kupvi@amoniteas.com" |  "incorrectpassword" |   "//h1[contains(text(),'kupvi amoniteas')]" | "kupvi amoniteas" |
      | "kupvi@amoniteas.com" |  "123abc" |   "//h1[contains(text(),'kupvi amoniteas')]" | "incorrect name" |


  @medicenter3
  Scenario: Make an appointment as patient and Delete an appointment
    Given I open url "https://medicenter-qa2.vercel.app/"
    Then I should see page title as "Medicenter"
    Then I click on element with xpath "//button[contains(text(),'Login')]"
    Then I wait for element with xpath "//a[contains(text(),'Back to home')]" to be present
      # land on Login page
    And element with xpath "//a[contains(text(),'Back to home')]" should be present
      # use login credentials
    Then I type "kupvi@amoniteas.com" into element with xpath "//input[@id='email']"
    Then I type "123abc" into element with xpath "//input[@id='password']"
    And I click on element with xpath "//button[contains(text(),'Sign in')]"
    Then I wait for element with xpath " //h1[contains(text(),'Medical Center')]" to be present
      #verification that user's name exist on the page
    #Then I wait for 1 sec
    Then I wait for element with xpath "//h1[contains(text(),'kupvi amoniteas')]" to be present
    Then element with xpath "//h1[contains(text(),'kupvi amoniteas')]" should contain text "kupvi amoniteas"
     #make an appointment
     Then I click on element with xpath "//button[contains(text(),'Make an appointment')]"

    Then I type "Doctor appointment Unique ID 1" into element with xpath " //textarea[@id='note']"
    Then I click on element with xpath "//select[@name='employee_id']"
    Then I wait for 1 sec
    Then I click on element with xpath "//select[@name='employee_id']/..//option[6]"
    And I type "09/08/2023" into element with xpath "//input[@id='date']"
    And I click on element with xpath "//button[contains(text(),'08:15 AM')]"
    Then I wait for 1 sec
    Then I click on element with xpath "//button[contains(text(),'Save')]"
    Then I wait for 10 sec

    


    


































