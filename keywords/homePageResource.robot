*** Settings ***
Library    SeleniumLibrary
Resource    ../testdata/variables/imports.resource

Documentation    A Test Suite For Home Page
*** Variables ***
${DELAY}    0

*** Keywords ***
wknd page should be open
    Title Should Be    ${HOME_PAGE_TITLE}

click on sign Out
    Click Element  ${SIGN_OUT_BUTTON}
    Wait Until Element Is Visible    ${CONFIRM_SIGN_OUT_BUTTON}
click confirm sign out
    Click Element  ${CONFIRM_SIGN_OUT_BUTTON} 

click on wknd adventures view trips
    Click Element    ${WKND_ADNEBTURES_VIEW_TRIPS_BUTTON}

click on wknd view trips
    Click Element  ${WKND_ADVENTURES_TITLE_LINK}

adventure page should be open
    Title Should Be    ${ADVENTURES_PAGE_TITLE}

click on first tab 
    Click Element    ${HOME_PAGE_TAB1}

click on second tab 
    Click Element    ${HOME_PAGE_TAB2}

click on third tab 
    Click Element    ${HOME_PAGE_TAB3}

click on full article
    Click Element    ${HOME_PAGE_FULL_ARTICLE}

click on view trip
    Click Element    ${DOMNHILL_VIEW_TRIP}

click on wknd adventures title-link
    Click Element    ${WKND_ADVENTURES_TITLE_LINK}

click on san diego surf sports title-link
    Click Element    ${WKND_SAN_DIEGO_SURF_SPORTS_TILE_LINK}
click on donwhill skiing title-link
    Click Element    ${DOWNHILL_TITLE_LINK}

click on camping_western_australia title-link
    Click Element    ${WKND_CAMPING_IN_WESTERN_AUSTRALIA_TITLE_LINK}
click on full article in camping in western australia
    Click Element  ${WKND_CAMPING_IN_WESTER_AUSTRALIA_FULL_ARTICLE}
click on all articles 
    Click Element    ${WKND_ALL_ARTICLES}

click on see trip
    Click Element    ${WKND_SEE_TRIP}

click on all trips
    Click Element    ${WKND_ALL_TRIPS}