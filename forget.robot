*** Settings ***
Library    Selenium2Library


*** Variables ***

#CONFIG
${BROWSER}    Chrome
${DELAY}    0.5
${URL WELCOME}    http://10.199.66.227/SoftEn2017/group11/


#SUCCESS URL
${URL FORGET}    http://10.199.66.227/SoftEn2017/group11/index.php/home/forget_password
${URL LOGIN SUCCESS}    http://10.199.66.227/SoftEn2017/group11/index.php/home/donation
${URL PROFILE}    http://10.199.66.227/SoftEn2017/group11/index.php/user/profile
${URL RESET PASSWORD}    http://10.199.66.227/SoftEn2017/group11/index.php/home/reset_password
${URL LOGOUT}    http://10.199.66.227/SoftEn2017/group11/index.php/home/logout


#INPUT VARIABLES
${INPUT EMAIL}    email
${INPUT PASSWORD}    password
${INPUT ANSWER}    answer
${INPUT CONFIRM PASSWORD}    confirm_password
${INPUT FORGET QUESTION}    question
${INPUT FORGET ANSWER}    answer
${INPUT FORGET EMAIL}    emailforget
${INPUT RESET PASSWORD}    reset_password
${INPUT RESET CONFIRM PASSWORD}    confirm_reset_password


#VALID INPUT
${VALID INPUT EMAIL}    komkeao@weshare4u.com
${VALID INPUT PASSWORD}    KKU@123kku
${VALID INPUT FORGET EMAIL}    komkeao@weshare4u.com
${VALID INPUT FORGET ANSWER}    kku
${VALID INPUT FORGET QUESTION}    6
${VALID INPUT RESET PASSWORD}    KKU@123kku
${VALID INPUT RESET CONFIRM PASSWORD}    KKU@123kku
${VALID LOGIN MSG}    สวัสดีคุณ


#INVALID INPUT
${INVALID PATTERN INPUT FORGET EMAIL}    komkeao@weshare4u.
${INVALID INPUT FORGET EMAIL}    komkeao@weshare4u.co.th
${INVALID INPUT FORGET ANSWER}    kk1
${INVALID INPUT FORGET QUESTION}    5
${INVALID INPUT RESET UPPERCASE PASSWORD}    kku@123kku
${INVALID INPUT RESET LOWERCASE PASSWORD}    KKU@123KKU
${INVALID INPUT RESET NUMBER PASSWORD}    KKU@kaskku
${INVALID INPUT RESET LENGHT PASSWORD}    k@123K
${INVALID INPUT RESET SPECIAL PASSWORD}    KKUa123kku
${INVALID INPUT RESET CONFIRM PASSWORD}    kku@123kku1
${INVALID INPUT RESET LENGHT UPPERCASE}    kku@12
${INVALID INPUT RESET LENGHT LOWERCASE}    KKU@12
${INVALID INPUT RESET LENGHT NUMBER}    KKU@kku
${INVALID INPUT RESET LENGHT SPECIAL}    KKU3k
${INVALID INPUT RESET UPPERCASE LOWERCASE}    @12311225
${INVALID INPUT RESET UPPERCASE NUMBER}    fff@fdsdsfrf
${INVALID INPUT RESET UPPERCASE SPECIAL}    dfsdfsdf123kku
${INVALID INPUT RESET LENGHT MACHING}    K@123k
${INVALID INPUT RESET UPPERCASE MACHING}    k@123ksfsdaku
${INVALID INPUT RESET LOWERCASE NUMBER}    KKU@KKKDDO
${INVALID INPUT RESET LOWERCASE SPECIAL}    KKUU123KKU
${INVALID INPUT RESET LOWERCASE MACHING}    KKU@123KKU
${INVALID INPUT RESET NUMBER SPECIAL}    KKUsdsfdsfsdkku
${INVALID INPUT RESET NUMBER MACHING}    KKU@ssdsdkku
${INVALID INPUT RESET SPECIAL MACHING}    KKU55123kku
${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE}    1213@12
${INVALID INPUT RESET LENGHT UPPERCASE NUMBER}    ss@skku
${INVALID INPUT RESET LENGHT UPPERCASE SPECIAL}    123kku
${INVALID INPUT RESET LENGHT UPPERCASE MACHING}    @123kku
${INVALID INPUT RESET LENGHT LOWERCASE NUMBER}    @KKU
${INVALID INPUT RESET LENGHT LOWERCASE SPECIAL}    KKU1
${INVALID INPUT RESET LENGHT LOWERCASE MACHING}    KKU@12
${INVALID INPUT RESET LENGHT NUMBER SPECIAL}    KKUkku
${INVALID INPUT RESET LENGHT NUMBER MACHING}    KKU@kku
${INVALID INPUT RESET LENGHT SPECIAL MACHING}    KKU3kku
${INVALID INPUT RESET UPPERCASE LOWERCASE NUMBER}    @@@@@@@@@
${INVALID INPUT RESET UPPERCASE LOWERCASE SPECIAL}    123456123
${INVALID INPUT RESET UPPERCASE LOWERCASE MACHING}    @123122325
${INVALID INPUT RESET UPPERCASE NUMBER SPECIAL}    sdasdasdaskku
${INVALID INPUT RESET UPPERCASE NUMBER MACHING}    kkkhhhhhjh@kku
${INVALID INPUT RESET UPPERCASE SPECIAL MACHING}    sdadasd123kku
${INVALID INPUT RESET LOWERCASE NUMBER SPECIAL}    KKUKKKSD
${INVALID INPUT RESET LOWERCASE NUMBER MACHING}    KKU@KKSKSKSKSS
${INVALID INPUT RESET LOWERCASE SPECIAL MACHING}    KKU1231251212
${INVALID INPUT RESET NUMBER SPECIAL MACHING}    KKUsdasdasdaskku
${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE NUMBER MACHING}    @@@
${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE SPECIAL MACHING}    123
${INVALID INPUT RESET LENGHT UPPERCASE NUMBER SPECIAL MACHING}    asd
${INVALID INPUT RESET LENGHT LOWERCASE NUMBER SPECIAL MACHING}    KKU

