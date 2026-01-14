
*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Library    Collections
Resource   ../pages/signup_page.robot
Resource   ../Resources/keyword/global_keyword.robot

Test Teardown    Capture Screenshot And Close Browser

*** Variables ***
${DATA_FILE}    ${CURDIR}/../Resources/data/data.json

*** Test Cases ***
Multiple Valid Signup Test
    [Tags]    smoke    signup    positive
    
    ${data}=    Load Json From File    ${DATA_FILE}
    Log    ${data}
    
    ${valid_signups}=    Get From Dictionary    ${data}    valid_signups

    FOR    ${user}    IN    @{valid_signups}

        ${first_name}=      Get From Dictionary    ${user}    first_name
        ${last_name}=      Get From Dictionary    ${user}    last_name
        ${phone}=       Get From Dictionary    ${user}    phone
        ${email}=       Get From Dictionary    ${user}    email
        ${password}=    Get From Dictionary    ${user}    password

        Open Website
        Click Login Button
        Click SignUp For Free

        Enter Firstname       ${first_name}
        Enter Lastname        ${last_name}
        Enter Phone           ${phone}
        Enter Email_Address   ${email}
        Enter Password        ${password}
        Click CheckBox


    END