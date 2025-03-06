*** Settings ***
Library            AppiumLibrary

*** Variables ***
${REMOTE_URL}                                 http://127.0.0.1:4723
${PLATFORM_NAME}                              Android
${PLATFORM_VERSION}                           15.0
${DEVICE_NAME}                                56bd42c3
${APP_PACKAGE}                                com.example.myapplication
${APP_ACTIVITY}                               com.example.myapplication.MainActivity
${AUTOMATION_NAME}                            UiAutomator2

*** Keywords ***
Open Flight Application
    Open Application            remote_url=${REMOTE_URL}
    ...                         platformName=${PLATFORM_NAME}
    ...                         platformVersion=${PLATFORM_VERSION}
    ...                         deviceName=${DEVICE_NAME}
    ...                         appPackage=${APP_PACKAGE}
    ...                         appActivity=${APP_ACTIVITY}
    ...                     automationName=${AUTOMATION_NAME}

Close Flight Application
    Close Application
