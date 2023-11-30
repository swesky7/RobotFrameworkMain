*** Settings ***
Documentation  To Validate the login form
Library    SeleniumLibrary
#Resource

*** Test Cases ***
Validate UnSuccessful Login
     open the browser with the Mortgage payment URL
     Fill the login form
     wait untill it checks and display error message
     verify error message is correct

*** Keywords ***
open the browser with the Mortgage payment URL
   Open Browser    https://practicetestautomation.com/practice-test-login/      chrome

Fill the login form
   Input Text           id:username       Sweta
   Input Password       id:password        abcd123
   Click Button         submit

wait untill it checks and display error message
    Wait Until Element Is Visible    id:error

verify error message is correct
   ${result}=  Get Text    id:error
   Should Be Equal As Strings    ${result}    Your username is invalid!








