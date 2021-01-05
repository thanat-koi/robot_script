*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Search for Product
    Go To  http://www.amazon.com
    Wait Until Page Contains  All
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  id=nav-search-submit-button

Select Product
    Click element  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[2]/div[1]/div/span/div/div/span/a/div/img
    Wait Until Page Contains  Back to results

Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

Begin Checkout
    Click Element  id=hlb-ptc-btn-native
    Wait Until Page Contains  Sign-In

