*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Verify Search Completed
    Wait Until Page Contains    results for "Ferrari 458"

Click Product Link
    Click Element   css=div.sg-col-4-of-24:nth-child(6)