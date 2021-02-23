namespace: Lab01
operation:
  name: 身分證確認UI
  sequential_action:
    gav: com.microfocus.seq:Lab01.身分證確認UI:1.0.0
    skills:
    - UI Automation
    - Web
    - WPF
    settings:
      windows:
        active: false
      web:
        active: true
        address: https://www.ris.gov.tw/app/portal/3043
        browser: CHROME
        close_on_exit: true
    steps:
    - step:
        id: '1'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebEdit("idnum")
        action: Set
        args: '"A123874054"'
        snapshot: .\Snapshots\ssf1.png
        highlight_id: '10000000'
    - step:
        id: '2'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebList("applyTWY")
        action: Select
        args: '"103"'
        snapshot: .\Snapshots\ssf2.html
        highlight_id: '10000000'
    - step:
        id: '3'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebList("applyMM")
        action: Select
        args: '"11"'
        snapshot: .\Snapshots\ssf3.html
        highlight_id: '10000000'
    - step:
        id: '4'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebList("applyDD")
        action: Select
        args: '"4"'
        snapshot: .\Snapshots\ssf4.html
        highlight_id: '10000000'
    - step:
        id: '5'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebList("siteId")
        action: Select
        args: '"新北市"'
        snapshot: .\Snapshots\ssf5.html
        highlight_id: '10000000'
    - step:
        id: '6'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebList("applyReason")
        action: Select
        args: '"換發"'
        snapshot: .\Snapshots\ssf6.html
        highlight_id: '10000000'
    - step:
        id: '7'
        action: Script
        object_path: aa = inputbox("請輸入驗證碼...")
    - step:
        id: '8'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebEdit("captchaInput")
        action: Set
        args: aa
        snapshot: .\Snapshots\ssf7.html
        highlight_id: '10000000'
    - step:
        id: '9'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebButton("送出")
        action: Click
        snapshot: .\Snapshots\ssf8.html
        highlight_id: '10000000'
    - step:
        id: '10'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame_2").WebButton("列 印")
        action: Click
    - step:
        id: '11'
        action: Wait
        args: '"3"'
        default_args: '"1"'
    - step:
        id: '12'
        object_path: Window("Google Chrome").InsightObject("InsightObject")
        action: Click
    - step:
        id: '13'
        object_path: '''Window("Google Chrome").Dialog("Save Print Output As").WinEdit("Edit")'
        action: Click
        args: 117, 8, micRightBtn
        snapshot: .\Snapshots\ssf9.png
        highlight_id: '2294474'
    - step:
        id: '14'
        object_path: '''Window("Google Chrome").Dialog("Save Print Output As").WinEdit("Edit").WinMenu("ContextMenu")'
        action: Select
        args: '"Copy"'
    - step:
        id: '15'
        object_path: '''Window("Google Chrome").Dialog("Save Print Output As").WinEdit("File
          name:")'
        action: Type
        args: micCtrlDwn + "v" + micCtrlUp
        snapshot: .\Snapshots\ssf10.png
        highlight_id: '918206'
    - step:
        id: '16'
        object_path: Window("Google Chrome").Dialog("Save Print Output As").WinEdit("File
          name:")
        action: Set
        args: '"C:\CheckData2\OutputPDF\report"'
        snapshot: .\Snapshots\ssf11.png
        highlight_id: '918206'
    - step:
        id: '17'
        object_path: '''Window("Google Chrome").Dialog("Save Print Output As")'
        action: Click
        args: 373,562
        snapshot: .\Snapshots\ssf12.png
        highlight_id: '787580'
    - step:
        id: '18'
        object_path: Window("Google Chrome").Dialog("Save Print Output As").WinButton("Save")
        action: Click
        snapshot: .\Snapshots\ssf13.png
        highlight_id: '1377444'
    - step:
        id: '19'
        object_path: Window("Google Chrome").Dialog("Save Print Output As").Dialog("Confirm
          Save As").WinButton("Yes")
        action: Click
        snapshot: .\Snapshots\ssf14.png
        highlight_id: '917978'
  outputs:
  - return_result: ${return_result}
  - error_message: ${error_message}
  results:
  - SUCCESS
  - WARNING
  - FAILURE
