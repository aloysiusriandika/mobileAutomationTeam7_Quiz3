*** Settings ***
Library        AppiumLibrary

*** Keywords ***
Verify Home Screen Appears
    Wait Until Element Is Visible        locator=//android.widget.ImageView[@resource-id="com.example.myapplication:id/imageView4"]

Click Sign In Button On Home Screen
    Click Element        locator=//android.widget.Button[@resource-id="com.example.myapplication:id/login"]

Click Search Button On Home Screen
    Click Element    locator=//android.widget.Button[@resource-id="com.example.myapplication:id/search_flight"]

Verify Search Button On Home Screen
    Wait Until Element Is Visible    locator=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.view.ViewGroup/android.view.ViewGroup[1]