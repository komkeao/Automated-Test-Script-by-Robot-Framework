*** Settings ***
Library    Selenium2Library


*** Variables ***

#CONFIG
${BROWSER}    Chrome
${DELAY}    0
${CAPTCHA SLEEP TIME}    2
${URL WELCOME}    http://localhost/SE2/
${URL LOGOUT}    http://localhost/SE2/user/logout

#INPUT VARIABLES
${INPUT EMAIL}    email
${INPUT PASSWORD}    password
${INPUT CAPTCHA}    tag=iframe

#VALID INPUT
${VALID INPUT EMAIL}    amnat@weshare4u.com
${VALID INPUT PASSWORD}    TongHg!@1234567


#INVALID INPUT
${INVALID INPUT EMAIL PATTERN1}    komkeao@weshare4u
${INVALID INPUT EMAIL PATTERN2}    komkeao.com
${INVALID INPUT EMAIL PATTERN3}    komkeao
${INVALID INPUT EMAIL PATTERN4}    @gmail.com
${INVALID INPUT EMAIL}    komkeao@weshare4u.co.th
${INVALID INPUT PASSWORD}    komkeao


#VALID MSG
${VALID WELCOME PAGE MSG}    News
${VALID LOGIN MODAL MSG}    เข้าสู่ระบบ
${VALID LOGIN MSG}    สวัสดีคุณ
${VALID CHOOSE DONOR MSG}    บริจาค
${VALID CHOOSE RECIPIENT MSG}    รับบริจาค
${VALID CHOOSE RECIPIENT ICON MSG}    shopping_cart


#INVALID MSG
${INVALID EMAIL PATTERN MSG}    รูปแบบอีเมล์ไม่ถูกต้อง
${INVALID EMAIL MSG}    ไม่มีที่อยู่อีเมลล์นี้ในระบบ
${EMPTY EMAIL MSG}    อีเมลล์ห้ามว่าง
${INVALID PASSWORD MSG}    รหัสผ่านไม่ถูกต้อง
${EMPTY PASSWORD MSG}    รหัสผ่านห้ามว่าง
${EMPTY CAPTCHA MSG}    กรุณากด CAPTCHA
${INVALID EMAIL OR PASSWORD MSG}    อีเมล์หรือรหัสผ่านไม่ถูกต้อง


#BUTTON
${LOGIN BUTTON}    loginModal
${GO LOGIN BUTTON}    submitLogin
${CHOOSE DONOR BUTTON}    donorType
${CHOOSE RECIPIENT BUTTON}    recipientType

*** Keywords ***
Open Login Modal
    Delete All Cookies
    Go To    ${URL LOGOUT}
    Wait Until Page Contains    ${VALID WELCOME PAGE MSG}
    Click Button    ${LOGIN BUTTON}
    Wait Until Page Contains    ${VALID LOGIN MODAL MSG}
    Sleep    0.5
    
*** Test Cases ***
1.Open Browser And Initial Config:
    Open Browser    ${URL WELCOME}    ${BROWSER}
    Wait Until Page Contains    ${VALID WELCOME PAGE MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    Set Selenium Speed    ${DELAY}

2.Open Login Modal
    Click Button    ${LOGIN BUTTON}
    Wait Until Page Contains    ${VALID LOGIN MODAL MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

3.Login Success [All Input is Valid] 
    Input Text    ${INPUT EMAIL}    ${VALID INPUT EMAIL}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${VALID LOGIN MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

4.Login Fail [Email Pattern is Invalid Case:1] 
    Open Login Modal
    Input Text    ${INPUT EMAIL}    ${INVALID INPUT EMAIL PATTERN1}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${INVALID EMAIL PATTERN MSG}  
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

5.Login Fail [Email Pattern is Invalid Case:2] 
    Open Login Modal
    Input Text    ${INPUT EMAIL}    ${INVALID INPUT EMAIL PATTERN2}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${INVALID EMAIL PATTERN MSG}  
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

6.Login Fail [Email Pattern is Invalid Case:3] 
    Open Login Modal
    Input Text    ${INPUT EMAIL}    ${INVALID INPUT EMAIL PATTERN3}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${INVALID EMAIL PATTERN MSG}  
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

7.Login Fail [Email Pattern is Invalid Case:4] 
    Open Login Modal
    Input Text    ${INPUT EMAIL}    ${INVALID INPUT EMAIL PATTERN4}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${INVALID EMAIL PATTERN MSG}  
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

8.Login Fail [Email is Empty] 
    Open Login Modal
    Input Text    ${INPUT EMAIL}    ${Empty}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${EMPTY EMAIL MSG}  
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

9.Login Fail [Email is Invalid] 
    Open Login Modal
    Input Text    ${INPUT EMAIL}    ${INVALID INPUT EMAIL}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${INVALID EMAIL MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

10.Login Fail [Password is Invalid] 
    Open Login Modal
    Input Text    ${INPUT EMAIL}    ${VALID INPUT EMAIL}       
    Input Text    ${INPUT PASSWORD}    ${INVALID INPUT PASSWORD}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${INVALID EMAIL OR PASSWORD MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    
11.Login Fail [Password is Empty] 
    Open Login Modal
    Input Text    ${INPUT EMAIL}    ${VALID INPUT EMAIL}       
    Input Text    ${INPUT PASSWORD}    ${Empty}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${EMPTY PASSWORD MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

12.Login Fail [Captcha is Invalid]
    Open Login Modal 
    Input Text    ${INPUT EMAIL}    ${VALID INPUT EMAIL}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    #Click Element    ${INPUT CAPTCHA}
    #Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${EMPTY CAPTCHA MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

13.Login Fail [Email Password are Empty]
    Open Login Modal 
    Input Text    ${INPUT EMAIL}    ${Empty}       
    Input Text    ${INPUT PASSWORD}    ${Empty}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${EMPTY EMAIL MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

14.Login Fail [Email Captcha are Empty]
    Open Login Modal 
    Input Text    ${INPUT EMAIL}    ${Empty}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    #Click Element    ${INPUT CAPTCHA}
    #Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${EMPTY EMAIL MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

15.Login Fail [Password Captcha are Empty]
    Open Login Modal 
    Input Text    ${INPUT EMAIL}    ${VALID INPUT EMAIL}       
    Input Text    ${INPUT PASSWORD}    ${Empty}
    #Click Element    ${INPUT CAPTCHA}
    #Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${EMPTY PASSWORD MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

16.Login Fail [Email Password Captcha are Empty]
    Open Login Modal 
    Input Text    ${INPUT EMAIL}    ${Empty}       
    Input Text    ${INPUT PASSWORD}    ${Empty}
    #Click Element    ${INPUT CAPTCHA}
    #Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${EMPTY EMAIL MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

17.Test Flow [Donor Page]
    Open Login Modal 
    Input Text    ${INPUT EMAIL}    ${VALID INPUT EMAIL}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${VALID LOGIN MSG}
    Click Button    ${CHOOSE DONOR BUTTON}
    Wait Until Page Contains    ${VALID CHOOSE DONOR MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

18.Test Flow [Recipient Page]
    Open Login Modal 
    Input Text    ${INPUT EMAIL}    ${VALID INPUT EMAIL}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${VALID LOGIN MSG}
    Click Button    ${CHOOSE RECIPIENT BUTTON}
    Wait Until Page Contains    ${VALID CHOOSE RECIPIENT MSG}
    Wait Until Page Contains    ${VALID CHOOSE RECIPIENT ICON MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    [Teardown]    Close Browser

