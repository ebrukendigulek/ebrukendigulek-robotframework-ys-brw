*** Settings ***
Documentation    YemeksepetiApp
Library  DebugLibrary
Library  SeleniumLibrary
Resource    ../Resources/Pages/LoginPage.robot
Resource    ../Resources/Common.robot
Resource    ../Resources/Pages/CityPage.robot 
Resource    ../Resources/Pages/HomePage.robot 
Resource    ../Resources/Pages/RestaurantListPage.robot 
Resource    ../Resources/Pages/RestaurantPage.robot
Resource    ../Resources/Pages/FavoritePage.robot 


*** Keywords ***
Open Home Page and User choose city
    Common.Open Home Page
    CityPage.Choose City

Dont show pop-ups with cookies
    CityPage.Dont show pop-ups with cookies

User logins from home page
    LoginPage.Login With Crendentials

User add restaurant to the favorites
    HomePage.Open Choose Region Container
    HomePage.Select Random Regions
    HomePage.Click Search Restaurant Button
    RestaurantListPage.Close Joker PopUp If Displayed
    RestaurantListPage.Select Random Restaurant
    RestaurantPage.Close Joker PopUp If Displayed
    RestaurantPage.Add Favorite Restaurant

User navigate to favorite page from homepage
    HomePage.Open User Detail Container
    HomePage.Click My Favorite

User validates restaurant added to the favorites
    FavoritePage.User Validates Restaurant Added To The Favorites

