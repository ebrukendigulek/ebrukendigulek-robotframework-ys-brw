*** Settings ***
Documentation  HomePage
Library  SeleniumLibrary

*** Variables ****
${addFavoriteButton}            css=.social-button.favorite-button.add.active
${removeFavoriteButton}         css=.social-button.favorite-button.delete.active
${closeJokerPopUpButton}        id=cboxClose

*** Keywords ***
Add Favorite Restaurant
    Wait Until Element Is Visible  ${addFavoriteButton}
    Click Element                  ${addFavoriteButton}

Close Joker PopUp If Displayed
    ${IsElementVisible}=     Run Keyword And Return Status    Element Should be Enabled     ${closeJokerPopUpButton}
    Run Keyword If    '${IsElementVisible}'=='True'       Click Element    ${closeJokerPopUpButton}