${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE NUMBER}    @@@@@@
${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE SPECIAL}    12345
${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE MACHING}    123@1
${INVALID INPUT RESET LENGHT UPPERCASE NUMBER SPECIAL}    asdsda
${INVALID INPUT RESET LENGHT UPPERCASE NUMBER MACHING}    @kku
${INVALID INPUT RESET LENGHT UPPERCASE SPECIAL MACHING}    123kku
${INVALID INPUT RESET LENGHT LOWERCASE NUMBER SPECIAL}    KKU
${INVALID INPUT RESET LENGHT LOWERCASE NUMBER MACHING}    KKU@
${INVALID INPUT RESET LENGHT LOWERCASE SPECIAL MACHING}    KKU123
${INVALID INPUT RESET LENGHT NUMBER SPECIAL MACHING}    KKUkku
${INVALID INPUT RESET UPPERCASE LOWERCASE NUMBER MACHING}    @@@@@@@@@@@
${INVALID INPUT RESET UPPERCASE LOWERCASE SPECIAL MACHING}    123123123
${INVALID INPUT RESET UPPERCASE NUMBER SPECIAL MACHING}    asdasdasd
${INVALID INPUT RESET LOWERCASE NUMBER SPECIAL MACHING}    AASSSSAS

#VALID MSG
${VALID WELCOME PAGE}    News
${VALID LOGIN MODAL}    เข้าสู่ระบบ
${VALID FORGET PAGE CONTAINS}    ลืมรหัสผ่าน
${VALID RESET PASSWORD MSG}    รีเซ็ตรหัสผ่าน
${VALID PASSWORD LENGHT MSG}    รหัสผ่านมีความยาวระหว่าง 8 ถึง 16 ตัวอักษร
${VALID PASSWORD UPPERCASE MSG}    รหัสผ่านมีตัวอักษรพิมพ์ใหญ่อย่างน้อย 1 ตัว
${VALID PASSWORD LOWERCASE MSG}    รหัสผ่านมีตัวอักษรพิมพ์เล็กอย่างน้อย 1 ตัว
${VALID PASSWORD NUMBER MSG}    รหัสผ่านมีตัวเลขอย่างน้อย 1 ตัว
${VALID PASSWORD SPECIAL MSG}    รหัสผ่านมีอักขระพิเศษอย่างน้อย 1 ตัว
${VALID PASSWORD MACHING MSG}    รหัสผ่านตรงกัน
${VALID PROFILE MSG}    ข้อมูลส่วนตัว


