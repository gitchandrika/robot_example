*** Settings ***
Documentation    Suite description
Library  SeleniumLibrary
Resource  ../resource/resource_1.robot

*** Test Cases ***
TC_1
    ${res}=  browser Open and maximize
    login  ${res}  P@ssw0rd94
    Close Browser

#Test title
#    [Tags]    DEBUG
#    Provided precondition
#    When action
#    Then check expectations
#
#*** Keywords ***
#Provided precondition
#    Setup system under test