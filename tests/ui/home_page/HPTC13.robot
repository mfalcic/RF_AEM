*** Settings ***
Resource    ../../../keywords/imports.resource

*** Test Cases ***
Verify FULL ARTICLE button in "Camping in Wesern Australia" feature ariticle is clicable
    [Documentation]  Verify that "FULL ARTICLE" button in  "Camping in Wesern Australia" is clicable, and open magazine/western-australia page.
    [tags]  Functional testing

    Login in AEM
    click on full article in camping in western australia
    Title Should Be    ${WKND_CAMPING_IN_WESTERN_AUTRSLIA_PAGE_TITLE}
    [Teardown]  Close Browser

Verify FULL ARTICLE button in "Camping in Wesern Australia" feature ariticle is clicable as publiser
    [Documentation]  Verify that "FULL ARTICLE" button in  "Camping in Wesern Australia" is clicable, and open magazine/western-australia page as publiser.
    [tags]  Functional testing

    Open AEM as Publisher
    click on full article in camping in western australia
    Title Should Be    this is a bug in publisher mode
    [Teardown]  Close Browser