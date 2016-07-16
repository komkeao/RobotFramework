*** Settings ***
Library    Selenium2Library
Test Teardown    Close Browser
*** Variables ***
${LoginPage}    http://localhost:7272/html/

*** Testcases ***
Valid username and password
    Go to login page
    Input username demo
    Input password mode
    Submit
    Display Welcome page
*** Keywords ***
Go to login page
    Open Browser    ${LoginPage}
    Maximize Browser Window

Input username demo
    Input Text    username_field    demo

Input password mode
    Input Text    password_field    mode

Submit
    Click Button    login_button

Display Welcome page
    Wait Until Page Contains    Welcome Page
