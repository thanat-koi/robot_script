*** Settings ***
Documentation  This is some basic info about the whole suite
Resource  ../Resources/Amazon.robot
Resource  ../Resources/Common.robot
Test Setup  Being Web Test
Test Teardown  End Web Test

*** Variables ***
#${BROWSER} = firefox
#${URL} = http://www.amazon.com

*** Test Cases ***
User must sign in to check out
    [Documentation]  This is some basic info about the test
    [Tags]  Smoke
    Amazon.Search for Product
    Amazon.Select Product
    Amazon.Add Product to Cart
    Amazon.Begin Checkout




