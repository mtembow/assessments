*** Settings ***
Library     RequestsLibrary
Resource    ../Resources/Resource.robot

*** Variables ***
${dog-api}     api/breeds/list/all

*** Test Cases ***
TC2_Verify_Retriver
    Start the session
    ${response}=  Get On Session  myssion  ${dog-api}
    ${breeds}=  convert to string  ${response.content}

    should not contain  ${breeds}  retriver

