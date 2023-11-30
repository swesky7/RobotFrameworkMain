*** Settings ***
Documentation  File Upload Download in Robot Framework
Library  SeleniumLibrary
Library   OperatingSystem

*** Variables ***

*** Test Cases ***
Verify File Upload
    [documentation]  This test case verifies that a user can successfully upload a file
    [tags]  Regression
    Open Browser  https://the-internet.herokuapp.com/upload  Chrome
    Wait Until Element Is Visible  id:file-submit  timeout=5
    Choose File  id:file-upload  D:\\Training\\Robot-Framework-master\\Robot-Framework-master\\Resources\\Upload\\sunset.jpg
    Click Element  id:file-submit
    Element Text Should Be  tag:h3  File Uploaded!  timeout=5
    Element Text Should Be  id:uploaded-files  sunset.jpg  timeout=5
    Close Browser

Verify File Download
    [documentation]  This test case verifies that a user can successfully download a file
    [tags]  Regression
    ${chrome options}=  Evaluate  sys.modules['selenium.webdriver'].ChromeOptions()  sys, selenium.webdriver
    ${prefs}  Create Dictionary
    ...  download.default_directory=D:\\Training\\Robot-Framework-master\\Robot-Framework-master\\Resources\\Download
    Call Method  ${chrome options}  add_experimental_option  prefs  ${prefs}
    Open Browser  https://the-internet.herokuapp.com/download      chrome
    Click Link  css:[href="download/sunset.jpg"]
    Sleep  5s
    ${files}  List Files In Directory  D:\\Training\\Robot-Framework-master\\Robot-Framework-master\\Resources\\Download
    Length Should Be  ${files}  1
    Close Browser

*** Keywords ***