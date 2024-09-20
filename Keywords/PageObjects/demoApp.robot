*** Settings ***

Resource            ${EXECDIR}/Resources/CommonResource.robot

*** Keywords ***

Go to demo app dashboard
    UserDetails

Go to login page
    demo app login
    Verify title page
    Verify User Details
