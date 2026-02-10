* Settings *
Library     SeleniumLibrary
Resource    locators.robot

* Keywords *
Open SauceDemo Website
    Open Browser    ${LOGIN_URL}    ${BROWSER}
    Maximize Browser Window

Login With Standard User
    [Arguments]    ${username}    ${password}
    Input Text     ${USER_INPUT}    ${username}
    Input Text     ${PASS_INPUT}    ${password}
    Click Button   ${LOGIN_BTN}

Sort Products Z to A
    Select From List By Value    ${SORT_CONTAINER}    za

Verify Product Exists
    [Arguments]    ${product_name}
    Page Should Contain    ${product_name}
