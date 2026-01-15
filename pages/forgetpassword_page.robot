*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://trailquest.global/

*** Keywords ***
Open website
    Open Browser    ${URL}    chrome
    Maximize Browser Window
    Sleep    3s

Click Login Button
    # Wait for login button to be visible and clickable
    Wait Until Element Is Visible    xpath://a[@class="tq-nav-login-btn"]    timeout=15s
    Wait Until Element Is Enabled    xpath://a[@class="tq-nav-login-btn"]    timeout=15s
    Scroll Element Into View         xpath://a[@class="tq-nav-login-btn"]
    Click Element                    xpath://a[@class="tq-nav-login-btn"]
    Sleep    2s


Click Forget Button
    # Wait until the element is visible
    Wait Until Element Is Visible    xpath://a[contains(@href,"forgot-password")]    timeout=10s
    # Wait until the element is enabled/clickable
    Wait Until Element Is Enabled    xpath://a[contains(@href,"forgot-password")]    timeout=10s
    # Scroll it into view (optional but safer)
    Scroll Element Into View         xpath://a[contains(@href,"forgot-password")]
    # Now click
    Click Element                    xpath://a[contains(@href,"forgot-password")]


#Verify
#    Wait Until Element Is Visible    https://trailquest.global/forgot-password    5s
#    Page Should Contain Link    https://trailquest.global/forgot-password