#INVALID MSG
${RESET PASSWORD INVALID EMAIL PATTERN MSG}    รูปแบบอีเมล์ไม่ถูกต้อง
${FORGET PASSWORD INVALID MSG}    อีเมล์ คำถาม หรือคำตอบไม่ถูกต้อง
${INVALID PASSWORD LENGHT MSG}    รหัสผ่านต้องมีความยาวระหว่าง 8 ถึง 16 ตัวอักษร
${INVALID PASSWORD UPPERCASE MSG}    รหัสผ่านต้องมีตัวอักษรพิมพ์ใหญ่อย่างน้อย 1 ตัว
${INVALID PASSWORD LOWERCASE MSG}    รหัสผ่านต้องมีตัวอักษรพิมพ์เล็กอย่างน้อย 1 ตัว
${INVALID PASSWORD NUMBER MSG}    รหัสผ่านต้องมีตัวเลขอย่างน้อย 1 ตัว
${INVALID PASSWORD SPECIAL MSG}    รหัสผ่านต้องมีอักขระพิเศษอย่างน้อย 1 ตัว
${INVALID PASSWORD MACHING MSG}    รหัสผ่านไม่ตรงกัน
${INVALID EMPTY PASSWORD}    รหัสผ่านห้ามว่าง


#BUTTON
${LOGIN BUTTON}    loginModal
${GO LOGIN BUTTON}    submitLogin
${FORGET LINK}    http://10.199.66.227/SoftEn2017/group11/index.php/home/forget_password
${FORGET BUTTON}    submitForm
${RESET BUTTON}    submitPassword

*** Keywords ***
Forget Password All Input Valid
    Go To    ${FORGET LINK}
    Input Text    ${INPUT FORGET EMAIL}    ${VALID INPUT FORGET EMAIL}
    Select From List By Value    ${INPUT FORGET QUESTION}    ${VALID INPUT FORGET QUESTION}
    Input Text    ${INPUT FORGET ANSWER}    ${VALID INPUT FORGET ANSWER}
    Click Button    ${FORGET BUTTON}
    Wait Until Page Contains    ${VALID RESET PASSWORD MSG} 
Do Login 
    Go To    ${URL WELCOME}
    Click Button    ${LOGIN BUTTON}
    Wait Until Page Contains    ${VALID LOGIN MODAL}
    Input Text    ${INPUT EMAIL}    ${VALID INPUT EMAIL}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    tag=iframe
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${VALID LOGIN MSG}
    Go To    ${URL PROFILE}
    Wait Until Page Contains    ${VALID PROFILE MSG}
    Go To    ${URL RESET PASSWORD}
    Wait Until Page Contains    ${VALID RESET PASSWORD MSG}

    
*** Test Cases ***
Open Browser And Initial Config:
    Open Browser    ${URL WELCOME}    ${BROWSER}
    Wait Until Page Contains    ${VALID WELCOME PAGE}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    Set Selenium Speed    ${DELAY}

Go To Login Modal
    Click Button    ${LOGIN BUTTON}
    Wait Until Page Contains    ${VALID LOGIN MODAL}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Go To Forget Page
    Go To    ${FORGET LINK}
    Wait Until Page Contains    ${VALID FORGET PAGE CONTAINS}
    Location Should Be    ${URL FORGET}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    
Forget Password All Input Valid
    Input Text    ${INPUT FORGET EMAIL}    ${VALID INPUT FORGET EMAIL}
    Select From List By Value    ${INPUT FORGET QUESTION}    ${VALID INPUT FORGET QUESTION}
    Input Text    ${INPUT FORGET ANSWER}    ${VALID INPUT FORGET ANSWER}
    Click Button    ${FORGET BUTTON}
    Wait Until Page Contains    ${VALID RESET PASSWORD MSG} 
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png 

Forget Password Email Pattern Invalid
    Go To    ${FORGET LINK}
    Input Text    ${INPUT FORGET EMAIL}    ${INVALID PATTERN INPUT FORGET EMAIL}
    Select From List By Value    ${INPUT FORGET QUESTION}    ${VALID INPUT FORGET QUESTION}
    Input Text    ${INPUT FORGET ANSWER}    ${VALID INPUT FORGET ANSWER}
    Click Button    ${FORGET BUTTON}
    Wait Until Page Contains    ${RESET PASSWORD INVALID EMAIL PATTERN MSG} 
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png 

