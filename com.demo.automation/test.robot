*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${url}  https://www.google.com/
${browser}  headlesschrome

*** Test Cases ***
FirstTestCase
    GoogleLandingPage

*** Keywords ***
GoogleLandingPage
    Open Browser    ${url}     ${browser}
    Maximize Browser Window
    Sleep   10
    Close Browser
