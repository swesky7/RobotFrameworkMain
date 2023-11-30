*** Variables ***
${name}  Sweta
${age}    4
@{NAMES}        Matti       Teppo
&{USER 1}       name=Matti    address=xxx         phone=123
${2}  2
${3}  3


*** Test Cases ***
Example
    Log    ${CURDIR}
    Log    ${TEMPDIR}
    Log    ${EXECDIR}
    
Variables Declaration
    Log    ${name}
    Log    ${age}
    Log    ${NAMES}
    Log    ${USER 1}

Item assignment to list
   ${list} =          Create List      one    two    three    four
   ${list}[0] =       Set Variable     first
   ${list}[${1}] =    Set Variable     second
   ${list}[2:3] =     Evaluate         ['third']
   ${list}[-1] =      Set Variable     last
   Log Many           @{list}

Dictionary Assignment
    &{dict} =    Create Dictionary    first=1    second=${2}    ${3}=third
    Length Should Be    ${dict}    3
    Log    ${dict.first}



