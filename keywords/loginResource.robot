*** Settings ***
Library    SeleniumLibrary
Resource    ../testdata/variables/imports.resource
Documentation    A test suite for login page

*** Variables ***
${DELAY}    0

*** Keywords ***
Login in AEM
    Open Browser To Login Page
    Login Page Should Be Open
    input username    ${username} 
    input pass    ${password} 
    submit credentials

Open Browser To Login Page
    Set Selenium Speed    ${DELAY} 
    Open Browser    ${GLOBAL_ENDPOINT_LOGIN_AUTHOR}    ${BROWSER}
    Maximize Browser Window

Open AEM as Publisher
    Set Selenium Speed    ${DELAY} 
    Open Browser    ${GLOBAL_ENDPOINT_LOGIN_PUBLISHER}    ${BROWSER}
    Maximize Browser Window

Login Page Should Be Open
    Title Should Be    ${LOGIN_PAGE_TITLE}

input username
    [Arguments]    ${username}
    Input Text    ${USER}     ${username}

input pass
    [Arguments]    ${password}
    Input Text    ${PASS}    ${password}

submit credentials
    Click Button    ${SUBMIT_CREDENTIALS_BUTTON}

Wrong login message error
        Element Text Should Be    ${WRONG_LOGIN_ERROR}    ${ERROR_MESSAGE}     