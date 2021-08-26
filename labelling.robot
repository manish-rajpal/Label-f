*** Settings ***
Documentation                Testar Selenium och RobotFramework (Selenium Tests & Robot Framework)
Resource                     ../Resources/keywords_general.robot
Library                      SeleniumLibrary
Test Setup                   Begin Web Test
Test Teardown                End Web Test
*** Test Cases ***
Test to log into app.lablef.ai
Test to Upload a Dataset
  [Documentation]    Test to check if the Dataset is uploaded successfully
  [Tags]             JiraTag
# JiraTag = etc
  Go to Web Page
  Given that user enters a valid username and password
  When user presses LOGIN
  Then user should be logged in
#__________________________________________________
Test to Upload a Dataset


Test to Set a Task Question

Test to Setup First 2 labels

Test to Setup Remaining set of Labels

Test to Train the System

Test to Label 500 E-Tickets

