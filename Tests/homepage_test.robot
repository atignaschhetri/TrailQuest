*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Verify Footer Links Redirect Correctly
    Open Browser    https://trailquest.global/page/homepage    chrome
    Maximize Browser Window
    Scroll Element Into View    css:footer
    Click Link    xpath=//footer//a[contains(text(),'About Us')]
    Location Should Contain    about
    Close Browser
