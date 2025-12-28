*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/forgetpassword_page.robot


*** Test Cases ***
Forget password
    [Tags]    smoke    login    positive
    Open Website
    Click Login Button
    Click Forget Button
#    Verify
