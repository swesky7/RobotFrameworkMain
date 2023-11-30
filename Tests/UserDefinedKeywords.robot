*** Settings ***
Documentation  Login Functionality
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Verify Successful Login to OrangeHRM
    [documentation]  This test case verifies that the user is able to successfully log in to OrangeHRM
    [tags]  Smoke
    Start Test
    Login
    End Test

*** Keywords ***
Start Test
    Open Browser  https://opensource-demo.orangehrmlive.com/  Chrome
    Maximize Browser Window
Login
    Wait Until Element Is Visible  name:username  timeout=7
    Input Text  name:username  Admin
    Input Password  name:password  admin123
    Click Element  css:button[type='submit']
    Sleep    4
    Page Should Contain    Dashboard
End Test
    Close Browser



