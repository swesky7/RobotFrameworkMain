*** Settings ***
Library   SeleniumLibrary


*** Variables ***
${Error_Message_Login}      css:.alert-danger

${user_name}             rahulshettyacademy
${invalid_password}      123445
${valid_password}        learning
${url}                   https://rahulshettyacademy.com/loginpagePractise/
${browser_name}          chrome



*** Test Cases ***
Validate UnSuccesful Login
    [Tags]      SMOKE
    open the browser with the Mortgage payment url
    Fill the login Form     ${user_name}    ${invalid_password}
    wait until Element is located in the page     ${Error_Message_Login}
    verify error message is correct

Validate Succesful Login
    [Tags]      SMOKE
    open the browser with the Mortgage payment url
    Fill the login Form     ${user_name}    ${valid_password}
    Page Should Contain    Dashboard
    Close Browser


*** Keywords ***
open the browser with the Mortgage payment url
    #Create Webdriver    Chrome  executable_path=/Users/rahulshetty/Documents/chromedriver
    Open Browser   ${url}     ${browser_name}


Fill the login Form
    [arguments]     ${username}     ${password}
    Input Text          id:username     ${username}
    Input Password      id:password     ${password}
    Click Button        signInBtn


wait until Element is located in the page
    [arguments]     ${element}
    Wait Until Element Is Visible       ${element}


verify error message is correct
   ${result}=   Get Text    ${Error_Message_Login}
   Should Be Equal As Strings     ${result}     Incorrect username/password.
   Element Text Should Be       ${Error_Message_Login}      Incorrect username/password.