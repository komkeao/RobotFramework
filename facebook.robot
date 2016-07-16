*** Settings ***
Library    Selenium2Library
#Resource    resources/loginKeyword.robot
#Suite Setup    Go to login page
Suite Teardown    Close Browser
#Test Teardown    Back to login page
#Test Template    Login fail template
*** Variables ***
${LoginPage}    https://www.instagram.com/accounts/login/?force_classic_login
*** Testcases ***
Like Facebook
    Go Like

*** Keywords ***
Go Like
    Open Browser    ${LoginPage}
    Maximize Browser Window
    Input Text    id_username    komkeao_t
    Input Text    id_password    KCStha1i995
    Click Button    css=input.button-green
    @{ret_val}    css=scoreSpriteHeartOpens
    :FOR  ${item}  IN  @{ret_val}
    Click Element    ${item}
