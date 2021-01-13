*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
Search for Product
    Go To  ${URL}
    Wait Until Page Contains  All
    Input Text  id=twotabsearchtextbox   ${SEARCH}
    Click Button  id=nav-search-submit-button

Select Product
    Click element  xpath=//div[@class='a-section aok-relative s-image-square-aspect']/img
    Wait Until Page Contains  Back to results

Add Product to Cart
    Click Button  id=add-to-cart-button
    Wait Until Page Contains  Added to Cart

Begin Checkout
    Click Element  id=hlb-ptc-btn-native
    Wait Until Page Contains  Sign-In

