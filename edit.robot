*** Settings ***
Library    Selenium2Library


*** Variables ***

#CONFIG
${BROWSER}    Chrome
${DELAY}    0
${CAPTCHA SLEEP TIME}    2
${URL WELCOME}    http://10.199.66.227/SoftEn2017/group11/
${URL LOGOUT}    http://10.199.66.227/SoftEn2017/group11/index.php/user/logout

#INPUT VARIABLES
${INPUT EMAIL}    email
${INPUT PASSWORD}    password
${INPUT CAPTCHA}    tag=iframe
${INPUT NAME}    dname
${INPUT DETAILS}    ddetail
${INPUT DESCRIPTION}    ddescription
${INPUT WIDTH}    dwidth
${INPUT HEIGHT}    dheight
${INPUT LENGTH}    dlength
${INPUT WEIGHT}    dweight
${INPUT IMAGE}    dfile
${INPUT AMOUNT}    damount
${INPUT TYPE}    dtype


#VALID INPUT
${VALID INPUT EMAIL}    amnat@weshare4u.com
${VALID INPUT PASSWORD}    TongHg!@1234567
${VALID INPUT NAME}    GLOWY 80% ใช้งานมาแล้วสองปี
${VALID INPUT DETAILS}    สภาพ  
${VALID INPUT DESCRIPTION}    รถเข็น GLOWY เป็นรถเข็นอำนวยความสะดวกให้กับครอบครัวที่เพิ่งจะมีสมาชิกใหม่ เหมาะสำหรับครอบครัวที่ชอบพาลูกน้อยไปท่องโลกกว้าง
${VALID INPUT WIDTH}    51
${VALID INPUT HEIGHT}    31
${VALID INPUT LENGTH}    108
${VALID INPUT WEIGHT}    7100
${VALID INPUT IMAGE}    D:/a.jpg
${VALID INPUT AMOUNT}    1599
${VALID INPUT TYPE}    6
${VALID NEW INPUT NAME}    GLOWY 80% ใช้งานมาแล้วสามปี มีตำหนินิดหน่อย
${VALID NEW INPUT DETAILS}    มีตำหนิด้านข้าง  
${VALID NEW INPUT DESCRIPTION}    รถเข็น GLOWY เป็นรถเข็นอำนวยความสะดวกให้กับครอบครัวที่เพิ่งจะมีสมาชิกใหม่ 
${VALID NEW INPUT WIDTH}    21
${VALID NEW INPUT HEIGHT}    25
${VALID NEW INPUT LENGTH}    120
${VALID NEW INPUT WEIGHT}    8000
${VALID NEW INPUT IMAGE}    D:/b.jpg
${VALID NEW INPUT AMOUNT}    1999
${VALID NEW INPUT TYPE}    7


#INVALID INPUT
${INVALID INPUT NAME}    dname
${INVALID INPUT DETAILS}    ddetail
${INVALID INPUT DESCRIPTION}    ddescription
${INVALID INPUT LENGHT}    dlength
${INVALID INPUT WIDTH}    dwidth
${INVALID INPUT HEIGHT}    dheight
${INVALID INPUT WEIGHT}    dweight
${INVALID INPUT IMAGE}    dfile
${INVALID INPUT AMOUNT}    damount
${INVALID INPUT TYPE}    dtype


#VALID  URL
${VALID URL LOGED IN}    http://10.199.66.227/SoftEn2017/group11/index.php/user/index

#VALID MSG
${VALID WELCOME PAGE MSG}    News
${VALID LOGIN MODAL MSG}    เข้าสู่ระบบ
${VALID LOGIN MSG}    สวัสดีคุณ
${VALID CHOOSE DONOR MSG}    บริจาค
${VALID CHOOSE RECIPIENT MSG}    รับบริจาค
${VALID CHOOSE RECIPIENT ICON MSG}    shopping_cart
${VALID DONATE MSG}    รายละเอียดการบริจาค
${VALID EDIT PAGE MSG}    แก้ไขการบริจาค
${VALID ADD PAGE MSG}    บริจาค


