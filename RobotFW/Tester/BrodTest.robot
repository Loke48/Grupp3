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

*** Test Cases ***

Testcase 1: Test to access webpage

    [Documentation]             Test to access webpage
    [Tags]                      WebPage_test

    Given Go to Web Page