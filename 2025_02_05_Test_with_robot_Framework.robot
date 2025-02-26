*** Settings ***
Library           Selenium2Library

*** Test Cases ***
Login_with_empty_username
    Open Browser    https://www.saucedemo.com/    firefox
    Selenium2Library.Input Text    //*[@id="user-name"]    ${EMPTY}
    Selenium2Library.Input Password    //*[@id="password"]    secret_sauve
    Selenium2Library.Click Button    //*[@id="login-button"]
    Selenium2Library.Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]    Epic sadface: Username is required
    Close Browser

Login_with_empty_password
    Open Browser    https://www.saucedemo.com/    firefox
    Selenium2Library.Input Text    //*[@id="user-name"]    standard_user
    Selenium2Library.Input Password    //*[@id="password"]    ${EMPTY}
    Selenium2Library.Click Button    //*[@id="login-button"]
    Selenium2Library.Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]    Epic sadface: Password is required
    Close Browser

Login_with_valid_credentials
    Open Browser    https://www.saucedemo.com/    firefox
    Selenium2Library.Input Text    //*[@id="user-name"]    standard_user
    Selenium2Library.Input Password    //*[@id="password"]    secret_sauve
    Selenium2Library.Click Button    //*[@id="login-button"]
    Close Browser

Login_with_empty_credentials
    Open Browser    https://www.saucedemo.com/    firefox
    Selenium2Library.Input Text    //*[@id="user-name"]    ${EMPTY}
    Selenium2Library.Input Password    //*[@id="password"]    ${EMPTY}
    Selenium2Library.Click Button    //*[@id="login-button"]
    Selenium2Library.Element Should Contain    //*[@id="login_button_container"]/div/form/div[3]    Epic sadface: Username is required
    Close Browser
