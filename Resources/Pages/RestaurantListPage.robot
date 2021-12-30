*** Settings ***
Documentation  HomePage
Library  SeleniumLibrary

*** Variables ****
${restaurantList}               css=.ys-item.edited .restaurant-display-name
${closeJokerPopUpButton}        id=cboxClose

*** Keywords ***
Select Random Restaurant
    ${elms}                             Get WebElements                 ${restaurantList}
    ${count}=                           Get Element Count               ${restaurantList}
    ${random}=                          Evaluate    random.randint(0, ${count})
    ${selectedRestaurantName}=          Get Text                        ${elms[${random}]}
    Set Global Variable                 ${selectedRestaurantName}
    log to console                      ${selectedRestaurantName}
    Click Element                       ${elms[${random}]}
    sleep  10

Close Joker PopUp If Displayed
    ${IsElementVisible}=     Run Keyword And Return Status    Element Should be Enabled     ${closeJokerPopUpButton}
    Run Keyword If    '${IsElementVisible}'=='True'       Click Element    ${closeJokerPopUpButton}
