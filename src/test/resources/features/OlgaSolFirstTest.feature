# Author Olga Sol

  Feature: Beginning steps

    Scenario: Search Engine for https://www.wiki.com/

      Given I open url "https://www.wiki.com/"
      Then I should see page title as "Wiki.com"
      Then element with xpath "//input[@name='q']" should be present
      Then I type "QA" into element with xpath "//input[@name='q']"
      Then I click on element using JavaScript with xpath "//input[@type='submit']"
      Then element with xpath "//button[@id='proceed-button']" should be present
      And I click on element with xpath "//button[@id='proceed-button']"
      And I wait for 2 sec
      Then element with xpath "//input[@name='q']" should be present

    Scenario: Search Engine for https://gibiru.com/
      Given I open url "https://gibiru.com/"
      Then I should see page title contains "Gibiru – Protecting"
      Then element with xpath "//input[@id='q']" should be present
      Then I type "qa" into element with xpath "//input[@id='q']"
      Then I click on element using JavaScript with xpath "//header/div[1]/div[2]/form[1]/div[1]/div[1]/button[1]/i[1]"
      And I wait for 2 sec
      Then element with xpath "//input[@id='q']" should be present
      Then element with xpath "//input[@id='q']" should have attribute "value" as "qa"




