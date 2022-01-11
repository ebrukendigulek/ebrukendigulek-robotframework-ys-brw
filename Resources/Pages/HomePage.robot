*** Settings ***
Documentation       HomePage
Library             Browser


*** Variables ***
${chooseRegion}                 id=select2-ys-areaSelector-container
${regionList}                   xpath=//li[@class='select2-results__option']
${searchInput}                  css=span[class*='ys-icons ys-icons-search icon']
${userInfoContainerButton}      css=.ys-user-info-container
${goToMyFavorite}               css=.ys-userSettings [href='/hesabim/favorilerim']


*** Keywords ***
Open Choose Region Container
    Wait For Elements State     ${chooseRegion}     enabled     5
    Wait For Elements State     text=yemeksepeti    visible     5
    Click                       ${chooseRegion}     

Select Random Regions
    ${elms}=        Get Elements        ${regionList}
    ${count}=	    Get Element Count   ${regionList}
    ${random}=	    Evaluate	        random.randint(0, ${count}-1)
    Click           ${elms[${random}]}
    Sleep           5

Click Search Restaurant Button
    Wait For Elements State     ${searchInput}      visible     10
    Click                       ${searchInput}      #delay=10000ms 
    Sleep                       5
    
Open User Detail Container
    Wait For Elements State     ${userInfoContainerButton}  visible     10
    Click                       ${userInfoContainerButton}
    
Click My Favorite
    Wait For Elements State     ${goToMyFavorite}   visible     10
    Click                       ${goToMyFavorite}   
    sleep                       5
