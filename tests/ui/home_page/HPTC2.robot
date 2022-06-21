*** Settings ***
Resource    ../../../keywords/imports.resource


*** Test Cases ***
Verify WKND Adventures View Trips is clicable
    [Documentation]  This test Verify that first "tabs" carousel are clicable and opens adventure views.
    [tags]  Functional testing

    Login in AEM
    click on first tab
    Page Should Contain Element    ${WKND_ADVENTURES_TITLE_LINK}
    [Teardown]  close Browser

Verify WKND Adventures second tab is clicable
        [Documentation]  This test Verify that second "tab" carousel are clicable and opens Sand Diego Surf Sports adventure view.
        [tags]  Functional testing
        Login in AEM
        click on second tab
        Page Should Contain Element    ${SAN_DIEGO_SURF_SPORTS_TITLE}
        [Teardown]  close Browser

Verify WKND Advetnures third tab is clicable
    [Documentation]  This test Verify third "tab" carousel are lcicable and opens Downhill Skiing Wyoming view.
    [Tags]  Functionl testing
    Login in AEM
    click on third tab
    Page Should Contain Element    ${DOWNHILL_SKIING_WYOMING_TITLE}
    [Teardown]  Close Browser

Verify WKND Adventures View Trips is clicable as publisher
    [Documentation]  This test Verify that first "tabs" carousel are clicable and opens adventure views as publisher
    [tags]  Functional testing

    Open AEM as Publisher
    click on first tab
    Page Should Contain Element    ${WKND_ADVENTURES_TITLE_LINK}
    [Teardown]  close Browser

Verify WKND Adventures second tab is clicable publisher
        [Documentation]  This test Verify that second "tab" carousel are clicable and opens Sand Diego Surf Sports adventure view publisher.
        [tags]  Functional testing
        Open AEM as Publisher
        click on second tab
        Page Should Contain Element    ${SAN_DIEGO_SURF_SPORTS_TITLE}
        [Teardown]  close Browser

Verify WKND Advetnures third tab is clicable as publisher
    [Documentation]  This test Verify third "tab" carousel are lcicable and opens Downhill Skiing Wyoming view as publisher.
    [Tags]  Functionl testing
    Open AEM as Publisher
    click on third tab
    Page Should Contain Element    ${DOWNHILL_SKIING_WYOMING_TITLE}
    [Teardown]  Close Browser
