*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${Browser}  chrome
${URL}  http://www.gmail.com
${EXECDIR}  C:\Python27\Scripts
${Delay}  2


*** Keywords ***
browser Open and maximize
    Open Browser  ${URL}  ${Browser}
    Maximize Browser Window
    ${title}  Get title
    [Return]  ${title}

login
    [Arguments]  ${username}  ${password}
    Input Text  id:identifierId  ${username}
    Set Selenium Speed  ${Delay}
    click element  xpath=(//span[@class='RveJvd snByac'])[2]
    Set Selenium Speed  ${Delay}
    Input Text  name:password  ${password}
    Set Selenium Speed  ${Delay}
    Click Element  //div[@id="passwordNext"]/content
    Set Selenium Speed  ${Delay}
    Click Element  xpath://div[@class='bzn']//span[text()='More']

