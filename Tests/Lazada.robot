*** Settings ***
Resource    ../Resources/Keywords/Lazada.robot

#*** Variables ***
#${URL}  https://www.lazada.com.ph/
#${searchProd}   Selfie Stick

*** Test Cases ***
[TC-001] Open Lazada Website
    Lazada.Open Chrome Browser  ${URL}
#    Lazada.Login To Lazada

[TC-002] Search For Product
    Lazada.Input Search Term    ${searchProd}
    Lazada.Click Lazada Search Button
    Lazada.Verify If Page Contains Results
    Lazada.Click First Item
    Lazada.Verify If Page Contains Selfie Stick

[TC-003] Add Product To Cart
    Lazada.Click Add To Cart Button
#
[TC-004] Login
    Lazada.Verify If Login Modal Popup
    Lazada.Input Email
    Lazada.Input Password
#
[TC-005] Network Traffic
    Lazada.Network Traffic
#
#[TC-006] Proceed To Checkout
#    Lazada.Verify If Selfie Stick Was Added To Cart
#    Lazada.Go To Cart
#    Lazada.Verify If Selfie Stick Is In The Cart
#    Lazada.Click Proceed To Checkout Button

#[TC-004] Proceed To Checkout