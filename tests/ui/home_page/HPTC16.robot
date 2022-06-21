*** Settings ***
Resource    ../../../keywords/imports.resource

*** Test Cases ***
Verify SEE TRIP button in "Climbing New Zealand" section is clicable.
    [Documentation]  Verify that "SEE TRIP" button is clicable, and open adventure/climbing-new-zealand page
    [tags]  Functional testing

    Login in AEM
    click on see trip
    Title Should Be    ${ADVENURES_CLIMGING_NEW_ZELNAD_TITLE}
    [Teardown]  Close Browser

Verify SEE TRIP button in "Climbing New Zealand" section is clicable as publiser.
    [Documentation]  Verify that "SEE TRIP" button is clicable, and open adventure/climbing-new-zealand page as publiser
    [tags]  Functional testing

    Open AEM as Publisher
    click on see trip
    Title Should Be    ${ADVENURES_CLIMGING_NEW_ZELNAD_TITLE}
    [Teardown]  Close Browser