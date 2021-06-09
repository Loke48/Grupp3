*** Keywords ***

Test Navigates to chrome Home Page

Begin WebTest

    OPEN BROWSER                                       about:blank                         ${BROWSER}
    #Maximize Browser Window

Go To Web Page

     Load Page
     Verify Page Loaded

Load Page

     Go to                                            ${URL}

Verify Page Loaded

    ${actualTerm}                                     get text                          xpath://*[@id="full-container"]/navigation-bar/div/h1
    Should Be Equal                                   ${Welcome_Message}                ${actualTerm}
#---------------------------------------------------------------------------------------------------------------




#---------------------------------------------------------------------------------------------------------------
End Web Test
    close browser