* Settings *
Library     SeleniumLibrary
Resource    ../../resources/car_search_locators.robot

* Variables *
${URL}                  https://morent-car.archisacademy.com/
${BROWSER}              chrome
                   

* Test Cases *
Verify Car Search Validation
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    
    # Locators file-il ninnulla variable upayogikkunnu
    Wait Until Element Is Visible    ${SEARCH_BTN}    15s
    Click Element                    ${SEARCH_BTN}
    
    # Page maarunnilla ennu verify cheyyunnu
    Location Should Be    ${URL}
    Sleep                          15s

     # Landing page load aayo ennu verify cheyyunnu (Ithu dhaaralam mathi)
    Wait Until Element Is Visible      xpath=//input[@placeholder='Search something here']   5s
    Log To Console                     Reached Landing Page Fast!
    Click Element                       //*[@id="2"]/div/div/span    
    Sleep                             5s
    
    [Teardown]    Close Browser