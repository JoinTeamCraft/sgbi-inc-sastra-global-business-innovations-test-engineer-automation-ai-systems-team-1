*** Settings ***
Documentation     Template for common locators
Library           SeleniumLibrary

* Variables *
${LOGIN_URL}               https://www.saucedemo.com/
${BROWSER}                 chrome
${USER_INPUT}              id=user-name
${PASS_INPUT}              id=password
${LOGIN_BTN}               id=login-button
${SORT_CONTAINER}          class=product_sort_container
${ADD_TO_CART_JACKET}      id=add-to-cart-sauce-labs-fleece-jacket