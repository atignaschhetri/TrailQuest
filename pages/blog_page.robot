*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${URL}    https://trailquest.global/page/homepage#
${VIEW_ALL_BLOGS}=    xpath=//a[contains(@href,'/custom/news')]  
${All_Button}    xpath=//a[normalize-space()='All' and contains(@href,'/custom/news')]
${Element}    xpath=//img[contains(@class,'news-card-img')]

                                      

*** Keywords ***
Scroll To Top
    Execute Javascript    window.scrollTo(0, 0)

Click on blog
    Scroll Element Into View    ${VIEW_ALL_BLOGS}
     Wait Until Element Is Visible    ${VIEW_ALL_BLOGS}    15s
    Click Element    ${VIEW_ALL_BLOGS}
     Wait Until Location Contains    https://trailquest.global/custom/news    15s
    Page Should Contain    Real Stories. Real Blogs    15s
    Execute Javascript    window.scrollTo(0, document.body.scrollHeight)
    Page Should Contain Element        xpath=//div[contains(@class,'footer')]


verify element are clickable
    Click Element    ${ALL_Button}
    Click Element    ${Element}
    Wait Until Location Contains    https://trailquest.global/news/revealed-the-significance-of-nutrition-for-making-high-altitude-trekking-trouble-free    20s
    Page Should Contain    REVEALED: The Role of Nutrition in Making High-Altitude Trekking Energy-packed    20s

    

