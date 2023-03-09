*** Settings ***
Documentation  call funcrion from script
Variables  callFunctionRobot.py

*** Test Cases ***
BasicFunctionCall
    ${response}=    call method  ${cal}     simplecalculation   1
    should be equal as numbers  ${response}     2