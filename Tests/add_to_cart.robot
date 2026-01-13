*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/keyword/global_keyword.robot
Resource    ../pages/add_to_cart.robot

Test Teardown    Capture Screenshot And Close Browser

*** Test Cases ***
add to cart
     [Tags]    smoke    login    positive
    Open Website
    Add To Cart
