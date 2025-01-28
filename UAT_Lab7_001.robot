*** Settings ***
Documentation    Test the Travel Insurance Inquiry Form functionality
Library           SeleniumLibrary
Resource          resource_lab7.robot

*** Test Cases ***
1. Open Form
    Open Browser To Form Page

2. Fill And Submit Form
    Enter Form Details
    Submit The Form
    Verify Completed Page Is Open

*** Keywords ***
Enter Form Details
    Input Text    id=firstname        Somsong
    Input Text    id=lastname         Sandee
    Input Text    id=destination      Europe
    Input Text    id=contactperson    Sodsai Sandee
    Input Text    id=relationship     Mother
    Input Text    id=email            somsong@kkumail.com
    Input Text    id=phone            081-111-1234

Submit The Form
    Click Button    id=submitButton

Verify Completed Page Is Open
    Completed Page Should Be Open
