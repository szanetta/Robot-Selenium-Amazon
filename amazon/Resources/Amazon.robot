*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Search for Products
    Go To    https://www.amazon.com/
    Wait Until Page Contains    Your Account
    Input Text      id=twotabsearchtextbox      Ferrari 458
    Click Button    xpath=//*[@id="nav-search-submit-button"]
    Wait Until Page Contains    results for "Ferrari 458"
Select Product from Search Results
    Click Element   css=div.sg-col-4-of-24:nth-child(6)
    Wait Until Page Contains    Product information
Add Product to Cart
    Click Button    id=add-to-cart-button
    Wait Until Page Contains    Added to Cart
Begin Checkout
    Click Element   css= #sc-buy-box-ptc-button > span:nth-child(1) > input:nth-child(1)
    Page Should Contain     Sign in
