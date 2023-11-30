*** Settings ***
Library    SeleniumLibrary

Suite Setup    Log    Run this before the suite.
Suite Teardown    Log    Run this after the suite    
Test Setup    Log    Run this before every test case    
Test Teardown    Log    Run this after every test case      
Default Tags    Regression

*** Variables ***
#scalar variable
${url1}    https://opensource-demo.orangehrmlive.com
#List variable
@{InputsValue}    robot framework    Admin    admin123
#Dictionary variable
&{DictInputsValue}    username=admin    EmployeeName=lisa
#Environment variable
# %{username}
# %{os}
#Built-in variables
# https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#built-in-variables


*** Test Cases ***

Open Orange HRM demo page
    Open Browser    ${url1}    chrome
    Maximize Browser Window
    Sleep    3
    Title Should Be    OrangeHRM    
    Login to the Orange HRM  
    Sleep    5    
    
Navigate to Admin page
    Click Element    xpath=//*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a/span    
    Sleep    5    
    Input Text    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input    ${DictInputsValue}[username]
    Input Text    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div/input   ${DictInputsValue}[EmployeeName]     
    Sleep    10  
    Close Browser
    
TestCase3
    [Tags]    SmokeTest
    Log    This is the 3rd Test case    
    
TestCase4
    [Tags]    p1
    Log    This is the 4th Test case 
    
TestCase5
    [Tags]    p0
    Log    This is the 5th Test case 
 
TestCase6
    [Tags]    p0
    Log    This is the 6th Test case 
    
*** Keywords ***
#User define keywords
Login to the Orange HRM
    Input Text    name=username    ${InputsValue}[1]  
    Sleep    1
    Input Password    name=password    ${InputsValue}[2]    
    Sleep    2          
    Click Button    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button  

