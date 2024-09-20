*** Settings ***

Resource            ${EXECDIR}/Resources/CommonResource.robot
Suite Setup         Suite Setup
Suite Teardown      Suite Teardown

*** Test Cases ***

Login to dashboard
    Go to login page
    log  user logged-in

