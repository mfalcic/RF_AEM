*** Settings ***
Resource    ../../../keywords/imports.resource

*** Test Cases ***
Verify WKND Adventures first tab is clicable
    [Documentation]  This test verify that "FULL ARTICLE" button is clicable and opens San Diego Surf Magazine page
    [tags]  Functional testing

    Login in AEM
    click on second tab
    click on full article
    Title Should Be    ${MAGAZINE_SAN_DIEGO_TITLE}
    [Teardown]  Close Browser

Verify WKND Adventures first tab is clicable as publisher
    [Documentation]  This test verify that "FULL ARTICLE" button is clicable and opens San Diego Surf Magazine page as publisher
    [tags]  Functional testing

    Open AEM as Publisher
    click on second tab
    click on full article
    Title Should Be    this is a bug in publisher mode
    [Teardown]  Close Browser