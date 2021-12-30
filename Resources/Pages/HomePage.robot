*** Settings ***
Documentation  HomePage
Library  SeleniumLibrary

*** Variables ****
${chooseRegion}                  id=select2-ys-areaSelector-container
${regionList}                    xpath=//li[@class='select2-results__option']
${searchInput}                   css=span[class*='ys-icons ys-icons-search icon']
${userInfoContainerButton}       css=.ys-user-info-container
${goToMyFavorite}                css=.ys-userSettings [href='/hesabim/favorilerim']

*** Keywords ***
Open Choose Region Container
    Wait Until Element Is Visible  ${chooseRegion}
    Click Element                  ${chooseRegion}
    sleep  5

Select Random Regions
    ${elms}         Get WebElements     ${regionList}
    ${count}=	    Get Element Count	 ${regionList}
    ${random}=	    Evaluate	random.randint(0, ${count}-1)
    Click Element   ${elms[${random}]}
    sleep  5


Click Search Restaurant Button
    Wait Until Element Is Visible  ${searchInput}
    Click Element                  ${searchInput}
    sleep  10
    
Open User Detail Container
    Wait Until Element Is Visible  ${userInfoContainerButton}
    Click Element                  ${userInfoContainerButton}
    
Click My Favorite
    Wait Until Element Is Visible  ${goToMyFavorite}
    Click Element                  ${goToMyFavorite}
    sleep   10
