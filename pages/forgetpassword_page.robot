*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://trailquest.global/


*** Keywords ***
Open Website
    Open Browser    ${URL}    chrome    options=add_argument(--window-size=1920,1080)
    Wait Until Page Contains Element    xpath://body    20s

Click Login Button
    Wait Until Page Contains Element    xpath://a[contains(@class,'tq-nav-login-btn')]    20s
    Scroll Element Into View            xpath://a[contains(@class,'tq-nav-login-btn')]
    Wait Until Element Is Visible       xpath://a[contains(@class,'tq-nav-login-btn')]    20s
    Click Element                       xpath://a[contains(@class,'tq-nav-login-btn')]

Click Forget Password Button
    Wait Until Page Contains Element    xpath://a[contains(@href,'forgot-password')]    20s
    Scroll Element Into View            xpath://a[contains(@href,'forgot-password')]
    Click Element                       xpath://a[contains(@href,'forgot-password')]

Add To Cart
    Wait Until Page Contains Element    xpath://button[contains(@class,'cart-badge')]    20s
    Scroll Element Into View            xpath://button[contains(@class,'cart-badge')]
    Wait Until Element Is Visible       xpath://button[contains(@class,'cart-badge')]    20s
    Wait Until Element Is Enabled       xpath://button[contains(@class,'cart-badge')]    20s
    Click Element                       xpath://button[contains(@class,'cart-badge')]

Close Website
    Close Browser
