*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***

Hello Robot Framework
    Log    Hello Robot Framework   
    
Launch Browser
    Log    Test check   
    #Create Webdriver    chrome    executable_path=\\  
    Open Browser    https://www.google.com/    gc
    Set Browser Implicit Wait    5  
    Maximize Browser Window
    Input Text    name=q    robot framework    
    Sleep    1  
    Press Keys    name=q    ENTER 
    Sleep    2 
    #Click Button    name=btnK
    #Sleep    5     
    #Close Browser
    
Click robot framework link
    Click Link    https://robotframework.org/    
    Sleep    2    
    Click Button    name=go-to-Resources
    Sleep    3    
    Click Link    https://github.com/robotframework/SeleniumLibrary/    
    Sleep    15    
    Close Browser
    
Open Orange HRM demo page
    Open Browser    https://opensource-demo.orangehrmlive.com    chrome
    Maximize Browser Window
    Sleep    5    
    Close Browser
