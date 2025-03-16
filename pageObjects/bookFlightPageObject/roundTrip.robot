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

Verify From City Dropdown Appears
    Wait Until Element Is Visible      ${fromCity_text}
    Click Element                      ${fromCity_button}
    Wait Until Element Is Visible      ${fromCity_dropdown1}
    Text Should Be Visible    New York
    Wait Until Element Is Visible      ${fromCity_dropdown2}
    Text Should Be Visible    Chicago
    Wait Until Element Is Visible      ${fromCity_dropdown3}
    Text Should Be Visible    Toronto
    Click Element                      ${fromCity_dropdown1}
Verify To City Dropdown Appears
    Click Element                      ${toCity_button}
    Wait Until Element Is Visible      ${toCity_dropdown1}
    Text Should Be Visible    London
    Wait Until Element Is Visible      ${toCity_dropdown2}
    Text Should Be Visible    Paris
    Wait Until Element Is Visible      ${toCity_dropdown3}
    Text Should Be Visible    Ottawa
    Click Element                      ${toCity_dropdown2}
Verify Class Dropdown Appears
    Click Element                      ${class_button}
    Wait Until Element Is Visible      ${class_dropdown1}
    Text Should Be Visible    Economy
    Wait Until Element Is Visible      ${class_dropdown2}
    Text Should Be Visible    First
    Wait Until Element Is Visible      ${class_dropdown3}
    Text Should Be Visible    Business
    Click Element                      ${class_dropdown3}
Verify Start Date & End Date Appears
    Wait Until Element Is Visible      ${startDate_text}
    Click Element                      ${startDate_text}
    Wait Until Element Is Visible      ${tahun_text}
    Wait Until Element Is Visible      ${hariTanggal_text}
    Wait Until Element Is Visible      ${dateChoice}
    Click Element                      ${previousMonth_button}
    Click Element                      ${nextMonth_button}
    Click Element                      ${OK_button}
    Click Element                      ${endDate_text}
    Wait Until Element Is Visible      ${tahun_text}
    Wait Until Element Is Visible      ${hariTanggal_text}
    Wait Until Element Is Visible      ${dateChoice}
    Click Element                      ${previousMonth_button}
    Click Element                      ${nextMonth_button}
    Click Element                      ${OK_button}
Verify Radio Button
    Wait Until Element Is Visible        ${radioButton_flight}
    Click Element                        ${radioButton_flight}
    Wait Until Element Is Visible        ${radioButton_hotel}
    Click Element                        ${radioButton_hotel}
Verify Checkbox
    Wait Until Element Is Visible        ${checkBox_day}
    Click Element                        ${checkBox_day}
Verify User Can Login
    [Arguments]    ${email}=${VALID_EMAIL}    ${password}=${VALID_PASSWORD}
    Click Sign In Button On Home Page
    Verify Login Appears
    Input User Email On Login Page     ${email}
    Input User Password On Login Page  ${password}
    Click Sign In Button On Login Page