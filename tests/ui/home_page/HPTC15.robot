*** Settings ***
Resource    ../../../keywords/imports.resource

*** Test Cases ***
Verify ALL ARTICLES button is clicable
    [Documentation]  Verify that "ALL ARTICLES" button  is clicable, and open Magazine page.
    [tags]  Functional testing

    Login in AEM
    click on all articles
    Title Should Be    ${MAGAZINE_PAGE_TITLE}
    [Teardown]  Close Browser

Verify ALL ARTICLES button is clicable as publiser
    [Documentation]  Verify that "ALL ARTICLES" button  is clicable, and open Magazine page as publiser.
    [tags]  Functional testing

    Open AEM as Publisher
    click on all articles
    Title Should Be    ${MAGAZINE_PAGE_TITLE}
    [Teardown]  Close Browser