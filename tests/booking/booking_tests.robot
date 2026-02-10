* Settings *
Library    SeleniumLibrary
Resource   ../../resources/locators.robot

* Test Cases *
Add Item To Cart And Checkout
    # Aadyam login cheyyanam
    Open Browser    ${LOGIN_URL}    chrome
    Input Text      id=user-name    standard_user
    Input Text      id=password     secret_sauce
    Click Button    id=login-button
    
    # Item Cart-ilekku add cheyyuka
    Click Button    id=add-to-cart-sauce-labs-backpack
    Click Element   class=shopping_cart_link
    
    # Checkout thudanguka
    Click Button    id=checkout
    Page Should Contain    Checkout: Your Information
    Close Browser
