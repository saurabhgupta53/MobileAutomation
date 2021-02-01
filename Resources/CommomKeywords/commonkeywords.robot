*** Settings ***

Library  AppiumLibrary

*** Variables ***

${APPIUM_SERVER1}     http://localhost:4723/wd/hub
${AUTOMATION_NAME}    UIAutomator2
${PLATFORM_NAME}      Android
${PLATFORM_VERSION}   10.0
${DEVICE_NAME}        9449dfda
${APP_PACKAGE}        com.android.dialer
${APP_ACTIVITY}       com.android.dialer.Dialtactsactivity

*** Keywords ***

Open Calculator App
    ${androiddriver1}=   Open Application    ${APPIUM_SERVER1}    automationName=${AUTOMATION_NAME}   platformName=${PLATFORM_NAME}    deviceName=platformVersion=${PLATFORM_VERSION}    appPackage=${APP_PACKAGE}   appActivity=${APP_ACTIVITY}

    Set Suite Variable   ${androiddriver1}

*** Test Cases ***

TC1
    Open Calculator App
    close application