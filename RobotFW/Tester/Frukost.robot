*** Settings ***
Documentation                   UI testing in MatGlad by Robot Framework
...                             this is to test funcitionalities of Owners -- Eli
Resource                        RobotFW/Resources/MatGladkeywords.robot
Library                         SeleniumLibrary
Test Setup                      Begin WebTest
Test Teardown                   End Web Test 

*** Variables ***

${BROWSER}                      chrome
${URL}                          http://app.matglad.nu/#/startview
${Welcome_Message}              Matglad
${Frukost_Message}              Frukost

*** Test Cases ***

User Can Access The Web

      [Documentation]           Web users can access the web
      [Tags]                    access

      Given Go To Web Page

Acessing Meny Tab

      [Documentation]           Robot will attempt to acess the Menu
      [Tags]                    Menu

      Given Go To Web Page
      Then Click Meny
      
Acessing Frukost Tab

      [Documentation]           Robot will attempt to acess the frukost tab
      [Tags]                    Frukost

      Given Go To Web Page
      When Click Meny
      Then Click Frukost
      
#Click Varm Chocolate

      #[Documentation]           Robot will click though the menu and acess warm chocolate
      #[Tags]                    Meal

     # Given Go To Web Page
     # When Click Meny
     # And Click Frukost
     # Then Click Meal