*** Settings ***
Resource    ../../../keywords/imports.resource

*** Test Cases ***
Verify WKND Adventures first tab is clicable
    [Documentation]  Verify that "VIEW TRIPS" button is clickable and opens linked text
    [tags]  Functional testing

    Login in AEM
    click on wknd adventures view trips
    Title Should Be    ${ADVENTURES_PAGE_TITLE}
    [Teardown]  Close Browser

Verify WKND Adventures first tab is clicable as Publisher
    [Documentation]  Verify that "VIEW TRIPS" button is clickable and opens linked text as Publisher
    [tags]  Functional testing

    Open AEM as Publisher
    click on wknd adventures view trips
    Title Should Be    ${ADVENTURES_PAGE_TITLE}
    
    [Teardown]  Close Browser

    

