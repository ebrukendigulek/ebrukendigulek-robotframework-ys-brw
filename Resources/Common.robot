*** Settings ***
Documentation   CommonPage
Library         DebugLibrary
Library         Browser


*** Variables ***
${defaultBrowser}   chromium
${baseUrl}          https://www.yemeksepeti.com/


*** Keywords ***
Begin Web Test
    [Arguments]         ${brw}=${defaultBrowser}
    New Browser         ${brw}      headless=false      channel=chrome
    New Context         viewport={'width': 1920, 'height': 1200}
    New Page            about:blank
    Set Strict Mode     False

End Web Test
    Close Browser

Open Home Page
    Go To               ${baseUrl}
    Wait For Page Loaded

Wait For Page Loaded
    Wait For Function   document.readyState === "complete"   timeout=5

