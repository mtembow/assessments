*** Settings ***
Library     RequestsLibrary
Library     RequestsLibrary
Resource    ../Resources/Resource.robot

*** Variables ***
${dog-api}     api/breeds/list/all

*** Test Cases ***
TC_001_Get_All_Dog_Breeds
    Start the session
    ${response}=    Get On Session     myssion    ${dog-api}
    log to console  ${response.status_code}
    log to console  ${response.content}
