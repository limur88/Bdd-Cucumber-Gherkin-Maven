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

  Scenario: Login as patient using Selenium WebDriver methods
    Given AV launch "MedicenterV2"
    Then AV page title is "Medicenter"