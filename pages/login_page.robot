*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://trailquest.global/
${EMAIL_FIELD}    xpath://input[@required and @name="email"]     
${PASSWORD_FIELD}    xpath://input[@required and @name="password"]



*** Keywords ***
Open website
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    
Click login Button
    Click Element    xpath://a[@class="tq-nav-login-btn"]    
    
Enter Email
    [Arguments]    ${email} 
    Wait Until Element Is Visible    ${EMAIL_FIELD}    5s
    Input Text    ${EMAIL_FIELD}    ${email}
    
Enter Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD_FIELD}    ${password}
    
Click Signin Button
    Click Button    //button[@class="tq-btn-primary form-submit"]
    
    
