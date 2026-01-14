*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://trailquest.global/

*** Keywords ***
Add To Cart
    Wait Until Element Is Visible    xpath://button[contains(@class,'cart-badge')]    15s
    Scroll Element Into View         xpath://button[contains(@class,'cart-badge')]
    Wait Until Element Is Enabled    xpath://button[contains(@class,'cart-badge')]    20s
    Click Element                    xpath://button[contains(@class,'cart-badge')]