Forget Password Email Invalid
    Go To    ${FORGET LINK}
    Input Text    ${INPUT FORGET EMAIL}    ${INVALID INPUT FORGET EMAIL}
    Select From List By Value    ${INPUT FORGET QUESTION}    ${VALID INPUT FORGET QUESTION}
    Input Text    ${INPUT FORGET ANSWER}    ${VALID INPUT FORGET ANSWER}
    Click Button    ${FORGET BUTTON}
    Wait Until Page Contains    ${FORGET PASSWORD INVALID MSG}  
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Forget Password Question Invalid
    Go To    ${FORGET LINK}
    Input Text    ${INPUT FORGET EMAIL}    ${VALID INPUT FORGET EMAIL}
    Select From List By Value    ${INPUT FORGET QUESTION}    ${INVALID INPUT FORGET QUESTION}
    Input Text    ${INPUT FORGET ANSWER}    ${VALID INPUT FORGET ANSWER}
    Click Button    ${FORGET BUTTON}
    Wait Until Page Contains    ${FORGET PASSWORD INVALID MSG}  
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Forget Password Answer Invalid
    Go To    ${FORGET LINK}
    Input Text    ${INPUT FORGET EMAIL}    ${VALID INPUT FORGET EMAIL}
    Select From List By Value    ${INPUT FORGET QUESTION}    ${VALID INPUT FORGET QUESTION}
    Input Text    ${INPUT FORGET ANSWER}    ${INVALID INPUT FORGET ANSWER}
    Click Button    ${FORGET BUTTON}
    Wait Until Page Contains    ${FORGET PASSWORD INVALID MSG}  
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password All Input Valid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${VALID INPUT RESET PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT RESET CONFIRM PASSWORD}
    Focus    ${INPUT RESET PASSWORD}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID WELCOME PAGE}
    

Not Login : Reset Password not Maching
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${VALID INPUT RESET PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET CONFIRM PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password Length Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password Uppercase Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET UPPERCASE PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password Lowercase Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}   ${INVALID INPUT RESET LOWERCASE PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LOWERCASE PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password Number Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET NUMBER PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET NUMBER PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password Special Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET SPECIAL PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET SPECIAL PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password Empty
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${Empty}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${Empty}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID EMPTY PASSWORD}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT UPPERCASE Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT LOWERCASE Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT LOWERCASE}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT LOWERCASE}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT NUMBER Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT NUMBER}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT NUMBER}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT MATCHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE LOWERCASE Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE LOWERCASE}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET UPPERCASE LOWERCASE}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE NUMBER Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE NUMBER}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET UPPERCASE NUMBER}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET UPPERCASE SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LOWERCASE NUMBER Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LOWERCASE NUMBER}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LOWERCASE NUMBER}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LOWERCASE SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LOWERCASE SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LOWERCASE SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LOWERCASE MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LOWERCASE MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    
Not Login : Reset Password NUMBER SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET NUMBER SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET NUMBER SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password NUMBER MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET NUMBER MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    
Not Login : Reset Password SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT UPPERCASE LOWERCASE Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT UPPERCASE NUMBER Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE NUMBER}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE NUMBER}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT UPPERCASE SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT UPPERCASE MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT LOWERCASE NUMBER Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT LOWERCASE NUMBER}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT LOWERCASE NUMBER}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT LOWERCASE SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT LOWERCASE SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT LOWERCASE SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT LOWERCASE MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT LOWERCASE MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT NUMBER SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT NUMBER SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT NUMBER SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT NUMBER MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT NUMBER MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE LOWERCASE NUMBER Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE LOWERCASE NUMBER}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET UPPERCASE LOWERCASE NUMBER}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE LOWERCASE SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE LOWERCASE SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET UPPERCASE LOWERCASE SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE LOWERCASE MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE LOWERCASE MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE NUMBER SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE NUMBER SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET UPPERCASE NUMBER SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE NUMBER MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE NUMBER MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LOWERCASE NUMBER SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LOWERCASE NUMBER SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LOWERCASE NUMBER SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LOWERCASE NUMBER MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LOWERCASE NUMBER MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LOWERCASE SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LOWERCASE SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password NUMBER SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET NUMBER SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT UPPERCASE LOWERCASE NUMBER MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE NUMBER MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT UPPERCASE LOWERCASE SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT UPPERCASE NUMBER SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE NUMBER SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT LOWERCASE NUMBER SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT LOWERCASE NUMBER SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT UPPERCASE LOWERCASE NUMBER Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE NUMBER}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE NUMBER}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png


Not Login : Reset Password LENGHT UPPERCASE LOWERCASE SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png


