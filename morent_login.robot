* Settings *
Library     SeleniumLibrary
Resource    ../resources/morent_locatores.robot

* Test Cases *
MoRent Login Test
    Open Browser    ${MORENT_URL}    ${BROWSER}
    Maximize Browser Window
    
    # 1. Email Step
    Wait Until Element Is Visible    ${EMAIL_FIELD}    15s
    Input Text      ${EMAIL_FIELD}     doe+clerk_test@example.com
    Sleep                            1s
    
    # Blue button click aakunnu ennu urappu varuthaam
    Wait Until Element Is Visible    ${EMAIL_CONT}    15s
    Click Element                    ${EMAIL_CONT}
    Sleep                            2s
    
   # Password Step
   Wait Until Element Is Visible    ${PASS_FIELD}     15s
    Input Password                   ${PASS_FIELD}     morenttest@12345
    # Password-nu shesham ulla button click cheyyunnu
    Wait Until Element Is Visible    ${PASS_CONT}      15s
    Click Element                    ${PASS_CONT}
    
    # Dashboard load aakuvaan wait cheyyuka
    Sleep                            10s
    
# Password click aayi kazhinjaal 2-3 second maathram wait cheyyuka
    Sleep                            3s
    
    # Vegathil landing page-ilekku redirect cheyyunnu
    Go To                            https://morent-car.archisacademy.com/
    
    # Landing page load aayo ennu verify cheyyunnu (Ithu dhaaralam mathi)
    Wait Until Element Is Visible      xpath=//input[@placeholder='Search something here']   5s
    Log To Console                     Reached Landing Page Fast!
 # 1. Search bar-il car brand type cheyyunnu
    Input Text                        xpath=//input[@placeholder='Search something here']    Nissan GT - R
    Sleep                               7s
    Click Element                       //*[@id="2"]/div/div/span    
    Sleep                             5s
    # 3. RENT NOW BUTTON CLICK (Corrected Locator)
    Sleep                            2s
    Execute Javascript               window.scrollTo(0, 1000)
    Sleep                            5s

    # Click Element upayogichaal mathi, pakshe button name "Rent Now" aakkanam
    Wait Until Element Is Visible    xpath=//button[contains(.,'Rent Now')]    5s
    Click Element                    xpath=//button[contains(.,'Rent Now')]
    
    Log To Console                   Rent Now Button Clicked Successfully!
    
    # 4. STEP 1: BILLING INFO FILLING (Ippo ningalude screen-il ullathu)
    Wait Until Element Is Visible    //*[@id="name"]    20s
    Input Text                       //*[@id="name"]    Ashraf
    Input Text                       //*[@id="phone_number"]    9876543210
    Input Text                       //*[@id="address"]    Kochi, Kerala
    Input Text                       //*[@id="city"]     Kochi
    
    # Next button click cheyyunnu (Step 2-lekku pookaan)
    Click Element                    xpath=//button[contains(.,'Next')]
    Log To Console                   Billing Info Step Completed!
    
    # 5. FINAL BOOKING (Booking purthiyaakkan)
    # Baaki steps-um ithu pole thanne 'Next' click cheithu purthiyaakkaam
    # Ennittu Dashboard-il poyi details check cheiyyaam
    # 5. RENTAL INFO & PAYMENT (Rental, Payment steps automate cheyyunnu)
    Sleep                            5s
    # Page-inte bottom-ilekku scroll cheyyunnu
    Execute Javascript               window.scrollTo(0, document.body.scrollHeight)
    Sleep                            2s

    # Adutha randu 'Next' buttons click cheyyunnu (Rental & Payment steps skip cheyyaan)
    # Note: Website structure anusarichu idhu vary cheyyam
    Click Element                    xpath=//button[contains(.,'Next')]
    Sleep                            3s
    Click Element                    xpath=//button[contains(.,'Next')]
    Log To Console                   Reached Final Confirmation Step!

    # 6. FINAL BOOKING (Confirmation & Rent Now)
    Execute Javascript               window.scrollTo(0, document.body.scrollHeight)
    
    # Terms and Conditions checkbox click cheyyunnu
    Wait Until Element Is Visible    xpath=(//input[@type='checkbox'])[1]    20s
    Click Element                    xpath=(//input[@type='checkbox'])[1]
    
    # Final 'Rent Now' booking button click cheyyunnu
    Click Element                    xpath=//button[contains(.,'Rent Now')]
    Log To Console                   BOOKING COMPLETED SUCCESSFULLY!