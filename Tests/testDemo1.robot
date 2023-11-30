*** Settings ***
Documentation   MySample Test Demo
Library    SeleniumLibrary

*** Variables ***



*** Test Cases ***
Opening Browser
       Open Browser   https://www.google.com/     chrome
       Maximize Browser Window
       Sleep    2

Closing Session
        Close Browser

