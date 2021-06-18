*** Settings ***

Documentation                               Infotiv Petclinic Performance Test
Resource                                    ../Resources/MatGladkeywords.robot
Library                                     SeleniumLibrary
Test Setup                                  Begin WebTest
Test Teardown                               End Web Test

*** Variables ***

${BROWSER}                                  chrome
${URL}                                      http://app.matglad.nu/#/startview
${Welcome_Message}                          Matglad
${Recept_Message}                           ReceptVäljaren
${Brod_Message}                             Bröd

*** Test Cases ***

Testcase 1: Test to access webpage

    [Documentation]             Test to access webpage
    [Tags]                      WebPage_test

    Given Go to Web Page

Testcase 2: Test brod meny

    [Documentation]             Test to access brod meny
    [Tags]                      Brod_test

    Given Go to Web Page
    When Go To Recept
    Then Go To Brod

