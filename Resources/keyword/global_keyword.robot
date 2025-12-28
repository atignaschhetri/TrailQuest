*** Settings ***
Library    SeleniumLibrary
Library    String
Library    OperatingSystem
Library    BuiltIn


*** Keywords ***
Capture Screenshot And Close Browser
    [Documentation]    Capture screenshot only if test failed, then close browser.
    ${timestamp}=    Get Time    result_format=%Y%m%d_%H%M%S
    ${safe_name}=    Replace String    ${TEST NAME}    ${SPACE}    _
    ${screenshot_dir}=    Set Variable    C:\Users\Hp\PycharmProjects\Automation\Result\screenshots
    # Capture screenshot if test failed
    Run Keyword If    '${TEST STATUS}'=='FAIL'    Capture Page Screenshot    ${screenshot_dir}/${safe_name}.png
    # Close browser regardless of status
    Run Keyword And Ignore Error    Close Browser
