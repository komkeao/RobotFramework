
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
