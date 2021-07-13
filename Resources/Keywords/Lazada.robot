*** Settings ***
Library     SeleniumLibrary
Resource    ../../Resources/PageObject/Lazada.robot
*** Keywords ***
Open Chrome Browser
    [Arguments]     ${URL}
    Open Browser    ${URL}    Chrome
#    Maximize Browser Window

Login To Lazada
    Click Element   xpath://*[@id="anonLogin"]/a
    Page Should Contain     Welcome to Lazada!
    Input Text  xpath://*[@id="container"]/div/div[2]/form/div/div[1]/div[1]/input  ${email}
    Input Text  xpath://*[@id="container"]/div/div[2]/form/div/div[1]/div[2]/input  ${password}
    Click Button   xpath://*[@id="container"]/div/div[2]/form/div/div[2]/div[1]/button
    Wait Until Element Is Visible   class:sufei-dialog
    Select Frame    id:sufei-dialog-content
    Wait Until Element Is Visible   id:nc_2_wrapper
    Drag And Drop By Offset   xpath://*[@id="nc_2_n1z"]  -2   258
#    Page Should Contain     Welcome to Lazada!
    Wait Until Element Is Visible   class:pc-slider
#    Select Frame    id:sufei-dialog-content
#    Drag And Drop By Offset   xpath://*[@id="nc_2_n1z"]     0   265
#    Wait Until Element Is Visible   class:pc-slider
#    Drag And Drop By Offset   xpath://*[@id="nc_2_n1z"]  -2     265
#    Page Should Contain     Welcome to Lazada!
#    Click Element   xpath://*[@id="container"]/div/div[2]/form/div/div[2]/div[1]/button
    Page Should Contain     Security Verification
#    Page Should Contain     Flash Sale

Input Search Term
    [Arguments]     ${searchProd}
    Input Text      ${txtSearch}    ${searchProd}

Click Lazada Search Button
    Press Keys  ${searchBtn}    RETURN

Verify If Page Contains Results
    Page Should Contain     ${searchProd}

Click First Item
    Click Element   ${clickItem}

Verify If Page Contains Selfie Stick
    Page Should Contain     ${searchProd}

Click Add To Cart Button
    Click Element   ${addToCart}

Verify If Login Modal Popup
    Wait Until Element Is Visible   class:login-iframe
    Page Should Contain     ${txtLogin}

Input Email
    Select Frame    class:login-iframe
    Input Text  ${inputEmail}   ${email}

Input Password
    Input Text  ${inputPass}    ${password}
#    Click Element   ${loginBtn}
    Wait Until Element Is Visible   class:pc-slider
    Drag And Drop By Offset   xpath://*[@id="nc_2_n1z"]  265     0

Network Traffic
#    Page Should Contain     Sorry, we have detected unusual traffic
    Wait Until Element Is Visible   xpath://*[@id="sufei-dialog-content"]
#    Page Should Contain     Sorry, we have detected unusual traffic
    Select Frame    xpath://*[@id="sufei-dialog-content"]
    Wait Until Element Is Visible   id:nocaptcha
    Set Focus To Element    id:nc_2_wrapper
    Drag And Drop By Offset   class:btn_slide  258    0
    Page Should Contain     To protect your account security

Verify If Selfie Stick Was Added To Cart
    Page Should Contain     ${addSuccess}

Go To Cart
    Click Element   ${goToCartBtn}

Verify If Selfie Stick Is In The Cart
    Page Should Contain     ${itemId}
    Page Should Contain Checkbox    ${checkbox}
    Checkbox Should Be Selected     ${checkbox}

Click Proceed To Checkout Button
    Click Button    ${checkoutBtn}


