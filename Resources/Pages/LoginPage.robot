*** Settings ***
Documentation       LoginPage
Library             Browser


*** Variables ***
${userMail}         yemeksepeticase@gmail.com
${userPass}         Yemekspt123.
${userName}         Yemek S.
# Login Page
${mailAddress}      id=UserName
${password}         id=password
${submitButton}     id=ys-fastlogin-button


*** Keywords ***
Login With Crendentials
    [Arguments]     ${user_mail}=${userMail}    ${user_pass}=${userPass}
    Fill Text       ${mailAddress}              ${user_mail}
    Fill Text       ${password}                 ${user_pass}
    Click           ${submitButton}
