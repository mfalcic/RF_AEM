*** Settings ***
Resource    ../../../keywords/imports.resource

*** Test Cases ***
Verify Camping in Wesern Australia teaser-title is clicable.
    [Documentation]  Verify that "Camping in Wesern Australia" teaser-title is clicable, and open magazine/western-asutralia page.
    [tags]  Functional testing

    Login in AEM
    click on camping_western_australia title-link
    Title Should Be    ${WKND_CAMPING_IN_WESTERN_AUTRSLIA_PAGE_TITLE}
    [Teardown]  Close Browser

Verify Camping in Wesern Australia teaser-title is clicable as publisher.
    [Documentation]  Verify that "Camping in Wesern Australia" teaser-title is clicable, and open magazine/western-asutralia page as publisher.
    [tags]  Functional testing

    Open AEM as Publisher
    click on camping_western_australia title-link
    Title Should Be    this is a bug in publiser mode
    [Teardown]  Close Browser