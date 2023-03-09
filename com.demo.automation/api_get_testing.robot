*** Settings ***

Library     RequestsLibrary

*** Variables ***

${base_url}     https://reqres.in
${page_number}      2

*** Test Cases ***
Get_userdetails
    create session  mysession   ${base_url}
    ${end_point}    set variable    /api/users?page=${page_number}
    ${response}=    GET On Session     mysession   ${end_point}
    #log to console  ${response.status_code}
    #log to console  ${response.content}

    #validations
    ${status_code}=     convert to string   ${response.status_code}
    Should Be Equal      ${status_code}     200