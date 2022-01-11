*** Settings ***
Documentation   FavoritePage
Library         DebugLibrary
Library         Browser
Library         Collections


*** Variables ***
#${favoriteRestaurantNameList}   css=.favorite-item


*** Keywords ***
User Validates Restaurant Added To The Favorites
   # ${restaurantElements}=      Get Elements    ${favoriteRestaurantNameList}
   #FOR  ${eachItem}  IN  @{restaurantElements}
   #   ${text}=   Get Text      ${eachItem}
   #   Log To Console   ${text}
   #   ${isRestaurantNameVisible}=    Run Keyword And Return Status    Get Text    ${eachItem}   contains    ${selectedRestaurantName}
   #   Log To Console   ${isRestaurantNameVisible}
   #   Run Keyword If   '${isRestaurantNameVisible}'=='True'    Exit For Loop
   #END
   #Should Be True	    '${isRestaurantNameVisible}'=='True'

   #yukardaki kod blogu yerine aşağıdaki gibi sayfada içinde favoriye eklenen restaurant visible mi kontrolü yapılabilir. 
    Set Strict Mode     true
    Wait For Elements State     text=${selectedRestaurantName}    visible     10
    Set Strict Mode     false

