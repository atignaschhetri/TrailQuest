*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://trailquest.global/

*** Keywords ***
Open website
    Open Browser    ${URL}    chrome    options=add_argument("--headless=new")    options=add_argument("--window-size=1920,1080")
    Maximize Browser Window
    Sleep    3s

    Capture Page Screenshot    path=Result/ci_debug_screenshot.png

Click Login Button
    Wait Until Element Is Visible    xpath://a[contains(@class,"tq-nav-login-btn")]    timeout=30s
    Wait Until Element Is Enabled    xpath://a[contains(@class,"tq-nav-login-btn")]    timeout=30s
    Scroll Element Into View         xpath://a[contains(@class,"tq-nav-login-btn")]
    Click Element                    xpath://a[contains(@class,"tq-nav-login-btn")]
    Sleep    2s

Click Forget Button
    Wait Until Element Is Visible    xpath://a[contains(@href,"forgot-password")]    timeout=20s
    Wait Until Element Is Enabled    xpath://a[contains(@href,"forgot-password")]    timeout=20s
    Scroll Element Into View         xpath://a[contains(@href,"forgot-password")]
    Click Element                    xpath://a[contains(@href,"forgot-password")]

