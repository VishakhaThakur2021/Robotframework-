*** Settings ***

Library             SeleniumLibrary
Resource            ${EXECDIR}/Keywords/PageObjects/demoApp.robot
Resource            ${EXECDIR}/Keywords/PageObjects/loginPage.robot
Resource            ${EXECDIR}/Keywords/PageObjects/registerPage.robot
Variables           ${EXECDIR}/Variables/locators.robot
Variables           ${EXECDIR}Variables/variables.robot

*** Keywords ***

Suite Setup
    Open My Browser    ${SiteUrl}    ${Browser}
    Maximize Browser Window

Suite Teardown
    Close Browser
