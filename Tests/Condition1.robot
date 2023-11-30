*** Settings ***
Documentation  Wikipedia Conditional Testing


*** Variables ***

${name}  Sweta

*** Test Cases ***
Test if else
    Run Keyword If    '${name}' == 'Sweta1'   Log To Console    Iam in IF Block
    ...     ELSE    Log To Console    Iam in ELSE Block

*** Keywords ***
