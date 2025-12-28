*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/login_page.robot



*** Test Cases ***
Valid Login Test 
    [Tags]    smoke    login    positive
    Open Website
    Click Login Button
    Enter Email    ram@gmail.com
    Enter Password     !@#$%12345asdfgASDFG
    Click Signin Button