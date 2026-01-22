*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://trailquest.global/page/homepage#
${LOGO}    //a[@class=" header-logo mr-20"]
${NAVBAR}     xpath=//header
${SEARCH_BOX}    xpath=//input[contains(@class,'advanced-search-input')]
${SEARCH_RESULTS}    xpath=//div[contains(@class,'advanced-search-results')]
${FIRST_RESULT}    xpath=(//div[contains(@class,'advanced-search-results')]//a)[1]
${VIEW_ALL_BLOGS}=    xpath=//a[contains(@href,'/custom/news')]




*** Keywords ***
Click on logo
    Click Element    ${LOGO}
     Location Should Be    ${URL}
    
Wait For Navbar
    Wait Until Element Is Visible    ${NAVBAR}    15s

Scroll To Top
    Execute Javascript    window.scrollTo(0, 0)

Verify All Navbar Items Are Clickable
    Scroll To Top

    @{navbar_links}=    Create List
    ...    xpath=//header//a[normalize-space()='Home']
    ...    xpath=//header//a[normalize-space()='Treks & Tours']
    ...    xpath=//header//a[normalize-space()='About']
    ...    xpath=//header//a[normalize-space()='FAQs']
    ...    xpath=//header//a[normalize-space()='Contact']
    ...    xpath=//header//a[contains(@class,'tq-nav-login-btn')]

    FOR    ${link}    IN    @{navbar_links}
        Wait Until Element Is Visible    ${link}    10s
        Element Should Be Enabled        ${link}
    END
Verify Hero Section
    Page Should Contain    Find Your Alignment
    Page Should Contain    Treks, Tours, & Experiences


Verify Search Box Is Visible
    Wait Until Element Is Visible    ${SEARCH_BOX}    15s
    Element Should Be Enabled        ${SEARCH_BOX}

Verify User Can Type In Search Box
    Input Text    ${SEARCH_BOX}    Everest
    ${value}=    Get Value    ${SEARCH_BOX}
    Should Be Equal    ${value}    Everest

Verify Search Results Appear
    Input Text    ${SEARCH_BOX}    Everest
    Wait Until Element Is Visible    ${SEARCH_RESULTS}    10s



Verify Search Icon Redirects To Results Page
    Wait Until Element Is Visible
    ...    xpath=//input[contains(@class,'advanced-search-input')]
    ...    15s

    Input Text
    ...    xpath=//input[contains(@class,'advanced-search-input')]
    ...    Everest

    Click Element
    ...    xpath=//form[contains(@action,'/tour')]//button[@type='submit']

    Wait Until Location Contains    /tour    15s
    Page Should Contain    Everest


Verify Footer Visible
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Page Should Contain Element    xpath=//div[contains(@class,'footer')]





















