*** Settings ***
Library  SeleniumLibrary
Library  DuplicateListener.py
Suite Setup  Fail if suite has duplicate test names
Suite Teardown  Close all browsers


*** Variables ***
${url}      http://www.way2automation.com/angularjs-protractor/webtables/
${FirstName}    Baba
${LastName}     Baba
${UserName}     Baba
${Password}     Baba
${Customer}     16
${Role}         Customer
${Email}        Baba@gmail.com
${CellPhone}    0112233445

*** Test Cases ***
Navigate
    open browser     ${url}   chrome
    maximize browser window
    title should be     Protractor practice website - WebTables
    set selenium implicit wait  10 seconds
    click button   xpath://*[@class="btn btn-link pull-right" and @type="add"]

    input text   xpath://*[@name="FirstName"]    ${FirstName}
    input text   xpath://*[@name="LastName"]    ${LastName}
    input text   xpath://*[@name="UserName"]    ${UserName}
    input text   xpath://*[@name="Password"]    ${Password}

    select radio button     optionsRadios     ${Customer}

    select from list by label   RoleId    ${Role}

    input text   xpath://*[@name="Email"]    ${Email}
    input text   xpath://*[@name="Mobilephone"]    ${CellPhone}

    click button    xpath://*[@class="btn btn-success"]
    sleep   10
    [Teardown]
