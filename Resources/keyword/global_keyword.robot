*** Settings ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem
Library    BuiltIn




*** Variables ***
${URL}    https://trailquest.global/
${SCREENSHOT_PATH}    C:/Users/Hp/PycharmProjects/Automation/Result/screenshots

*** Keywords ***
Open Website
    Open Browser    ${URL}    chrome
    Maximize Browser Window

Capture Screenshot And Close Browser
    [Documentation]    Capture screenshot only if test failed, then close browser.
    ${safe_name}=       Replace String    ${TEST NAME}    ${SPACE}    _
    ${screenshot_dir}=     Set Variable    ${SCREENSHOT_PATH}
    Create Directory     ${screenshot_dir}
    Run Keyword If Test Failed    Capture Page Screenshot    ${screenshot_dir}/${safe_name}.png
    Close Browser
