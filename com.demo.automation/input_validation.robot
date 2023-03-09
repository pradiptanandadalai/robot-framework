*** Settings ***

Library  SeleniumLibrary


*** Variables ***
${url}  https://www.google.com/
${browser}  headlesschrome
${title_details}    Google
*** Test Cases ***
FirstTestCase
    GoogleLandingPage

*** Keywords ***
GoogleLandingPage
    Open Browser    ${url}     ${browser}
    Maximize Browser Window
    Sleep   10
    title should be     ${title_details}
    sleep   10
    close window