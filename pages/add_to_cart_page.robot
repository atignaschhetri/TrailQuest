*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://trailquest.global/

*** Keywords ***
Add To Cart
    Wait Until Element Is Visible    xpath://button[contains(@class,'cart-badge')]
    Scroll Element Into View         xpath://button[contains(@class,'cart-badge')]
    Wait Until Element Is Enabled    xpath://button[contains(@class,'cart-badge')]    20s
    Click Element                    xpath://button[contains(@class,'cart-badge')]


Treak and Tour
   Click Element    //a[.//span[normalize-space()='Treks & Tours']]
   Click Element    //a[normalize-space()='Push Your Limits']
   Scroll Element Into View    //button[contains(@class,'cart-badge')]
   Wait Until Element Is Visible    //button[contains(@class,'cart-badge')]    20s
   Click Element    //button[contains(@class,'cart-badge')]
