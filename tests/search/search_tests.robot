* Settings *
Library    SeleniumLibrary
Resource   ../../resources/locators.robot

* Test Cases *
Verify Product Search and Filter
    Open Browser    ${LOGIN_URL}    chrome
    Input Text      id=user-name    standard_user
    Input Text      id=password     secret_sauce
    Click Button    id=login-button
    
    # Product filter cheyyunnu (Z to A)
    Select From List By Value    class=product_sort_container    za
    Page Should Contain    Test.allTheThings() T-Shirt (Red)
    
    Close Browser
