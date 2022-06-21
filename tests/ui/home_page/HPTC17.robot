*** Settings ***
Resource    ../../../keywords/imports.resource

*** Test Cases ***
Verify ALL TRIPS button in "Climbing New Zealand" section is clicable
    [Documentation]  Verify that "ALL TRIPS" button is clicable, and open adventure page.
    [tags]  Functional testing

    Login in AEM
    click on all trips
    Title Should Be    ${ADVENTURES_PAGE_TITLE}
    [Teardown]  Close Browser

Verify ALL TRIPS button in "Climbing New Zealand" section is clicable as publiser
    [Documentation]  Verify that "ALL TRIPS" button is clicable, and open adventure page as publiser.
    [tags]  Functional testing

    Open AEM as Publisher
    click on all trips
    Title Should Be    ${ADVENTURES_PAGE_TITLE}
    [Teardown]  Close Browser