*** Settings ***

Resource            ${EXECDIR}/Resources/CommonResource.robot
Suite Setup         Suite Setup
Suite Teardown      Suite Teardown

*** Test Cases ***

Register user
     Go to demo app dashboard
     log  user is registered


