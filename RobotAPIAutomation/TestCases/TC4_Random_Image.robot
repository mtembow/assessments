*** Settings ***
Library     RequestsLibrary
Resource    ../Resources/Resource.robot

*** Variables ***
${dog-api}     api/breed/retriever/golden/images/random/

*** Test Cases ***
TC4_Random_Image
    Start the session
    ${response}=  Get On Session  myssion  ${dog-api}
    log to console  ${response.status_code}
    log to console  ${response.content}
