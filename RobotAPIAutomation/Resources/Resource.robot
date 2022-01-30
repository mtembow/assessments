*** Settings ***

*** Variables ***
${base_url}     https://dog.ceo/

*** Keywords ***
Start the session
    create session      myssion    ${base_url}