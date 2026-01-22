*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/keyword/global_keyword.robot
Resource    ../pages/homepage.robot


Test Teardown    Capture Screenshot And Close Browser


*** Test Cases ***
home page test
    Open Website
    Click On Logo
    Wait For Navbar
    Scroll To Top
    Verify All Navbar Items Are Clickable
    Verify Hero Section
    Verify Search Box Is Visible
    Verify User Can Type In Search Box
    Verify Search Results Appear
    Verify Search Icon Redirects To Results Page
#     Verify View All Blogs
   Verify Footer Visible







