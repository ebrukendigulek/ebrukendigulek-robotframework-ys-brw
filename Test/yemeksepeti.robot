*** Settings ***
Documentation    Yemeksepeti
Library  DebugLibrary
Library  SeleniumLibrary
Resource    ../Resources/Common.robot
Resource    ../Resources/YemekSepetiApp.robot


Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Test Cases ***
User can add favorite restaurant
    YemekSepetiApp.Open Home Page and User choose city
    YemekSepetiApp.Dont show pop-ups with cookies
    YemekSepetiApp.User logins from home page
    YemekSepetiApp.User add restaurant to the favorites
    YemekSepetiApp.User navigate to favorite page from homepage
    YemekSepetiApp.User validates restaurant added to the favorites


    




