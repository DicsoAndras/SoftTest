*** Settings ***
Library           Selenium2Library

*** Test Cases ***
optikart_valid
    Open Browser    https://keprendeles.optikart.hu/login/?redirect_to=https%3A%2F%2Fkeprendeles.optikart.hu%2Fmy-account%2F    Firefox
    Input Text    //*[@id="username-5474"]    dicsandris
    Input Password    //*[@id="user_password-5474"]    Andris07
    Click Button    //*[@id="um-submit-btn"]
    Page Should Contain    Üdv Dicső András!
    Click Element    //*[@id="post-99"]/div/div/nav/ul/li[6]/a
    Close Browser

optikart_empty_pass
    Open Browser    https://keprendeles.optikart.hu/login/?redirect_to=https%3A%2F%2Fkeprendeles.optikart.hu%2Fmy-account%2F    Firefox
    Input Text    //*[@id="username-5474"]    dicsandris
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

optikart_empty_user
    Open Browser    https://keprendeles.optikart.hu/login/?redirect_to=https%3A%2F%2Fkeprendeles.optikart.hu%2Fmy-account%2F    Firefox
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    Andris07
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Close Browser

optikart_empty_cred
    Open Browser    https://keprendeles.optikart.hu/login/?redirect_to=https%3A%2F%2Fkeprendeles.optikart.hu%2Fmy-account%2F    Firefox
    Input Text    //*[@id="username-5474"]    ${EMPTY}
    Input Password    //*[@id="user_password-5474"]    ${EMPTY}
    Click Button    //*[@id="um-submit-btn"]
    Element Should Contain    //*[@id="um-error-for-username-5474"]    Please enter your username or email
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Please enter your password
    Close Browser

optikart_wrong_user
    Open Browser    https://keprendeles.optikart.hu/login/?redirect_to=https%3A%2F%2Fkeprendeles.optikart.hu%2Fmy-account%2F    Firefox
    Input Text    //*[@id="username-5474"]    dicandris
    Input Password    //*[@id="user_password-5474"]    Andris07
    Click Button    //*[@id="um-submit-btn"]
    Click Element    //*[@id="post-99"]/div/div/nav/ul/li[6]/a
    Element Should Contain    //*[@id="um-error-for-user_password-5474"]    Password is incorrect. Please try again.
    Close Browser
