*** Settings ***
Resource         ../pageObjects/bookFlightPageObject/roundTrip.robot
Test Setup       Run Keywords    Open Flight Application    AND     Verify User Can Login
Test Teardown    Close Flight Application

*** Variables ***
${VALID_EMAIL}               support@ngendigital.com
${VALID_PASSWORD}            abc123

*** Test Cases ***
Verify User Is Logged In
    Verify Username Appears
Verify From City Can Be Selected
    Select Book Flight
    Select Round Trip
    Click From City Button
    Verify From City Dropdown Appears