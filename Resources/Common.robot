*** Settings ***
Documentation    CityPage
Library  DebugLibrary
Library  SeleniumLibrary


*** Variables ***
${defaultBrowser}                      chrome
${baseUrl}  https://www.yemeksepeti.com/

*** Keywords ***
create session
    open browser  about:blank  chrome

close session
    close all browsers


Begin Web Test
    [Arguments]     ${brw}=${defaultBrowser}
    Open Browser    about:blank         ${brw}
    maximize browser window

End Web Test
    Close Browser

Open Home Page
    go to           ${baseUrl}
    Wait For Page Loaded

Wait For Page Loaded
    wait for condition  return document.readyState === "complete"   timeout=5