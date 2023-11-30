*** Settings ***
Documentation  Looping in Robot Framework
Library  SeleniumLibrary
Library  Collections

*** Variables ***
#@{quickLaunchList}  Assign Leave  Leave List  Timesheets  Apply Leave  My Leave  My Timesheet
@{quickLaunchList}   Timesheets  My Timesheet

*** Test Cases ***
Verify that all the quick launch texts is same as our Text list
    [documentation]  This test case verifies that the quick launch texts from the webpage matches our Text list.
    [tags]  Smoke
    Open Browser  https://opensource-demo.orangehrmlive.com/  Chrome
    Sleep    5
    Maximize Browser Window
    Input Text  name:username  Admin
    Input Password  name:password  admin123
    Click Element  css:button[type='submit']
    Sleep    5
    @{elementList}=  Get WebElements  css:orangehrm-quick-launch-heading
    @{textList}=    Create List
    FOR  ${element}  IN  @{elementList}
         ${text}=  Get Text  ${element}
         Append To List  ${textList}  ${text}
    END
    Log To Console  \n List from WebPage:
    Log To Console  ${textList}
    Log To Console  Our List:
    Log To Console  ${quickLaunchList}
    Lists Should Be Equal  ${textList}  ${quickLaunchList}
    Close Browser

*** Keywords ***