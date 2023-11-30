*** Settings ***
Documentation   DemoTest for Robotframeowrk
Library        SeleniumLibrary


*** Variables ***
${username}   Admin
${pass}       admin123

*** Test Cases ***
Launch Google test
      Open Browser   https://www.google.com/  Firefox
      Maximize Browser Window
      Sleep    2

Verify if user is able to login to HRM app
        Open Browser  https://opensource-demo.orangehrmlive.com/web/index.php/auth/login   chrome
        Sleep    3
        Input Text    name:username    ${username}
        Input Password    name:password    ${pass}
        Click Element    css:button[type='submit']
        Sleep    3
        Page Should Contain    Dashboard
        Close Browser
