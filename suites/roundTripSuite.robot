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
Dropdowns Appears
    Select Book Flight
    Select Round Trip
    Verify From City Dropdown Appears
    Verify To City Dropdown Appears
    Verify Class Dropdown Appears
Start Date & End Date Appears
    Select Book Flight
    Select Round Trip
    Verify Start Date & End Date Appears
Checkbox & Radio Button Appears
    Select Book Flight
    Select Round Trip
    Verify Radio Button
    Verify Checkbox