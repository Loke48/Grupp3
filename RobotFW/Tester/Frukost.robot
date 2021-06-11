*** Settings ***
Documentation        UI testing in PetClinic by Robot Framework
...                  this is to test funcitionalities of Owners -- Eli
Resource             Frukost-Setup.robot
Library              SeleniumLibrary
Test Setup          Generate Tests
Test Teardown       Close Active Browser

*** Variables ***
${BROWSER}      chrome
${URL}          http://app.matglad.nu/#/startview


*** Test Cases ***
User Can Access The Web
    [Documentation]         Web users can access the web
    [Tags]                  access
    Go To Web
    Close Active Browser


*** Test Cases ***
Acessing Frukost Tab
      [Documentation]       Robot will attempt to acess the Menu
      [Tags]                Menu
      Go To Web
      Click Meny
      Close Active Browser

*** Test Cases ***
Acessing Frukost Tab
      [Documentation]       Robot will attempt to acess the frukost tab
      [Tags]                Frukost
      Go To Web
      Click Meny
      Click Frukost
      Close Active Browser

*** Test Cases ***
Click Varm Chocolate
    [Documentation]         Robot will click though the menu and acess warm chocolate
   [Tags]                  Meal
    Go To Web
    Click Meny
    Click Frukost
    Click Meal
   Close Active Browser

