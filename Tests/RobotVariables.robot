*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#scalar variable
${url1}    https://www.google.com/
${url2}    https://opensource-demo.orangehrmlive.com
#List variable
@{InputsValue}    robot framework    Admin    admin123
#Dictionary variable
&{DictInputsValue}    username=admin    EmployeeName=admin123
#Environment variable
#%{path}
#%{os}
#Built-in variables
# https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html#built-in-variables

*** Test Cases ***
 
Launch Google.com
    Log    Test check
    Open Browser    ${url1}    gc
    Set Browser Implicit Wait    5  
    Maximize Browser Window
    Input Text    name=q    ${InputsValue}[0]    
    Sleep    1  
    Press Keys    name=q    ENTER 
    Sleep    2 
    Close Browser
    
Open Orange HRM demo page
    Open Browser    ${url2}    chrome
    Maximize Browser Window
    Sleep    3
    Title Should Be    OrangeHRM    
    Input Text    name=username    ${InputsValue}[1]  
    Sleep    1
    Input Password    name=password    ${InputsValue}[2]    
    Sleep    2          
    Click Button    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button    
    Sleep    5    
    Click Element    xpath=//*[@id="app"]/div[1]/div[1]/aside/nav/div[2]/ul/li[1]/a/span    
    Sleep    5    
    Input Text    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[1]/div/div[2]/input    ${DictInputsValue}[username]
    Input Text    xpath=//*[@id="app"]/div[1]/div[2]/div[2]/div/div[1]/div[2]/form/div[1]/div/div[3]/div/div[2]/div/div/input   ${DictInputsValue}[EmployeeName]     
    Sleep    10    
    Close Browser



