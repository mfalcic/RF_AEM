*** Settings ***
Resource    ../../../keywords/imports.resource

*** Test Cases ***
Verify Downgill Skiing Wyoming title-link is clicable
    [Documentation]  Verify that "Downgill Skiing Wyoming" title-link is clicable and opnes Adventures/donwhill-skiing-whyoming page.
    [tags]  Functional testing

    Login in AEM
    click on third tab
    click on donwhill skiing title-link
    Title Should Be    ${ADVETURES_DONWHILL_PAGE_TITLE}
    [Teardown]  Close Browser

Verify Downgill Skiing Wyoming title-link is clicable as publisher
    [Documentation]  Verify that "Downgill Skiing Wyoming" title-link is clicable and opnes Adventures/donwhill-skiing-whyoming page as publisher.
    [tags]  Functional testing

    Open AEM as Publisher
    click on third tab
    click on donwhill skiing title-link
    Title Should Be    ${ADVETURES_DONWHILL_PAGE_TITLE}
    [Teardown]  Close Browser