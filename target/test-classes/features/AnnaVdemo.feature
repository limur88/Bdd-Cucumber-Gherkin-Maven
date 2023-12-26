#Author: Anna V
  Feature: Beginning steps

    Scenario: Search Engine for https://ekoru.org/
     Given I open url "https://ekoru.org/"
      Then I should see page title contains "Ekoru"
      Then element with xpath "//input[@id='fld_q']" should be present
      Then I type "Cucumber" into element with xpath "//input[@id='fld_q']"
      And I click on element with xpath "//div[@id='btn_search']"
      And I wait for 2 sec
      Then element with xpath "//input[@id='fld_q']" should be present
      Then element with xpath "//input[@id='fld_q']" should have attribute "value" as "Cucumber"

    Scenario: Search Engine for wiki.com
      Given I open url "https://www.wiki.com/"
      Then I should see page title contains "Wiki.com"
      Then I type "Wikipedia" into element with xpath "//input[@name='q']"
      And I click on element with xpath "//input[@value='Wiki Search']"
      Then I wait for 1 sec
      Then I wait for element with xpath "//h1[contains(text(),'The information you’re about to submit is not secure')]" to be present
      Then I should see page title as "Form is not secure"
      Then I click on element with xpath "//button[@id='proceed-button']"
      And I wait for 3 sec
      Then I should see page title contains "Wiki.com"
  #Then element with xpath "//div[@class='gs-title'][1]/a[@href='https://www.wikipedia.org/']" should be present
      Then I switch to iframe with xpath "//iframe[@name='googleSearchFrame']"
      Then element with xpath "//*[contains(text(),'Wikipedia')]" should contain text "Wikipedia"
#      Then I click on element with xpath "//div[@class='gs-title'][1]/a[@href='https://www.wikipedia.org/']/b"
