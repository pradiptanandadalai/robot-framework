*** Settings ***

Library  SeleniumLibrary

*** Variables ***
${url}  https://www.google.com/
${browser}  headlesschrome
${input_filed_search}   xpath:/html/body/div[1]/div[3]/form/div[1]/div[1]/div[1]/div/div[2]/input
${child_input_field_search}     xpath://*[@id="tsf"]/div[1]/div[1]/div[2]/div/div[2]/input
*** Test Cases ***
InputTest
    GoogleLandingPage
    input text  ${input_filed_search}   facebook
    Sleep   2
    Press Keys  ${input_filed_search}   ENTER
    Sleep   5
    clear element text  ${child_input_field_search}
    Sleep   5
    input text  ${child_input_field_search}     IFBB
    Sleep   5
    Press Keys  ${child_input_field_search}   ENTER
    Sleep   10
    Close Window


*** Keywords ***
GoogleLandingPage
    Open Browser    ${url}     ${browser}   headlesschrome
    Maximize Browser Window
    Sleep   5