*** Settings ***
Documentation       RestaurantListPage
Library             Browser


*** Variables ***
${restaurantList}           css=.ys-item.edited .restaurant-display-name
${closeJokerPopUpButton}    id=cboxClose


*** Keywords ***
Select Random Restaurant
    Wait For Elements State         ${restaurantList}           enabled             10
    ${elms}                         Get Elements                ${restaurantList}
    ${count}=                       Get Element Count           ${restaurantList}
    ${random}=                      Evaluate                    random.randint(0, ${count}-1)
    ${selectedRestaurantName}=      Get Text                    ${elms[${random}]}
    Set Global Variable             ${selectedRestaurantName}
    Log To Console                  ${selectedRestaurantName}
    Click                           ${elms[${random}]}
    # Sleep                           10

Close Joker PopUp If Displayed
    ${IsElementVisible}=    Run Keyword And Return Status   Wait For Elements State     ${closeJokerPopUpButton}    enabled     2
    Run Keyword If          '${IsElementVisible}'=='True'   Click                       ${closeJokerPopUpButton}
