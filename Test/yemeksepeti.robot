*** Settings ***
Documentation    Yemeksepeti
Library  DebugLibrary
Library  SeleniumLibrary
Resource    ../Resources/Pages/LoginPage.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/Pages/CityPage.robot 
Resource    ../Resources/Pages/HomePage.robot 
Resource    ../Resources/Pages/RestaurantListPage.robot 
Resource    ../Resources/Pages/RestaurantPage.robot
Resource    ../Resources/Pages/FavoritePage.robot 

Test Setup      Begin Web Test
Test Teardown   End Web Test

*** Test Cases ***
Yemeksepeti Success Login
    Common.Open Home Page
    CityPage.Choose City
    CityPage.Dont show pop-ups with cookies
    LoginPage.Login With Crendentials
    HomePage.Open Choose Region Container
    HomePage.Select Random Regions
    HomePage.Click Search Restaurant Button
    RestaurantListPage.Close Joker PopUp If Displayed
    RestaurantListPage.Select Random Restaurant
    RestaurantPage.Close Joker PopUp If Displayed
    RestaurantPage.Add Favorite Restaurant
    HomePage.Open User Detail Container
    HomePage.Click My Favorite
    FavoritePage.User Validates Restaurant Added To The Favorites


    