#INVALID MSG
${INVALID DONATE EMPTY NAME MSG}    กรุณาใส่ชื่อของที่จะบริจาค
${INVALID DONATE EMPTY DETAILS MSG}    กรุณาใส่รายละเอียด
${INVALID DONATE EMPTY DESCRIPTION MSG}    กรุณาใส่คำอธิบาย
${INVALID DONATE EMPTY WIDTH MSG}    กรุณาใส่ความยาว
${INVALID DONATE EMPTY HEIGHT MSG}    กรุณาใส่ความสูง
${INVALID DONATE EMPTY LENGTH MSG}    กรุณาใส่ความกว้าง
${INVALID DONATE EMPTY WEIGHT MSG}    กรุณาใส่น้ำหนัก
${INVALID DONATE EMPTY IMAGE MSG}    กรุณาเลือกรูปภาพ
${INVALID DONATE EMPTY AMOUNT MSG}    กรุณาใสจำนวน
${INVALID DONATE EMPTY TYPE MSG}    กรุณาเลือกประเภท



#BUTTON
${LOGIN BUTTON}    loginModal
${GO LOGIN BUTTON}    submitLogin
${CHOOSE DONOR BUTTON}    donorType
${CHOOSE RECIPIENT BUTTON}    recipientType
${DONOR SUBMIT BUTTON}    donorSubmit
${EDIT BUTTON}    btnEditDonate
${ADD BUTTON}    btnAddDonate
*** Keywords ***
Do Login
    Delete All Cookies
    Go To    ${URL LOGOUT}
    Wait Until Page Contains    ${VALID WELCOME PAGE MSG}
    Click Button    ${LOGIN BUTTON}
    Wait Until Page Contains    ${VALID LOGIN MODAL MSG}
    Sleep    0.5
    Input Text    ${INPUT EMAIL}    ${VALID INPUT EMAIL}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Sleep    ${CAPTCHA SLEEP TIME}
    Location Should Be    ${VALID URL LOGED IN}
    Click Button    ${CHOOSE DONOR BUTTON}
    Wait Until Page Contains    ${VALID CHOOSE DONOR MSG}
    
*** Test Cases ***
1.Open Browser And Initial Config:
    Open Browser    ${URL WELCOME}    ${BROWSER}
    Wait Until Page Contains    ${VALID WELCOME PAGE MSG}
    Maximize Browser Window
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    Set Selenium Speed    ${DELAY}

