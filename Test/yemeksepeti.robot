*** Settings ***
Documentation   Yemeksepeti
# https://marketsquare.github.io/robotframework-browser/Browser.html
# https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html      #Library   SeleniumLibrary
Test Setup      Begin Web Test
Test Teardown   End Web Test
Library         DebugLibrary
Library         Browser
Resource        ../Resources/YemekSepetiApp.robot


*** Test Cases ***
User can add favorite restaurant
    Open Home Page and User choose city
    YemekSepetiApp.Dont show pop-ups with cookies
    User logins from home page
    User add restaurant to the favorites
    User navigate to favorite page from homepage
    YemekSepetiApp.User validates restaurant added to the favorites
