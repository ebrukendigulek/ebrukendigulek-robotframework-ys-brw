*** Settings ***
Documentation    FavoritePage
Library  DebugLibrary
Library  SeleniumLibrary
Library  Collections


*** Variables ***
${favoriteRestaurantNameList}  css=.favorite-item

*** Keywords ***
User Validates Restaurant Added To The Favorites
    ${restaurantElements}=          Get WebElements    ${favoriteRestaurantNameList}
    FOR  ${eachItem}  IN  @{restaurantElements}
       log to console                      ${eachItem.text}
       ${isRestaurantNameVisible}=     Run Keyword And Return Status    Element Should Contain     ${eachItem}    ${selectedRestaurantName}
       log to console                      ${isRestaurantNameVisible}
       Run Keyword If    '${isRestaurantNameVisible}'=='True'      Exit For Loop    
    END

    Should Be True	 '${isRestaurantNameVisible}'=='True' 
    
