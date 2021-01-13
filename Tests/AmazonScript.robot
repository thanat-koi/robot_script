*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazonweb.robot
Resource  ../Resources/Common.robot
Test Setup  Common.Being Web Test
Test Teardown  Common.End Web Test

*** Variables ***
${BROWSER}  firefox
${URL}      http://www.amazon.com
${SEARCH}   Ferrari 458

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    AmazonWeb.Search for Product
    AmazonWeb.Select Product
    AmazonWeb.Add Product to Cart
    AmazonWeb.Begin Checkout




