*** Settings ***
Library    SeleniumLibrary
Resource    ../pages/blog_page.robot
Resource    ../Resources/keyword/global_keyword.robot



*** Test Cases ***
Blog
    Open Website
    Scroll To Top
    Click On Blog
   Verify Element Are Clickable
