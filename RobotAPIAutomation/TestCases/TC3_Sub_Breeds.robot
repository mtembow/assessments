*** Settings ***
Library     RequestsLibrary
Resource    ../Resources/Resource.robot

*** Variables ***
${dog-api}     api/breed/retriever/list

*** Test Cases ***
TC3_Sub_Breeds_Retriever
    Start the session
    ${response}=  Get On Session  myssion  ${dog-api}
    log to console  ${response.status_code}
    log to console  ${response.content}
