*** Settings ***
Documentation                Testar Selenium och RobotFramework
Resource                     ../Resources/keywords_general.robot
Resource                     ../Resources/keywords.robot
Library                      SeleniumLibrary
Suite Setup                   Begin Web Test
Suite Teardown                End Web Test
*** Test Cases ***
Test to log into app.lablef
  #[Documentation]    Test to verify the login-page works
  #[Tags]             JiraTag
# JiraTag = LG3-21 etc
  Go to Web Page
  Given that user enters a valid username and password
  When user presses LOGIN
  Then user should be logged in
  Test to upload the Ebike dataset
   [Documentation]    Test to upload the Ebike dataset
  [Tags]              Update Ebike
# JiraTag = LG3-21 etc
  Given that  the user on the home page
  When user clicks on the Add a dataset button
    Click Element        //*[@id="app"]/div[7]/div[1]/main/div/div/div[1]/a/div
    Wait Until Page Contains       Setup
    Page Should Contain            Setup
    Click Element        //*[@id="app"]/div[3]/div/div/div[2]/div/div/div[1]/div/div[2]/button/div
    Wait Until Page Contains       a csv file
    Page Should Contain            a csv file

  And user select and upload the CSV file
  And enter name and description of dataset
  Then user should able to see the uploaded dataset

