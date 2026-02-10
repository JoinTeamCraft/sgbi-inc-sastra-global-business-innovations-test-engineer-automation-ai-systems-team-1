* Settings *
Library     SeleniumLibrary
Resource    ../../resources/locators.robot

* Test Cases *
Login With Valid Credentials
    Open Browser    ${LOGIN_URL}    chrome
    Input Text      ${USERNAME_FIELD}    standard_user
    Input Text      ${PASSWORD_FIELD}    secret_sauce
    Click Button    ${LOGIN_BUTTON}
    Page Should Contain    Products
    Close Browser