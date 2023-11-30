*** Settings ***
Documentation   To validate the Datadriven
Test Template   Login With Credentials
Library     SeleniumLibrary

*** Variables ***
${username}
${password}

*** Test Cases ***
Login Test
     [Template]     Login With Credentials
     ${username}    ${password}
      Admin          admin123
      user2          pass456
*** Keywords ***
Login With Credentials
                [Arguments]     ${username}    ${password}
                Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login     chrome
                Sleep    5
                Input Text      name:username     ${username}
                Input Text      name:password     ${password}
                Sleep    3
                Click Button    css:button[type='submit']
                Close Browser