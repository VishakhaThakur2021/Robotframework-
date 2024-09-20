*** Settings ***

Resource            ${EXECDIR}/Resources/CommonResource.robot

*** Keywords ***

UserDetails
    [Arguments]    ${username}  ${password}     ${first_name}   ${last_name}    ${phone}
    Wait Until Page Contains Element    ${txt_username}
    Input Text     ${txt_username}    ${username}
    Wait Until Page Contains Element    ${txt_password}
    Input Text    ${txt_password}      ${password}
    Wait Until Page Contains Element    ${txt_firstname}
    Input Text    ${txt_firstname}     ${first_name}
    Wait Until Page Contains Element    ${txt_lastname}
    Input Text     ${txt_lastname}     ${last_name}
    Wait Until Page Contains Element    ${txt_phone}
    Input Text     ${txt_phone}     ${phone}
    Wait Until Page Contains Element    ${btn_submit}
    Click button    ${btn_submit}