*** Settings ***
Library     SeleniumLibrary

*** Keywords ***
Generate Tests
    Open Browser            about:blank     ${BROWSER}

# Access web page
Go To Web
    Load Web
    Verify Page Loaded
Load Web
    Go To                   ${URL}
Verify Page Loaded
    ${GET_TITLE}            Get Title
    Should Be Equal         ${GET_TITLE}        Matglad
    Page Should Contain                         Matglad

Click Meny
    Page Should Contain Element         //*[@id="recipe-btn"]     #"menu" link
    Click Element                       //*[@id="recipe-btn"]

Click Frukost
    Page Should Contain Element         //*[@id="recipe-categories-container"]/collection-view/ul/li[14]/a/div/img
    Wait Until Element Is Visible       //*[@id="recipe-categories-container"]/collection-view/ul/li[14]/a/div/img
    Click Element                       //*[@id="recipe-categories-container"]/collection-view/ul/li[14]/a/div/img
    Page Should Contain                  Frukost
Click Meal

    Page Should Contain Element         //*[@id="recipes-container"]/collection-view/ul/li[1]/a/div/img
    Wait Until Element Is Visible       //*[@id="recipes-container"]/collection-view/ul/li[1]/a/div/img
    Wait Until Element Is Enabled       //*[@id="recipes-container"]/collection-view/ul/li[1]/a/div/img
    Click Element                       //*[@id="recipes-container"]/collection-view/ul/li[1]/a/div/img

    Page Should Contain                 Varm mjölkchoklad

Close Active Browser
    Close Browser     #Close the test


