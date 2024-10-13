*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Verify Product Added
    Wait Until Page Contains    Added to Cart

Proceed to Checkout
    Click Element   css= #sc-buy-box-ptc-button > span:nth-child(1) > input:nth-child(1)