*** Settings ***
Resource    ../../../keywords/imports.resource

*** Test Cases ***
Verify San Diego Surf Sports title-link is clicable
    [Documentation]  Verify that "San Diego Surf Sports" title-link is clicable and opens magazine/sand-dieg-surf page.
    [tags]  Functional testing

    Login in AEM
    click on second tab
    click on san diego surf sports title-link
    Title Should Be    ${MAGAZINE_SAN_DIEGO_TITLE}
    [Teardown]  Close Browser

Verify San Diego Surf Sports title-link is clicable as publisher
    [Documentation]  Verify that "San Diego Surf Sports" title-link is clicable and opens magazine/sand-dieg-surf page as publisher.
    [tags]  Functional testing

    Open AEM as Publisher
    click on second tab
    click on san diego surf sports title-link
    Title Should Be    this is a bug in publisher mode
    [Teardown]  Close Browser