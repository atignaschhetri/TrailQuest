*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/forgetpassword_page.robot



*** Test Cases ***
Forget password
    [Tags]    smoke    login    positive
    Open Website
    Wait Until Element Is Visible        15s
    Click Login Button
    Wait Until Element Is Visible        15s
    Click Forget Button
#    Verify
