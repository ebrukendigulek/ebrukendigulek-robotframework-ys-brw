*** Settings ***
Documentation   RestaurantPage
Library         Browser


*** Variables ***
${addFavoriteButton}        css=.social-button.favorite-button.add.active
${removeFavoriteButton}     css=.social-button.favorite-button.delete.active
${closeJokerPopUpButton}    id=cboxClose


*** Keywords ***
Add Favorite Restaurant
    Wait For Elements State     ${addFavoriteButton}    visible     5
    Click                       ${addFavoriteButton}

Close Joker PopUp If Displayed
    ${IsElementVisible}=    Run Keyword And Return Status   Wait For Elements State     ${closeJokerPopUpButton}    enabled     2
    Run Keyword If          '${IsElementVisible}'=='True'   Click                       ${closeJokerPopUpButton}
