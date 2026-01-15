*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}    https://trailquest.global/

*** Keywords ***
Open website
    Open Browser    ${URL}    chrome    options=add_argument("--headless=new")    options=add_argument("--window-size=1920,1080")
    Sleep    3s
    Capture Page Screenshot    path=Result/ci_debug_screenshot.png

Click Login Button
    Wait Until Page Contains Element    xpath://a[contains(@class,"tq-nav-login-btn")]    30s
    Execute Javascript    document.querySelector('a.tq-nav-login-btn').click()
    Sleep    2s

Click Forget Button
    Wait Until Page Contains Element    xpath://a[contains(@href,"forgot-password")]    20s
    Click Element    xpath://a[contains(@href,"forgot-password")]
