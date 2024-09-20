*** Settings ***

Resource            ${EXECDIR}/Resources/CommonResource.robot

*** Keywords ***

demo app login
    Wait Until Page Contains Element    ${login_tab}
    Click button    ${login_tab}

Verify title page
    Title Should Be    User Information - Demo App

Verify User Details
     [Arguments]    ${username}    ${first_name}    ${last_name}    ${phone}
    Table Row Should Contain       ${table_data}    2       ${username}
    Table Row Should Contain       ${table_data}    3       ${first_name}
    Table Row Should Contain       ${table_data}    4       ${last_name}
    Table Row Should Contain       ${table_data}    5       ${phone}
