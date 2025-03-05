*** Settings ***
Resource            ../pageObjects/homepage/homePage.robot
Resource            ../pageObjects/signOutPageObject/signOutPage.robot
Resource            ../pageObjects/base/base.robot
Test Setup         Open Flight Application
Test Teardown      Close Flight Application


*** Test Cases ***
User Should Be Able To Login and Logout Successfully
    Verify Home Screen Appears
    Click Sign In Button On Home Screen
    Verify Sign In Screen Appears
    Input Username
    Input Password 
    Click Sign In Button
    Wait Until Element Is Visible    ${home_image}    timeout=10s
    Click Logout Button

