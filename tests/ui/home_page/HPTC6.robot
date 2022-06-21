*** Settings ***
Resource    ../../../keywords/imports.resource

*** Test Cases ***
Verify WKND Adventures title-link is clicable
    [Documentation]  Verify that "WKND Adventures" title-link is clicable and opens Adventures page.
    [tags]  Functional testing

    Login in AEM
    click on wknd adventures title-link
    Title Should Be    ${ADVENTURES_PAGE_TITLE}
    [Teardown]  Close Browser

Verify WKND Adventures title-link is clicable as publisher
    [Documentation]  Verify that "WKND Adventures" title-link is clicable and opens Adventures page as publisher.
    [tags]  Functional testing

    Open AEM as Publisher
    click on wknd adventures title-link
    Title Should Be    ${ADVENTURES_PAGE_TITLE}
    [Teardown]  Close Browser
