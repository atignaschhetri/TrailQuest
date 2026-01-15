*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOC_FIRST_NAME}    xpath://input[@name="first_name"]
${LOC_LAST_NAME}     xpath://input[@name="last_name"]
${LOC_PHONE}         xpath://input[@name="phone"]
${LOC_EMAIL}         xpath://label[normalize-space(text())="Email address"]/following-sibling::input
${LOC_PASSWORD}      xpath://input[@name="password"]

*** Keywords ***
Click Login Button
    Click Element    xpath://a[@class="tq-nav-login-btn"]

Click SignUp For Free
    Click Element    xpath://a[@class="tq-link-accent"]

Enter Firstname
    [Arguments]    ${first_name}
    Wait Until Element Is Visible    ${LOC_FIRST_NAME}    15s
    Input Text    ${LOC_FIRST_NAME}    ${first_name}

Enter Lastname
    [Arguments]    ${last_name}
    Input Text    ${LOC_LAST_NAME}    ${last_name}

Enter Phone
    [Arguments]    ${phone}
    Input Text    ${LOC_PHONE}    ${phone}

Enter Email_Address
    [Arguments]    ${email}
    Input Text    ${LOC_EMAIL}    ${email}

Enter Password
    [Arguments]    ${password}
    Input Text    ${LOC_PASSWORD}    ${password}

Click CheckBox
    Wait Until Element Is Visible    xpath://label[@class="tq-checkbox"]    10s
    Scroll Element Into View         xpath://label[@class="tq-checkbox"]
    Click Element                    xpath://label[@class="tq-checkbox"]


Open Signup Page
    Open Browser    https://trailquest.global/register    chrome    options=add_argument("--headless=new")    options=add_argument("--window-size=1920,1080")
    Sleep    2s
