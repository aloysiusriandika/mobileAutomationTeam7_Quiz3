*** Settings ***
Resource                ../base/base.robot
Variables               roundtrip_locator.yaml
Library                 AppiumLibrary

*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123

*** Keywords ***
Click Sign In Button On Home Page
    Wait Until Element Is Visible      ${signIn_button_homePage}
    Click Element                      ${signIn_button_homePage}
Verify Login Appears
    Wait Until Element Is Visible    ${email_input_loginPage}
    Wait Until Element Is Visible    ${password_input_loginPage}
    Wait Until Element Is Visible    ${signIn_button_loginPage}

Input User Email On Login Page
    [Arguments]   ${email}
    Input Text    ${email_input_loginPage}    ${email}

Input User Password On Login Page
    [Arguments]   ${password}
    Input Text    ${password_input_loginPage}    ${password}

Click Sign In Button On Login Page
    Click Element    ${signIn_button_loginPage}

Verify Username Appears
    Wait Until Element Is Visible      ${userName_text_homePage}

Select Book Flight
    Wait Until Element Is Visible      ${bookFlight_button_homePage}
    Click Element                      ${bookFlight_button_homePage}

Select Round Trip
    Wait Until Element Is Visible      ${roundTrip_button_bookFlightPage}
    Click Element                      ${roundTrip_button_bookFlightPage}

Click From City Button
    Wait Until Element Is Visible      ${fromCity_text}
    Click Element                      ${fromCity_button}

Verify From City Dropdown Appears
    Wait Until Element Is Visible      ${fromCity_dropdown1}
    Click Element                      ${fromCity_dropdown1}
    Text Should Be Visible    New York
    Wait Until Element Is Visible      ${fromCity_dropdown1}
    Click Element                      ${fromCity_dropdown1}
    Text Should Be Visible    Chicago
    Text Should Be Visible    Toronto
Verify User Can Login
    [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${VALID_PASSWORD}
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page