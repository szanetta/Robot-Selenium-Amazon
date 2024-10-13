*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Add to Card
    Click Button    id=add-to-cart-button

Verify Page Loaded
    Wait Until Page Contains    Product information