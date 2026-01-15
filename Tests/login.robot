*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Library    Collections
Resource   ../pages/login_page.robot
Resource   ../Resources/keyword/global_keyword.robot

Test Teardown    Capture Screenshot And Close Browser


*** Variables ***
${DATA_FILE}    ${CURDIR}/../Resources/data/data.json


*** Test Cases ***
Valid Login Test
    [Tags]    smoke    login    positive
    Open Website
    Open Login Page

    ${data}=       Load Json From File    ${DATA_FILE}
    ${valid}=      Get From Dictionary    ${data}    valid_login
    ${email}=      Get From Dictionary    ${valid}    email
    ${password}=   Get From Dictionary    ${valid}    password

    Enter Email        ${email}
    Enter Password     ${password}
    Click Signin Button


#Invalid Login Test
#    [Tags]    smoke    login    negative
#    ${data}=    Load Json From File    ${DATA_FILE}
#    ${invalid_logins}=    Get From Dictionary    ${data}    invalid_logins
#
#    FOR    ${item}    IN    @{data['invalid_logins']}
#        ${email}=      Get From Dictionary    ${item}    email
#        ${password}=   Get From Dictionary    ${item}    password
#        ${expected}=   Get From Dictionary    ${item}    expected_message
#        Open Website
#        Click Login Button
#        Enter Email        ${email}
#        Enter Password     ${password}
#        Click Signin Button
#
#        Wait Until Page Contains    ${expected}    10s
#
#    END
Invalid Login Test
    [Tags]    smoke    login    negative
    ${data}=    Load Json From File    ${DATA_FILE}
    ${invalid_logins}=    Get From Dictionary    ${data}    invalid_logins

    FOR    ${item}    IN    @{invalid_logins}
        ${email}=      Get From Dictionary    ${item}    email
        ${password}=   Get From Dictionary    ${item}    password
        ${expected}=   Get From Dictionary    ${item}    expected_message

#        global_keyword.
        Open website
        Open Login Page
        Enter Email        ${email}
        Enter Password     ${password}
        Click Signin Button

        # Force failure if message does not appear
        Wait Until Page Contains    ${expected}    10s
    END


