*** Settings ***
Library  SeleniumLibrary

Suite Setup     log     Inside test suite Setup
Suite Teardown      log     Inside test suite Teardown
Test Setup      log  Inside test Setup
Test Teardown   log  Inside test teardown
*** Variables ***
${google_search}    https://www.google.com/
${search_query}     flipkart
${search_product}   Iphone
${email}    joysangelm@gmail.com
${mobnum}   9901711257
${password}   Almightygod@111
${email id}   joysangelm@gmail.com
*** Test Cases ***
google search test
    [Documentation]  Test to open google
    [Tags]  google
    open Browser    ${google_search}    chrome
    Maximize Browser Window
    Search data
    Submit form
    click Element   class:LC20lb

flipkart search test
    [Documentation]  Test for flipkart
    [Tags]  Shopping app
    sleep  2s
    click Button   class:_2KpZ6l
    sleep  2s
    Search flip data
    click Button    class:L0Z3Pu

buying flipkart test
    sleep  3s
    click Element  xpath=//html/body/div[1]/div/div[3]/div[1]/div[2]/div[4]/div/div/div/a/div[2]/div[1]/div[1]
    sleep  1s
    Switch Window  title:APPLE iPhone 13 ( 128 GB GB Storage, 0 GB RAM ) Online at Best Price On Flipkart.com
    sleep  2s
    click Element  xpath=//html/body/div[1]/div/div[3]/div[1]/div[1]/div[2]/div/ul/li[2]/form/button
    sleep  2s
    email address
    sleep  2s
    click Button  class:_2KpZ6l
    sleep  3s
    mobile number
    sleep  2s
    click Button  class:_20xBvF
    sleep  2s
    password
    sleep  2s
    click Button  xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[4]/button
    sleep  2s
    email id
    sleep  2s
    click Button    xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[3]/div/div/div/div/div[5]/span[2]/button
    sleep  2s




*** Keywords ***
Search data
    Input Text  name:q  ${search_query}
Search flip data
    Input Text  name:q  ${search_product}
email address
    Input Text  class:_17N0em   ${email}
mobile number
    Input Text  xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[2]/input   ${mobnum}
password
    Input Text  xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[1]/div/div/div/div/div[1]/div/form/div[2]/input   ${password}
email id
    Input Text  xpath=//html/body/div[1]/div/div[2]/div/div[1]/div[3]/div/div/div/div/div[5]/span[1]/form/input     ${email id}