Not Login : Reset Password LENGHT UPPERCASE LOWERCASE MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE LOWERCASE MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT UPPERCASE NUMBER SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE NUMBER SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE NUMBER SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT UPPERCASE NUMBER MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE NUMBER MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT UPPERCASE SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT UPPERCASE SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT LOWERCASE NUMBER SPECIAL Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT LOWERCASE NUMBER SPECIAL}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT LOWERCASE NUMBER SPECIAL}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT LOWERCASE NUMBER MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT LOWERCASE NUMBER MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT LOWERCASE SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT LOWERCASE SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LENGHT NUMBER SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT NUMBER SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE LOWERCASE NUMBER MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE LOWERCASE NUMBER MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE LOWERCASE SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE LOWERCASE SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password UPPERCASE NUMBER SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE NUMBER SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Not Login : Reset Password LOWERCASE NUMBER SPECIAL MACHING Invalid
    Forget Password All Input Valid
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LOWERCASE NUMBER SPECIAL MACHING}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png

Login 
    Go To    ${URL WELCOME}
    Click Button    ${LOGIN BUTTON}
    Wait Until Page Contains    ${VALID LOGIN MODAL}
    Sleep    0.5
    Input Text    ${INPUT EMAIL}    ${VALID INPUT EMAIL}       
    Input Text    ${INPUT PASSWORD}    ${VALID INPUT PASSWORD}
    Click Element    tag=iframe
    Sleep    2
    Click Button    ${GO LOGIN BUTTON}
    Wait Until Page Contains    ${VALID LOGIN MSG}
    
Go to Profile Page
    Go To    ${URL PROFILE}
    Wait Until Page Contains    ${VALID PROFILE MSG}
    
Go To Reset Password Page
    Go To    ${URL RESET PASSWORD}
    Wait Until Page Contains    ${VALID RESET PASSWORD MSG}
    Sleep    0.5

Login : Reset Password All Input Valid
    Go To    ${URL RESET PASSWORD}
    Input Text    ${INPUT RESET PASSWORD}    ${VALID INPUT RESET PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${VALID INPUT RESET CONFIRM PASSWORD}
    Focus    ${INPUT RESET PASSWORD}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID WELCOME PAGE}
    #Click Link    ${URL LOGOUT}    

Login : Reset Password not Maching
    Go To    ${URL RESET PASSWORD}
    Input Text    ${INPUT RESET PASSWORD}    ${VALID INPUT RESET PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET CONFIRM PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${INVALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    #Click Link    ${URL LOGOUT} 

Login : Reset Password Length Invalid
    Go To    ${URL RESET PASSWORD}
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET LENGHT PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LENGHT PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${INVALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    #Click Link    ${URL LOGOUT} 

Login : Reset Password Uppercase Invalid
    Go To    ${URL RESET PASSWORD}
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET UPPERCASE PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET UPPERCASE PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${INVALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    #Click Link    ${URL LOGOUT} 

Login : Reset Password Lowercase Invalid
    Go To    ${URL RESET PASSWORD}
    Input Text    ${INPUT RESET PASSWORD}   ${INVALID INPUT RESET LOWERCASE PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET LOWERCASE PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    #Click Link    ${URL LOGOUT} 

Login : Reset Password Number Invalid
    Go To    ${URL RESET PASSWORD}
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET NUMBER PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET NUMBER PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${INVALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${VALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    #Click Link    ${URL LOGOUT} 

Login : Reset Password Special Invalid
    Go To    ${URL RESET PASSWORD}
    Input Text    ${INPUT RESET PASSWORD}    ${INVALID INPUT RESET SPECIAL PASSWORD}
    Input Text    ${INPUT RESET CONFIRM PASSWORD}    ${INVALID INPUT RESET SPECIAL PASSWORD}
    Click Button    ${RESET BUTTON}
    Wait Until Page Contains    ${VALID PASSWORD LENGHT MSG}
    Wait Until Page Contains    ${VALID PASSWORD UPPERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD LOWERCASE MSG}
    Wait Until Page Contains    ${VALID PASSWORD NUMBER MSG}
    Wait Until Page Contains    ${INVALID PASSWORD SPECIAL MSG}
    Wait Until Page Contains    ${VALID PASSWORD MACHING MSG}
    Capture Page Screenshot    filename=selenium-screenshot-{index}.png
    #Click Link    ${URL LOGOUT} 
    [Teardown]    Close Browser