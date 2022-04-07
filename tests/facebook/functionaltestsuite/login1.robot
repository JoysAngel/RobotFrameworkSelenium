*** Settings ***
Library  SeleniumLibrary
*** Variables ***
${web_url}  https://www.google.com/
${search_p}  Amazon.in

*** Test Cases ***
Login Screen Test
    [Documentation]  this is a login screen for users
    [Tags]  users
    Log  Hello

Registration Screen Test
   [Documentation]  This is the registration screen for users
   [Tags]  users
   Log  Sucess

Admin Login Test
   [Documentation]  this page is for admins
   [Tags]  Admin
   Log  Admin

Google Test
   [Documentation]  google test
   [Tags]  internet
   #open Browser  https://www.google.com/  chrome
   open Browser    ${web_url}   chrome
   Maximize Browser Window
   #Input Text  name:q  Amazon.in
   Input Text   name:q  ${search_p}
   Submit form
   close Browser

*** Keywords ***