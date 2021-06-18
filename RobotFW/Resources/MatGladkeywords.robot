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
# Bröd Test /Isac
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
# Utflyktsmat Test /Ahmed,Likka

Go To Utflyktsmat

    Set Selenium Speed                                0.5s
    Click Element                                     xpath://*[@id="recipe-categories-container"]/collection-view/ul/li[13]/a/div/img
    ${actualutflykt}                                  get text                          xpath:/html/body/div/navigation-bar/div/h1
    Should Be Equal                                   ${Utflykt_Message}                ${actualutflykt}

#---------------------------------------------------------------------------------------------------------------
# Frukost Test /Elias

Click Meny

    Page Should Contain Element                       //*[@id="recipe-btn"]     #"menu" link
    Click Element                                     //*[@id="recipe-btn"]

Click Frukost

    Set Selenium Speed                                0.5s
    Click Element                                     xpath://*[@id="recipe-categories-container"]/collection-view/ul/li[14]
    ${actualFrukost}                                  get text                          xpath:/html/body/div/navigation-bar/div/h1
    Should Be Equal                                   ${Frukost_Message}                ${actualFrukost}

    #Set Selenium Speed                                0.5s
    #Page Should Contain Element                       //*[@id="recipe-categories-container"]/collection-view/ul/li[14]
    #Wait Until Element Is Visible                     //*[@id="recipe-categories-container"]/collection-view/ul/li[14]
    #Click Element                                     //*[@id="recipe-categories-container"]/collection-view/ul/li[14]
    #Page Should Contain                               Frukost

Click Meal

    Set Selenium Speed                                0.5s
    Page Should Contain Element                       //*[@id="recipes-container"]/collection-view/ul/li[1]/a/div/img
    Wait Until Element Is Visible                     //*[@id="recipes-container"]/collection-view/ul/li[1]/a/div/img
    Wait Until Element Is Enabled                     //*[@id="recipes-container"]/collection-view/ul/li[1]/a/div/img
    Click Element                                     //*[@id="recipes-container"]/collection-view/ul/li[1]/a/div/img
    Page Should Contain                               Varm mjölkchoklad

#----------------------------------------------------------------------------------------------------------------

End Web Test
    close browser