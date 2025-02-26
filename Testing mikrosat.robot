*** Settings ***
Library           Selenium2Library

*** Test Cases ***
testing mikrosat
    Open Browser    https://www.mikrosat.hu/    Firefox
    Click Element    //*[@id="profile__btn"]/span
    Click Element    //*[@id="container"]/header/div/div/div[2]/div/div[2]/div[3]/div/div[2]/div[2]/div[1]/a
    Input Text    //*[@id="emai"]    dicso.andras.dezso@diak.szbi-pg.hu
    Input Password    //*[@id="passwd1"]    Andris07
    Input Password    //*[@id="passwd2"]    Andris07
    Click Element    //*[@id="div_out_company_choose"]/div/div[2]/label
    Input Text    //*[@id="kap_mobile_sub"]    304641710
    Input Text    //*[@id="default_nev"]    Dicső András
    Input Text    //*[@id="default_irany"]    6080
    Click Element    //*[@id="newcust_default_mod"]/div[2]/div[4]/div/div/label
    Input Text    //*[@id="default_utca"]    Honvéd út 68
    Execute Javascript    window.scrollTo(0, 600)
    Click Element    //*[@id="button_reg"]
