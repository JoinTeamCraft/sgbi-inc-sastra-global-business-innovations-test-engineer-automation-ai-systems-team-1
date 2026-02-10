* Settings *
Library     SeleniumLibrary
Resource    ../resources/morent_locatores.robot

* Test Cases *
MoRent Login Test
    Open Browser    ${MORENT_URL}    ${BROWSER}
    Maximize Browser Window
    
    # 1. Email Step
    Wait Until Element Is Visible    ${EMAIL_FIELD}    15s
    Input Text      ${EMAIL_FIELD}    ashrafmt855@gmail.com
    Sleep                            1s
    
    # Blue button click aakunnu ennu urappu varuthaam
    Wait Until Element Is Visible    ${EMAIL_CONT}    15s
    Click Element                    ${EMAIL_CONT}
    Sleep                            2s
    
   # Password Step
   Wait Until Element Is Visible    ${PASS_FIELD}     15s
    Input Password                   ${PASS_FIELD}      Ashraf@"123
    # Password-nu shesham ulla button click cheyyunnu
    Wait Until Element Is Visible    ${PASS_CONT}      15s
    Click Element                    ${PASS_CONT}
    
    # Dashboard load aakuvaan wait cheyyuka
    Sleep                            10s
    
    # Password click aayi kazhinju Clerk page load aavaan oru 5-10 second wait
    Sleep                            3s
    
    # Clerk-ile "Signed in" status upayogichu landing page-ilekku direct pookunnu
      # Login kazhinju nerittu dashboard-ilekku pookunnu
      #     Wait Until Element Is Visible    xpath=//input[@placeholder='Search something here']    20s
    Log To Console                   Reached Landing Page Fast!

    # --- STEP 1: CAR SEARCH ---
    Input Text                       xpath=//input[@placeholder='Search something here']    Tesla
    Press Keys                       xpath=//input[@placeholder='Search something here']    ENTER
    Sleep                            5s
    Click Element                    xpath=(//button[contains(text(),'Rental Car')])[1]
    Sleep                            5s

    # --- STEP 2: DASHBOARD (Randamathe Code Ivide Add Cheyyuka) ---
    Go To                            https://morent-car.archisacademy.com/dashboard
    Wait Until Element Is Visible    xpath=//h1[contains(text(),'Details Rental')]    20s
   Log To Console                   Dashboard Loaded Successfully!
    Sleep                            10s
   # Dashboard load aavaan wait cheyyunnu
    Wait Until Element Is Visible    xpath=//h1[contains(.,'Details Rental')]    25s
    Log To Console                   Dashboard Loaded Successfully!

   # --- TICKET STATUS UPDATE ---
    # Dashboard-ile "Mark as Completed" button click cheyyunnu
   Wait Until Element Is Visible    xpath=(//button[contains(.,'Mark as Completed')])[1]    20s
     Click Element                    xpath=(//button[contains(.,'Mark as Completed')])[1]
    
    Log To Console                   Ticket marked as Completed!
    Log To Console                   ALL TASKS FINISHED SUCCESSFULLY!
    Sleep                            10s

   
    # Photo-il randu Rental Car buttons undu, athukondu first one select cheyyunnu
    # Button kaanan wait cheyyunnu, ennittu click cheyyunnu
    Wait Until Element Is Visible    xpath=(//button[contains(.,'Rental Car')])[1]    20s
    Click Element                    xpath=(//button[contains(.,'Rental Car')])[1]
    Sleep                            5s
    
    Log To Console                   Car Search and Rental Click Success!
    sleep                             10s
    # --- DASHBOARD FLOW ---
    Go To                            https://morent-car.archisacademy.com/dashboard
    Wait Until Element Is Visible    xpath=//h1[contains(text(),'Details Rental')]    20s
    Log To Console                   Dashboard Loaded Successfully!