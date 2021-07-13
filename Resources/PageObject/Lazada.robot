*** Settings ***
Documentation  This file contains all Lazada Search page objects

*** Variables ***
${txtSearch}    name:q
${URL}          https://www.lazada.com.ph/
${searchProd}   Selfie Stick
${searchBtn}    xpath://*[@id="topActionHeader"]/div/div[2]/div/div[2]/form/div/div[2]/button
${clickItem}    xpath://*[@id="root"]/div/div[2]/div[1]/div/div[1]/div[2]/div[1]/div/div/div[1]/div[1]
${itemName}     Telego L01
${addToCart}    class:add-to-cart-buy-now-btn
${txtLogin}     Welcome
${inputEmail}   xpath://*[@id="container"]/div/div/div/div[2]/form/div/div[1]/div[1]/input
${email}        treacherousnicole@gmail.com
${inputPass}    xpath://*[@id="container"]/div/div/div/div[2]/form/div/div[1]/div[2]/input
${password}     password
${loginBtn}     xpath://*[@id="container"]/div/div/div/div[2]/form/div/div[2]/div[1]/button
${addSuccess}   1 new item(s) have been added to your cart
${goToCartBtn}  class:automation-checkout-order-total-button-cartButton
${itemId}       id:item_i111ff3bc6
${checkbox}     xpath://*[@id="item_i111ff3bc6"]/div/div[1]/label/input
${checkoutBtn}  class:automation-checkout-order-total-button-button
