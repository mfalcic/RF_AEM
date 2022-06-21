*** Settings ***
Resource    ../../../keywords/imports.resource
Library     ScreenCapLibrary

*** Test Cases ***
Verify Open Home Page
    [documentation]  This test verify that you can login
    [tags]  Functional test

    Open Browser To Login Page
    Login Page Should Be Open
    input username    admin
    input pass   admin
    submit credentials
    wknd page should be open
    [Teardown]    Close Browser

Verify Login With Wrong Username
    [Documentation]    This test verify that you can't login with wrong username
    [Tags]  Non Functional Testing

    Open Browser To Login Page
    input username    test1
    input pass    admin
    submit credentials
    Wrong login message error
    [Teardown]    Close Browser

Verify Login With Wrong password
    [Documentation]    This test verify that you can't login with wrong password
    [Tags]  Non Functional Testing
    
    Open Browser To Login Page
    input username    admin
    input pass    test1
    submit credentials
    Wrong login message error
    [Teardown]    Close Browser

Verify Login With Wrong Password And Username
    [Documentation]    This test verify that you can't login with wrong username and username
    [Tags]  Non Functional Testing

    Open Browser To Login Page
    input username    test1
    input pass    test1
    submit credentials
    Wrong login message error
    [Teardown]    Close Browser

Verify Login With Empty Username and Password
    [Documentation]  This test verify that you can't login without username and password
    [Tags]  Non Functional Testing
    Start Video Recording    alias=None    name=DemoRecording    fps=None    size_percentage=1    embed=True    embed_width=100px    monitor=1

    Open Browser To Login Page
    submit credentials
    Capture Page Screenshot    login.png
    Wrong login message error

    Stop Video Recording    alias=None
    [Teardown]    Close Browser
