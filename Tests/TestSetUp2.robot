*** Settings ***
Library     SeleniumLibrary
Test Setup    Launch
Test Teardown  Close Browser

*** Test Cases ***
Check Teardown
     Page Should Contain    Search

*** Keywords ***
Launch
      Open Browser   https://www.google.com/  chrome
