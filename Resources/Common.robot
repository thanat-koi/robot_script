*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Being Web Test
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window

End Web Test
    Close Browser