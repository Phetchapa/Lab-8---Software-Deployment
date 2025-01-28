*** Settings ***
Documentation    การทดสอบการกรอกข้อมูลในฟอร์ม Travel Insurance Inquiry ที่ไม่สมบูรณ์
Library           SeleniumLibrary
Resource          resource_lab7.robot

*** Test Cases ***
1. Open Form
    [Documentation]    เปิดเบราว์เซอร์และนำทางไปยังหน้าแบบฟอร์ม
    Open Browser To Form Page

2. Empty Destination
    [Documentation]    ทดสอบกรอกข้อมูลโดยไม่กรอกช่อง Destination และตรวจสอบข้อความแจ้งเตือนข้อผิดพลาด
    Fill Form Without Destination
    Submit The Form
    Verify Error For Missing Destination

3. Open Form
    [Documentation]    เปิดเบราว์เซอร์และนำทางไปยังหน้าแบบฟอร์มอีกครั้ง
    Open Browser To Form Page

4. Empty Email
    [Documentation]    ทดสอบกรอกข้อมูลโดยไม่กรอกช่อง Email และตรวจสอบข้อความแจ้งเตือนข้อผิดพลาด
    Fill Form Without Email
    Submit The Form
    Verify Error For Missing Email

5. Open Form
    [Documentation]    เปิดเบราว์เซอร์และนำทางไปยังหน้าแบบฟอร์มอีกครั้ง
    Open Browser To Form Page

6. Invalid Email
    [Documentation]    ทดสอบกรอกข้อมูลโดยกรอก Email ที่ไม่ถูกต้อง และตรวจสอบข้อความแจ้งเตือนข้อผิดพลาด
    Fill Form With Invalid Email
    Submit The Form
    Verify Error For Invalid Email

7. Open Form
    [Documentation]    เปิดเบราว์เซอร์และนำทางไปยังหน้าแบบฟอร์มอีกครั้ง
    Open Browser To Form Page

8. Empty Phone Number
    [Documentation]    ทดสอบกรอกข้อมูลโดยไม่กรอกช่อง Phone Number และตรวจสอบข้อความแจ้งเตือนข้อผิดพลาด
    Fill Form Without Phone Number
    Submit The Form
    Verify Error For Missing Phone Number

9. Open Form
    [Documentation]    เปิดเบราว์เซอร์และนำทางไปยังหน้าแบบฟอร์มอีกครั้ง
    Open Browser To Form Page

10. Invalid Phone Number
    [Documentation]    ทดสอบกรอกข้อมูลโดยกรอก Phone Number ที่ไม่ถูกต้อง และตรวจสอบข้อความแจ้งเตือนข้อผิดพลาด
    Fill Form With Invalid Phone Number
    Submit The Form
    Verify Error For Invalid Phone Number

*** Keywords ***
Fill Form Without Destination
    [Documentation]    กรอกข้อมูลในช่องที่จำเป็นยกเว้นช่อง Destination
    Input Text    id=firstname        Somsong
    Input Text    id=lastname         Sandee
    Input Text    id=contactperson    Sodsai Sandee
    Input Text    id=relationship     Mother
    Input Text    id=email            somsong@kkumail.com
    Input Text    id=phone            081-111-1234

Fill Form Without Email
    [Documentation]    กรอกข้อมูลในช่องที่จำเป็นยกเว้นช่อง Email
    Input Text    id=firstname        Somsong
    Input Text    id=lastname         Sandee
    Input Text    id=destination      Europe
    Input Text    id=contactperson    Sodsai Sandee
    Input Text    id=relationship     Mother
    Input Text    id=phone            081-111-1234

Fill Form With Invalid Email
    [Documentation]    กรอกข้อมูลในช่องที่จำเป็น แต่กรอก Email ที่ไม่ถูกต้อง
    Input Text    id=firstname        Somsong
    Input Text    id=lastname         Sandee
    Input Text    id=destination      Europe
    Input Text    id=contactperson    Sodsai Sandee
    Input Text    id=relationship     Mother
    Input Text    id=email            somsong@
    Input Text    id=phone            081-111-1234

Fill Form Without Phone Number
    [Documentation]    กรอกข้อมูลในช่องที่จำเป็นยกเว้นช่อง Phone Number
    Input Text    id=firstname        Somsong
    Input Text    id=lastname         Sandee
    Input Text    id=destination      Europe
    Input Text    id=contactperson    Sodsai Sandee
    Input Text    id=relationship     Mother
    Input Text    id=email            somsong@kkumail.com

Fill Form With Invalid Phone Number
    [Documentation]    กรอกข้อมูลในช่องที่จำเป็น แต่กรอก Phone Number ที่ไม่ถูกต้อง
    Input Text    id=firstname        Somsong
    Input Text    id=lastname         Sandee
    Input Text    id=destination      Europe
    Input Text    id=contactperson    Sodsai Sandee
    Input Text    id=relationship     Mother
    Input Text    id=email            somsong@kkumail.com
    Input Text    id=phone            191

Submit The Form
    [Documentation]    คลิกปุ่ม Submit เพื่อส่งข้อมูลในฟอร์ม
    Click Button    id=submitButton

Verify Error For Missing Destination
    [Documentation]    ตรวจสอบว่ามีข้อความแจ้งเตือนสำหรับการไม่กรอกช่อง Destination
    Element Should Be Visible    id=errors
    Element Text Should Be    id=errors    Please enter your destination.

Verify Error For Missing Email
    [Documentation]    ตรวจสอบว่ามีข้อความแจ้งเตือนสำหรับการไม่กรอกช่อง Email
    Element Should Be Visible    id=errors
    Element Text Should Be    id=errors    Please enter a valid email address.

Verify Error For Invalid Email
    [Documentation]    ตรวจสอบว่ามีข้อความแจ้งเตือนสำหรับการกรอก Email ที่ไม่ถูกต้อง
    Element Should Be Visible    id=errors
    Element Text Should Be    id=errors    Please enter a valid email address.

Verify Error For Missing Phone Number
    [Documentation]    ตรวจสอบว่ามีข้อความแจ้งเตือนสำหรับการไม่กรอกช่อง Phone Number
    Element Should Be Visible    id=errors
    Element Text Should Be    id=errors    Please enter a phone number.

Verify Error For Invalid Phone Number
    [Documentation]    ตรวจสอบว่ามีข้อความแจ้งเตือนสำหรับการกรอก Phone Number ที่ไม่ถูกต้อง
    Element Should Be Visible    id=errors
    Element Text Should Be    id=errors    Please enter a valid phone number, e.g., 081-234-5678, 081 234 5678, or 081.234.5678.
