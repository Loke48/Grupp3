*** Settings ***

Documentation                               Testar Selenium och RobotFramework
Resource                                    ../Resources/MatGladKeywords.robot
Library                                     SeleniumLibrary
Test Setup                                  Begin Web Test
Test Teardown                               End Web Test

*** Variables ***

${BROWSER}                                  chrome
${URL}                                      http://app.matglad.nu/#/startview
${Welcome_Message}                          Matglad
${Recept_Message}                           ReceptVäljaren
${Utflykt_Message}                          Utflyktsmat

*** Test Cases ***

Testcase 1: Test to access webpage

    [Documentation]        Test to access webpage
    [Tags]                 WebPage_test

    Given Go To Web Page

Testcase 2: Test utflyktsmat meny

    [Documentation]        Test utflyktsmat meny
    [Tags]                 UtflyktsmatMeny_test

    Given Go To Web Page
    When Go To Recept