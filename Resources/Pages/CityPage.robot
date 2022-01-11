*** Settings ***
Documentation   CityPage
Library         DebugLibrary
Library         Browser


*** Variables ***
${city}         xpath=//a[@href='/istanbul']


*** Keywords ***
Choose City
    Wait For Elements State     ${city}     visible     15
    Click                       ${city}
  
Dont show pop-ups with cookies
    Add Cookie      splashViewed            true    https://www.yemeksepeti.com/
    Add Cookie      banabiPopoverShown      1       https://www.yemeksepeti.com/