*** Settings ***
Resource            ../pageObjects/base/base.robot
Resource            ../pageObjects/homepage/homePage.robot
Resource            ../pageObjects/signOutPageObject/signOutPage.robot
Resource            ../pageObjects/searchPageObject/searchPage.robot
Test Setup         Open Flight Application
Test Teardown      Close Flight Application

*** Test Cases ***
User Should Be To Search Successful
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username
    Input Password 
    Click Sign In Button
    Wait Until Element Is Visible    ${home_image}    timeout=10s
    Click Search Button On Home Screen
    Verify Search Button On Home Screen
    Input Data On Search
    Click Button Search
    Click Logout Button