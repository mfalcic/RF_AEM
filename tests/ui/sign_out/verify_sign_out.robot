*** Settings ***
Resource    ../../../keywords/imports.resource

*** Test Cases ***
Verify Sign Out
    [Documentation]  This test verify that you can sign out
    [tags]  Functional testing

    Login in AEM
    wknd page should be open
    click on sign Out
    click confirm sign out
    Login Page Should Be Open
    [Teardown]  Close Browser