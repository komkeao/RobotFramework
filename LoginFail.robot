*** Settings ***
Library    Selenium2Library
Resource    resources/loginKeyword.robot
Suite Setup    Go to login page
Suite Teardown    Close Browser
Test Teardown    Back to login page
Test Template    Login fail template
*** Variables ***
${LoginPage}    http://localhost:7272/html/

*** Testcases ***
Empty username    ${EMPTY}    mode
Empty password    demo    ${EMPTY}
Empty username and password    ${EMPTY}    ${EMPTY}
Invalid username    demo1    mode
Invalid password    demo    mode1
Invalid username and password    demo1    mode1
*** Keywords ***

Back to login page
    Go To    ${LoginPage}

Input username
    [Arguments]    ${username}
    Input Text    username_field    ${username}

Input password
    [Arguments]    ${password}
    Input Text    password_field    ${password}

Go to login page
    Open Browser    ${LoginPage}
    Maximize Browser Window

Submit
    Click Button    login_button

Display Error page
    Wait Until Page Contains    Error Page

Login fail template
    [Arguments]    ${username}    ${password}
    Input username    ${username}
    Input password    ${password}
    Submit
    Display Error page
