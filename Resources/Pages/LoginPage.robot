*** Settings ***
Documentation  LoginPage
Library  SeleniumLibrary

*** Variables ****
${userMail}        yemeksepeticase@gmail.com
${userPass}        Yemekspt123.
${userName}        Yemek S.
# Login Page
${mailAddress}      id=UserName
${password}         id=password
${submitButton}     id=ys-fastlogin-button

*** Keywords ***
Login With Crendentials
    [Arguments]     ${user_mail}=${userMail}  ${user_pass}=${userPass}
    Input Text      ${mailAddress}      ${user_mail}
    Sleep   1
    Input Password  ${password}   ${user_pass}
    Click Element   ${submitButton}
    Sleep   3
    # Wait For Page Loaded

