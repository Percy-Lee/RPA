namespace: ID_Check_Lab
operation:
  name: 身分證確認
  inputs:
  - ROCID:
      required: false
  - YEAR:
      required: false
  - MONTH:
      required: false
  - DAY:
      required: false
  - PLACE:
      required: false
  - CATEGORY:
      required: false
  sequential_action:
    gav: com.microfocus.seq:ID_Check_Lab.身分證確認:1.0.0
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
        args: Parameter("ROCID")
        snapshot: .\Snapshots\ssf1.png
        highlight_id: '10000000'
    - step:
        id: '2'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebList("applyTWY")
        action: Select
        args: Parameter("YEAR")
        snapshot: .\Snapshots\ssf2.png
        highlight_id: '10000000'
    - step:
        id: '3'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebList("applyMM")
        action: Select
        args: Parameter("MONTH")
        snapshot: .\Snapshots\ssf3.png
        highlight_id: '10000000'
    - step:
        id: '4'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebList("applyDD")
        action: Select
        args: Parameter("DAY")
        snapshot: .\Snapshots\ssf4.png
        highlight_id: '10000000'
    - step:
        id: '5'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebList("siteId")
        action: Select
        args: Parameter("PLACE")
        snapshot: .\Snapshots\ssf5.png
        highlight_id: '10000000'
    - step:
        id: '6'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebList("applyReason")
        action: Select
        args: Parameter("CATEGORY")
        snapshot: .\Snapshots\ssf6.png
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
        snapshot: .\Snapshots\ssf7.png
        highlight_id: '10000000'
    - step:
        id: '9'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebButton("送出")
        action: Click
        snapshot: .\Snapshots\ssf8.png
        highlight_id: '10000000'
    - step:
        id: '10'
        action: Wait
        args: '"3"'
        default_args: '"1"'
    - step:
        id: '11'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame_2").WebButton("列 印")
        action: Click
    - step:
        id: '12'
        action: Wait
        args: '"3"'
        default_args: '"1"'
    - step:
        id: '13'
        object_path: Window("Google Chrome").InsightObject("InsightObject")
        action: Click
    - step:
        id: '14'
        action: Wait
        args: '"3"'
        default_args: '"1"'
    - step:
        id: '15'
        object_path: Window("Google Chrome").Dialog("Save Print Output As").WinEdit("File
          name:")
        action: Set
        args: '"C:\CheckData2\OutputPDF\report"'
    - step:
        id: '16'
        object_path: Window("Google Chrome").Dialog("Save Print Output As").WinButton("Save")
        action: Click
    - step:
        id: '17'
        object_path: '''Window("Google Chrome").Dialog("Save Print Output As").Dialog("Confirm
          Save As").WinButton("Yes")'
        action: Click
  outputs:
  - return_result: ${return_result}
  - error_message: ${error_message}
  results:
  - SUCCESS
  - WARNING
  - FAILURE
