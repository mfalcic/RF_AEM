*** Variables ***
#Login page elements
${USER}    username
${PASS}    password
${username}   admin
${password}  admin
${LOGIN_PAGE_TITLE}    AEM Sign In
${SUBMIT_CREDENTIALS_BUTTON}  submit-button
${WRONG_LOGIN_ERROR}    error
${ERROR_MESSAGE}    User name and password do not match

#Home page elements
${HOME_PAGE_TITLE}  WKND Adventures and Travel
${SIGN_OUT_BUTTON}  xpath://*[@id="container-42405427ac"]/div[1]/div[1]/div[1]/a[2]
${CONFIRM_SIGN_OUT_BUTTON}  xpath://*[@id="form-button-1975252872"]
${WKND_ADNEBTURES_VIEW_TRIPS_BUTTON}  teaser-2122a9f81a-cta-6b28b693be
${WKND_ADVENTURES_TITLE_LINK}    class:cmp-teaser__title-link
${SAN_DIEGO_SURF_SPORTS_TITLE}   class:cmp-teaser__content
${DOWNHILL_SKIING_WYOMING_TITLE}  class:cmp-teaser__title-link
${HOME_PAGE_FULL_ARTICLE}  teaser-da32481ec8-cta-adf3c09db9
${DOMNHILL_VIEW_TRIP}  teaser-5f1778b56a-cta-96f6fcb87c
${ADVETURES_DONWHILL_PAGE_TITLE}  Downhill Skiing Wyoming
${ADVENTURES_PAGE_TITLE}  Adventures
${MAGAZINE_SAN_DIEGO_TITLE}  San Diego Surf Spots
${WKND_CAMPING_IN_WESTERN_AUSTRALIA_TITLE_LINK}  xpath://*[@id="featured-teaser-home"]/div[2]/h2[1]/a[1]
${WKND_SAN_DIEGO_SURF_SPORTS_TILE_LINK}  xpath://*[@id="teaser-da32481ec8"]/div[2]/h2[1]/a[1]
${DOWNHILL_TITLE_LINK}    xpath://*[@id="teaser-5f1778b56a"]/div[2]/h2[1]/a[1]
${WKND_CAMPING_IN_WESTERN_AUTRSLIA_PAGE_TITLE}  Western Australia
${ADVENURES_CLIMGING_NEW_ZELNAD_TITLE}  Climbing New Zealand
${WKND_CAMPING_IN_WESTER_AUSTRALIA_FULL_ARTICLE}  featured-teaser-home-cta-526cf4e1ac
${MAGAZINE_PAGE_TITLE}    Magazine
${WKND_ALL_TRIPS}  xpath://*[@id="button-b6562c963d"]/span[1]
${WKND_SEE_TRIP}  teaser-ef0ce278d1-cta-c52ab81e8d
${WKND_ALL_ARTICLES}  xpath://*[@id="button-2e6d32893a"]/span[1]
${HOME_PAGE_TAB1}  carousel-43c8d133ed-item-2122a9f81a-tab
${HOME_PAGE_TAB2}  carousel-43c8d133ed-item-da32481ec8-tab
${HOME_PAGE_TAB3}  carousel-43c8d133ed-item-5f1778b56a-tab


#Browsers
${BROWSER}    chrome

