*** Settings ***
Resource    ../../../keywords/imports.resource

*** Test Cases ***
Verify view trip is clicable
    [Documentation]  This test verify that "VIEW TRIP" button is clicable and opens Adventures Downhill Skiing Wyoming
    [tags]  Functional testing

    Login in AEM
    click on third tab
    click on view trip
    Title Should Be    ${ADVETURES_DONWHILL_PAGE_TITLE}
    [Teardown]  Close Browser

Verify view trip is clicable as publisher
    [Documentation]  This test verify that "VIEW TRIP" button is clicable and opens Adventures Downhill Skiing Wyoming as publisher
    [tags]  Functional testing

    Open AEM as Publisher
    click on third tab
    click on view trip
    Title Should Be    ${ADVETURES_DONWHILL_PAGE_TITLE}
    [Teardown]  Close Browser