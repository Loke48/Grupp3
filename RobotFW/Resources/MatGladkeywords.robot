*** Keywords ***

Test Navigates to chrome Home Page

Begin WebTest

    OPEN BROWSER                                      about:blank                         ${BROWSER}
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
#Bröd Test /Isac
Go To Recept

    Click Element                                     id=recipe-btn
    Sleep                                             2s
    ${actualrecept}                                   get text                          xpath:/html/body/div/navigation-bar/div/h1
    Should Be Equal                                   ${Recept_Message}                 ${actualrecept}

Go To Brod

    Click Element                                     xpath://*[@id="recipe-categories-container"]/collection-view/ul/li[12]
    Sleep                                             2s
    ${actualbrod}                                     get text                          xpath:/html/body/div/navigation-bar/div/h1
    Should Be Equal                                   ${Brod_Message}                   ${actualbrod}                         

#---------------------------------------------------------------------------------------------------------------


#---------------------------------------------------------------------------------------------------------------
End Web Test
    close browser