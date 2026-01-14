*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://trailquest.global/

*** Keywords ***
Open website
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Click login Button
    Wait Until Element Is Visible    xpath://a[@class="tq-nav-login-btn"]    15s
    Click Element    xpath://a[@class="tq-nav-login-btn"]
    
Click Forget Button
    Click Element    xpath://a[contains(@href,"forgot-password")]
   
#Verify
#    Wait Until Element Is Visible    https://trailquest.global/forgot-password    5s
#    Page Should Contain Link    https://trailquest.global/forgot-password


