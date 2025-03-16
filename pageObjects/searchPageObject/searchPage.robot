*** Settings ***
Library    AppiumLibrary

*** Keywords ***
Input Data On Search
    Input Text    locator=//android.widget.EditText[@resource-id="com.example.myapplication:id/flight_number"]    text=DA935

Click Button Search
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/searchFlight"]