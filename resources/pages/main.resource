*** Settings ***
Documentation       Base Resources

Library             Browser

Resource            ../pages/dash.resource
Resource            ../pages/login.resource



*** Keywords ***

Home Page login
        Set Browser Timeout         2
    New Browser      headless=False
    New Page    https://trade-sticker-dev.vercel.app  
    Get Text    .logo-container h2    contains    ${LOGO}
    ${TEXT}     Get Text    .logo-container h2
    Log To Console      ${TEXT}
    

start test
    New Browser     headless=False      browser=chromium
    Set Browser Timeout         2

finish test
    Sleep           1
    Take Screenshot