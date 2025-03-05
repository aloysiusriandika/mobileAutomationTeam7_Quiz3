*** Settings ***
Library        AppiumLibrary
Variables      login-page-locators.yaml
Variables      login-page-password.yaml
Variables      login-page-clickbutton.yaml
Variables      logout-page-button.yaml
Variables      home-image.yaml

*** Variables ***
${VALID_USERNAME}    support@ngendigital.com
${VALID_PASSWORD}    abc123 

*** Keywords ***
Verify Sign In Screen Appears
    Wait Until Element Is Visible        locator=${username_input}

Input Username
    Input Text        locator=${username_input}       text=${VALID_USERNAME}

Input Password
     Input Text        locator=${password_input}      text=${VALID_PASSWORD}

Click Sign In Button
    Click Element        locator=${click_button}

Click Logout Button
    Click Element    locator=${logout_button}

    
