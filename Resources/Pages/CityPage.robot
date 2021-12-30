*** Settings ***
Documentation    CityPage
Library  DebugLibrary
Library  SeleniumLibrary


*** Variables ***
${city}  xpath=//a[@href='/istanbul']

*** Keywords ***
Choose City
    Wait Until Element Is Visible  ${city}
    Click Element  ${city}
  
Dont show pop-ups with cookies
    Add Cookie  splashViewed  true
    Add Cookie  banabiPopoverShown  1