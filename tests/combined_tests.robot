* Settings *
Resource    ../resources/keywords.robot
Test Teardown    Close Browser

* Test Cases *
Complete Automation Workflow
    [Documentation]    Professional Refactored Test
    Open SauceDemo Website
    Login With Standard User    standard_user    secret_sauce
    Sort Products Z to A
    Verify Product Exists    Test.allTheThings() T-Shirt (Red)
    Click Button    ${ADD_TO_CART_JACKET}