2.Open Login Modal
    Click Button    ${LOGIN BUTTON}
    Wait Until Page Contains    ${VALID LOGIN MODAL MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

3.Do Login 
    Input Text    ${INPUT EMAIL}    ${VALID INPUT EMAIL}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    ${INPUT CAPTCHA}
    Sleep    ${CAPTCHA SLEEP TIME}
    Click Button    ${GO LOGIN BUTTON}
    Sleep    ${CAPTCHA SLEEP TIME}
    Location Should Be    ${VALID URL LOGED IN}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

4.Go To Donor Page 
    Click Button    ${CHOOSE DONOR BUTTON}
    Wait Until Page Contains    ${VALID CHOOSE DONOR MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

5.Add New Item 
    Input Text   ${INPUT NAME}    ${VALID INPUT NAME}
    Input Text    ${INPUT DETAILS}    ${VALID INPUT DETAILS}
    Input Text    ${INPUT DESCRIPTION}    ${VALID INPUT DESCRIPTION}
    Input Text    ${INPUT WIDTH}    ${VALID INPUT WIDTH}
    Input Text    ${INPUT HEIGHT}    ${VALID INPUT HEIGHT}
    Input Text    ${INPUT LENGTH}    ${VALID INPUT LENGTH}
    Input Text    ${INPUT WEIGHT}    ${VALID INPUT WEIGHT}
    Choose File    ${INPUT IMAGE}    ${VALID INPUT IMAGE}
    Input Text    ${INPUT AMOUNT}    ${VALID INPUT AMOUNT}
    Select From List By Value    ${INPUT TYPE}    ${VALID INPUT TYPE}
    Click Button    ${DONOR SUBMIT BUTTON} 
    Wait Until Page Contains    ${VALID DONATE MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

6.Go to Edit Page
    Click Button    ${EDIT BUTTON} 
    Wait Until Page Contains    ${VALID ADD PAGE MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

7.Edit Success [Edit Name]
    Input Text   ${INPUT NAME}    ${VALID NEW INPUT NAME}
    Click Button    ${DONOR SUBMIT BUTTON} 
    Wait Until Page Contains    ${VALID DONATE MSG}
    Wait Until Page Contains    ${VALID NEW INPUT NAME}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

8.Edit Success [Edit Detail]
    Click Button    ${EDIT BUTTON} 
    Input Text   ${INPUT DETAILS}    ${VALID NEW INPUT DETAILS}
    Click Button    ${DONOR SUBMIT BUTTON} 
    Wait Until Page Contains    ${VALID DONATE MSG}
    Wait Until Page Contains    ${VALID NEW INPUT DETAILS}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

9.Edit Success [Edit Description]
    Click Button    ${EDIT BUTTON} 
    Input Text   ${INPUT DESCRIPTION}    ${VALID NEW INPUT DESCRIPTION}
    Click Button    ${DONOR SUBMIT BUTTON} 
    Wait Until Page Contains    ${VALID DONATE MSG}
    Wait Until Page Contains    ${VALID NEW INPUT DESCRIPTION}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

10.Edit Success [Edit Width]
    Click Button    ${EDIT BUTTON} 
    Input Text   ${INPUT WIDTH}    ${VALID NEW INPUT WIDTH}
    Click Button    ${DONOR SUBMIT BUTTON} 
    Wait Until Page Contains    ${VALID DONATE MSG}
    Wait Until Page Contains    ${VALID NEW INPUT WIDTH}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

11.Edit Success [Edit Height]
    Click Button    ${EDIT BUTTON} 
    Input Text   ${INPUT HEIGHT}    ${VALID NEW INPUT HEIGHT}
    Click Button    ${DONOR SUBMIT BUTTON} 
    Wait Until Page Contains    ${VALID DONATE MSG}
    Wait Until Page Contains    ${VALID NEW INPUT HEIGHT}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

12.Edit Success [Edit Length]
    Click Button    ${EDIT BUTTON} 
    Input Text   ${INPUT LENGTH}    ${VALID NEW INPUT LENGTH}
    Click Button    ${DONOR SUBMIT BUTTON} 
    Wait Until Page Contains    ${VALID DONATE MSG}
    Wait Until Page Contains    ${VALID NEW INPUT LENGTH}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

13.Edit Success [Edit Weight]
    Click Button    ${EDIT BUTTON} 
    Input Text   ${INPUT WEIGHT}    ${VALID NEW INPUT WEIGHT}
    Click Button    ${DONOR SUBMIT BUTTON} 
    Wait Until Page Contains    ${VALID DONATE MSG}
    Wait Until Page Contains    ${VALID NEW INPUT WEIGHT}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

14.Edit Success [Edit Image]
    Click Button    ${EDIT BUTTON} 
    Choose File   ${INPUT IMAGE}    ${VALID NEW INPUT IMAGE}
    Click Button    ${DONOR SUBMIT BUTTON} 
    Wait Until Page Contains    ${VALID DONATE MSG}
    Wait Until Page Contains    ${VALID NEW INPUT IMAGE}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
     #??????
15.Edit Success [Edit Amout]
    Click Button    ${EDIT BUTTON} 
    Input Text   ${INPUT AMOUNT}    ${VALID NEW INPUT AMOUNT}
    Click Button    ${DONOR SUBMIT BUTTON} 
    Wait Until Page Contains    ${VALID DONATE MSG}
    Wait Until Page Contains    ${VALID NEW INPUT AMOUNT}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

16.Edit Success [Edit Type]
    Click Button    ${EDIT BUTTON} 
    Select From List By Value   ${INPUT TYPE}    ${VALID NEW INPUT TYPE}
    Click Button    ${DONOR SUBMIT BUTTON} 
    ${TEMP}    Catenate    [{VALID NEW INPUT TYPE}    ]
    Wait Until Page Contains    ${VALID DONATE MSG}
    Wait Until Page Contains    ${TEMP}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    #??????
    [Teardown]    Close Browser