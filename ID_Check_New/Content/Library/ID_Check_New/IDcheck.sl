namespace: ID_Check_New
operation:
  name: IDcheck
  inputs:
  - ID_Number: A123874054
  - ID_Year: '103'
  - ID_Month: '11'
  - ID_Day: '4'
  - SiteId: 新北市
  - IDType: 換發
  sequential_action:
    gav: com.microfocus.seq:ID_Check_New.IDcheck:1.0.14
    skills:
    - Web
    settings:
      windows:
        active: false
      web:
        active: true
        address: https://www.ris.gov.tw/app/portal/3014
        browser: IE64
        close_on_exit: false
    steps:
    - step:
        id: '1'
        object_path: Browser("國民身分證").Page("領補換資料").Frame("Frame").WebEdit("idnum")
        action: Set
        args: Parameter("ID_Number")
        snapshot: .\Snapshots\ssf1.html
        highlight_id: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司
          全球資訊網 - 國民身分證領補換資料").Frame("Frame").WebEdit("idnum")
    - step:
        id: '2'
        object_path: Browser("國民身分證").Page("領補換資料").Frame("Frame").WebList("applyTWY")
        action: Select
        args: Parameter("ID_Year")
        snapshot: .\Snapshots\ssf2.png
        highlight_id: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司
          全球資訊網 - 國民身分證領補換資料").Frame("Frame").WebList("applyTWY")
    - step:
        id: '3'
        object_path: Browser("國民身分證").Page("領補換資料").Frame("Frame").WebList("applyMM")
        action: Select
        args: Parameter("ID_Month")
        snapshot: .\Snapshots\ssf3.png
        highlight_id: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司
          全球資訊網 - 國民身分證領補換資料").Frame("Frame").WebList("applyMM")
    - step:
        id: '4'
        object_path: Browser("國民身分證").Page("領補換資料").Frame("Frame").WebList("applyDD")
        action: Select
        args: Parameter("ID_Day")
        snapshot: .\Snapshots\ssf4.png
        highlight_id: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司
          全球資訊網 - 國民身分證領補換資料").Frame("Frame").WebList("applyDD")
    - step:
        id: '5'
        object_path: Browser("國民身分證").Page("領補換資料").Frame("Frame").WebList("siteId")
        action: Select
        args: Parameter("SiteId")
        snapshot: .\Snapshots\ssf5.png
        highlight_id: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司
          全球資訊網 - 國民身分證領補換資料").Frame("Frame").WebList("siteId")
    - step:
        id: '6'
        object_path: Browser("國民身分證").Page("領補換資料").Frame("Frame").WebList("applyReason")
        action: Select
        args: Parameter("IDType")
        snapshot: .\Snapshots\ssf6.png
        highlight_id: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司
          全球資訊網 - 國民身分證領補換資料").Frame("Frame").WebList("applyReason")
    - step:
        id: '7'
        action: Script
        object_path: aa = inputbox("input...")
    - step:
        id: '8'
        object_path: Browser("國民身分證").Page("領補換資料").Frame("Frame").WebEdit("captchaInput")
        action: Set
        args: aa
        snapshot: .\Snapshots\ssf7.png
        highlight_id: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司
          全球資訊網 - 國民身分證領補換資料").Frame("Frame").WebEdit("captchaInput")
    - step:
        id: '9'
        object_path: Browser("國民身分證").Page("領補換資料").Frame("Frame").WebButton("送出")
        action: Click
        snapshot: .\Snapshots\ssf8.html
        highlight_id: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司
          全球資訊網 - 國民身分證領補換資料").Frame("Frame").WebButton("送出")
    - step:
        id: '10'
        action: Wait
        args: '"1"'
        default_args: '"1"'
    - step:
        id: '11'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司 全球資訊網
          - 國民身分證領補換資料").Frame("Frame").WebButton("列 印")
        action: Click
        snapshot: .\Snapshots\ssf1.html
        highlight_id: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Page("中華民國 內政部戶政司
          全球資訊網 - 國民身分證領補換資料").Frame("Frame").WebButton("列 印")
    - step:
        id: '12'
        action: Wait
        args: '"5"'
        default_args: '"1"'
    - step:
        id: '13'
        object_path: '''Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料").Dialog("列印").WinButton("列印(P)")'
        action: Click
        snapshot: .\Snapshots\ssf2.png
        highlight_id: '2163466'
    - step:
        id: '14'
        args: '"5"'
        object_path: '''Wait 5'
        action: Script
    - step:
        id: '15'
        object_path: '''Dialog("CutePDF Writer").WinToolbar("網址帶狀工具列")'
        action: Press
        args: '1'
        snapshot: .\Snapshots\ssf3.png
        highlight_id: '1901916'
    - step:
        id: '16'
        object_path: '''Dialog("CutePDF Writer").WinComboBox("ComboBox")'
        action: Select
        args: '"C:\CheckData\Process\OutputPDF"'
        snapshot: .\Snapshots\ssf5.png
        highlight_id: '1907617800'
    - step:
        id: '17'
        object_path: '''Dialog("CutePDF Writer").WinEdit("檔案名稱:")'
        action: Set
        args: '"IDCheck"'
    - step:
        id: '18'
        object_path: '''Dialog("CutePDF Writer").WinButton("存檔(S)")'
        action: Click
    - step:
        id: '19'
        action: Script
        object_path: '''If Dialog("CutePDF Writer").Dialog("確認另存新檔").WinButton("是(Y)").Exist
          Then'
    - step:
        id: '20'
        object_path: '''Dialog("CutePDF Writer").Dialog("確認另存新檔").WinButton("是(Y)")'
        action: Click
    - step:
        id: '21'
        action: Script
        object_path: '''End If'
    - step:
        id: '22'
        object_path: Browser("國民身分證").Dialog("Print").WinButton("Print")
        action: Click
    - step:
        id: '23'
        action: Wait
        args: '"5"'
        default_args: '"1"'
    - step:
        id: '24'
        object_path: Browser("國民身分證").Dialog("Save Print Output As").WinEdit("File
          name:")
        action: Set
        args: '"C:\CheckData\Process\OutputPDF\IDCheck"'
    - step:
        id: '25'
        object_path: Browser("國民身分證").Dialog("Save Print Output As").WinButton("Save")
        action: Click
    - step:
        id: '26'
        action: Wait
        args: '"3"'
        default_args: '"1"'
    - step:
        id: '27'
        action: Script
        object_path: if Browser("國民身分證").Dialog("Save Print Output As").Dialog("Confirm
          Save As").Exist then
    - step:
        id: '28'
        object_path: Browser("國民身分證").Dialog("Save Print Output As").Dialog("Confirm
          Save As").WinButton("Yes")
        action: Click
    - step:
        id: '29'
        action: Script
        object_path: End If
    - step:
        id: '30'
        action: Wait
        args: '"5"'
        default_args: '"1"'
    - step:
        id: '31'
        object_path: Browser("中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料")
        action: CloseAllTabs
        snapshot: .\Snapshots\ssf11.png
        highlight_id: '459626'
  outputs:
  - return_result: ${return_result}
  - error_message: ${error_message}
  results:
  - SUCCESS
  - WARNING
  - FAILURE
object_repository:
  objects:
  - object:
      class: Dialog
      name: CutePDF Writer
      properties:
      - property:
          value:
            value: CutePDF Writer
            regular_expression: false
          name: text
          hidden: false
          read_only: false
          type: STRING
      - property:
          value:
            value: '#32770'
            regular_expression: false
          name: nativeclass
          hidden: false
          read_only: false
          type: STRING
      - property:
          value:
            value: '0'
            regular_expression: false
          name: is owned window
          hidden: false
          read_only: false
          type: BOOL
      - property:
          value:
            value: '0'
            regular_expression: false
          name: is child window
          hidden: false
          read_only: false
          type: BOOL
      basic_identification:
        property_ref:
        - text
        - nativeclass
        - is owned window
        - is child window
        ordinal_identifier: ''
      smart_identification: ''
      custom_replay:
        behavior:
          value: '#32770'
          name: simclass
          type: STRING
      comments: ''
      visual_relations: ''
      last_update_time: Tuesday, December 15, 2020 11:34:46 PM
      child_objects:
      - object:
          class: WinToolbar
          name: 網址帶狀工具列
          properties:
          - property:
              value:
                value: 網址帶狀工具列
                regular_expression: false
              name: text
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: ToolbarWindow32
                regular_expression: false
              name: nativeclass
              hidden: false
              read_only: false
              type: STRING
          basic_identification:
            property_ref:
            - text
            - nativeclass
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: ToolbarWindow32
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:34:46 PM
          child_objects: []
      - object:
          class: WinObject
          name: 檔案總管窗格
          properties:
          - property:
              value:
                value: DirectUIHWND
                regular_expression: false
              name: regexpwndclass
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: 檔案總管窗格
                regular_expression: false
              name: acc_name
              hidden: false
              read_only: false
              type: STRING
          basic_identification:
            property_ref:
            - regexpwndclass
            - acc_name
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: window
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:34:46 PM
          child_objects:
          - object:
              class: WinToolbar
              name: 命令模組
              properties:
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: text
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: tool bar
                    regular_expression: false
                  name: nativeclass
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: 命令模組
                    regular_expression: false
                  name: acc_name
                  hidden: false
                  read_only: false
                  type: STRING
              basic_identification:
                property_ref:
                - text
                - nativeclass
                - acc_name
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay:
                behavior:
                  value: tool bar
                  name: simclass
                  type: STRING
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:34:46 PM
              child_objects: []
      - object:
          class: WinEdit
          name: '檔案名稱:'
          properties:
          - property:
              value:
                value: Edit
                regular_expression: false
              name: nativeclass
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '檔案名稱:'
                regular_expression: false
              name: attached text
              hidden: false
              read_only: false
              type: STRING
          basic_identification:
            property_ref:
            - nativeclass
            - attached text
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: Edit
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:34:46 PM
          child_objects: []
      - object:
          class: WinComboBox
          name: ComboBox
          properties:
          - property:
              value:
                value: '41477'
                regular_expression: false
              name: window id
              hidden: false
              read_only: false
              type: NUMBER
          - property:
              value:
                value: ComboBox
                regular_expression: false
              name: nativeclass
              hidden: false
              read_only: false
              type: STRING
          basic_identification:
            property_ref:
            - window id
            - nativeclass
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: ComboBox
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:34:46 PM
          child_objects: []
      - object:
          class: WinButton
          name: 存檔(S)
          properties:
          - property:
              value:
                value: 存檔(&S)
                regular_expression: false
              name: text
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: Button
                regular_expression: false
              name: nativeclass
              hidden: false
              read_only: false
              type: STRING
          basic_identification:
            property_ref:
            - text
            - nativeclass
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: Button
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:34:46 PM
          child_objects: []
      - object:
          class: Dialog
          name: 確認另存新檔
          properties:
          - property:
              value:
                value: 確認另存新檔
                regular_expression: false
              name: text
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '#32770'
                regular_expression: false
              name: nativeclass
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '-1'
                regular_expression: false
              name: is owned window
              hidden: false
              read_only: false
              type: BOOL
          - property:
              value:
                value: '0'
                regular_expression: false
              name: is child window
              hidden: false
              read_only: false
              type: BOOL
          basic_identification:
            property_ref:
            - text
            - nativeclass
            - is owned window
            - is child window
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: '#32770'
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:34:46 PM
          child_objects:
          - object:
              class: WinButton
              name: 是(Y)
              properties:
              - property:
                  value:
                    value: 是(&Y)
                    regular_expression: false
                  name: text
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: Button
                    regular_expression: false
                  name: nativeclass
                  hidden: false
                  read_only: false
                  type: STRING
              basic_identification:
                property_ref:
                - text
                - nativeclass
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay:
                behavior:
                  value: Button
                  name: simclass
                  type: STRING
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:34:46 PM
              child_objects: []
  - object:
      class: Browser
      name: 國民身分證
      properties:
      - property:
          value:
            value: 中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料查詢作業
            regular_expression: false
          name: title
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: https://www.ris.gov.tw/app/portal/3014
            regular_expression: false
          name: openurl
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: 中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料查詢作業
            regular_expression: false
          name: opentitle
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: '-1'
            regular_expression: false
          name: openedbytestingtool
          hidden: true
          read_only: true
          type: BOOL
      - property:
          value:
            value: '1'
            regular_expression: false
          name: number of tabs
          hidden: true
          read_only: true
          type: NUMBER
      - property:
          value:
            value: 中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料查詢作業
            regular_expression: false
          name: name
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: Browser
            regular_expression: false
          name: micclass
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: '-1'
            regular_expression: false
          name: hastoolbar
          hidden: true
          read_only: true
          type: BOOL
      - property:
          value:
            value: '0'
            regular_expression: false
          name: hasstatusbar
          hidden: true
          read_only: true
          type: BOOL
      - property:
          value:
            value: '-1'
            regular_expression: false
          name: hasmenubar
          hidden: true
          read_only: true
          type: BOOL
      - property:
          value:
            value: '2'
            regular_expression: false
          name: browserindex
          hidden: true
          read_only: true
          type: I2
      basic_identification:
        property_ref:
        - micclass
        ordinal_identifier:
          value: 0
          type: creationtime
      smart_identification:
        base_filter:
          property_ref:
          - micclass
        optional_filter:
          property_ref:
          - name
          - title
          - openurl
          - opentitle
          - hasstatusbar
          - hasmenubar
          - hastoolbar
          - openedbytestingtool
          - number of tabs
        algorithm: Mercury.TolerantPriority
        active: true
      custom_replay: ''
      comments: ''
      visual_relations: ''
      last_update_time: Tuesday, December 15, 2020 11:34:46 PM
      child_objects:
      - object:
          class: Page
          name: 領補換資料
          properties:
          - property:
              value:
                value: ''
                regular_expression: false
              name: user-input in post data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: user input in get data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: https://www.ris.gov.tw/app/portal/3014
                regular_expression: false
              name: url without form data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: https://www.ris.gov.tw/app/portal/3014
                regular_expression: false
              name: url
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料查詢作業
                regular_expression: false
              name: title
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: non user-input in post data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: non user-input in get data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: Page
                regular_expression: false
              name: micclass
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '20011'
                regular_expression: false
              name: index
              hidden: true
              read_only: true
              type: NUMBER
          - property:
              value:
                value: ''
                regular_expression: false
              name: form data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '53775'
                regular_expression: false
              name: document size
              hidden: true
              read_only: true
              type: NUMBER
          - property:
              value:
                value: ''
                regular_expression: false
              name: all data in get method
              hidden: true
              read_only: true
              type: STRING
          basic_identification:
            property_ref:
            - micclass
            ordinal_identifier: ''
          smart_identification:
            base_filter:
              property_ref:
              - micclass
            optional_filter:
              property_ref:
              - title
              - url
            algorithm: Mercury.TolerantPriority
            active: true
          custom_replay: ''
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:34:46 PM
          child_objects:
          - object:
              class: Frame
              name: Frame_2
              properties:
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: user-input in post data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: user input in get data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: https://www.ris.gov.tw/apply-idCard/app/idcard/IDCardReissue/query
                    regular_expression: false
                  name: url without form data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: https://www.ris.gov.tw/apply-idCard/app/idcard/IDCardReissue/query
                    regular_expression: false
                  name: url
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: 國民身分證領補換資料查詢作業
                    regular_expression: false
                  name: title
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: non user-input in post data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: non user-input in get data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: Frame
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: index
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: form data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '14965'
                    regular_expression: false
                  name: document size
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: all data in get method
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                ordinal_identifier: ''
              smart_identification:
                base_filter:
                  property_ref:
                  - micclass
                optional_filter:
                  property_ref:
                  - name
                  - title
                  - url
                algorithm: Mercury.TolerantPriority
                active: true
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:34:46 PM
              child_objects:
              - object:
                  class: WebButton
                  name: 回上頁
                  properties:
                  - property:
                      value:
                        value: WebButton
                        regular_expression: false
                      name: micclass
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: //DIV[@id="resultBlock"]/DIV[2]/DIV[2]/DIV[2]/BUTTON[1]
                        regular_expression: false
                      name: _xpath
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: '-1'
                        regular_expression: false
                      name: visible
                      hidden: true
                      read_only: true
                      type: BOOL
                  - property:
                      value:
                        value: 回上頁
                        regular_expression: false
                      name: value
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: button
                        regular_expression: false
                      name: type
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: '146'
                        regular_expression: false
                      name: source_index
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: 回上頁
                        regular_expression: false
                      name: name
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: BUTTON
                        regular_expression: false
                      name: html tag
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: html id
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: btn btn-primary backward
                        regular_expression: false
                      name: class
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: acc_name
                      hidden: true
                      read_only: true
                      type: STRING
                  basic_identification:
                    property_ref:
                    - micclass
                    - _xpath
                    - type
                    - name
                    - html tag
                    ordinal_identifier: ''
                  smart_identification:
                    base_filter:
                      property_ref:
                      - micclass
                      - html tag
                    optional_filter:
                      property_ref:
                      - name
                      - type
                      - html id
                      - value
                      - class
                      - visible
                      - acc_name
                    algorithm: Mercury.TolerantPriority
                    active: true
                  custom_replay: ''
                  comments: ''
                  visual_relations: ''
                  last_update_time: Tuesday, December 15, 2020 11:34:46 PM
                  child_objects: []
          - object:
              class: Frame
              name: Frame
              properties:
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: user-input in post data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: user input in get data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: https://www.ris.gov.tw/apply-idCard/app/idcard/IDCardReissue/main
                    regular_expression: false
                  name: url without form data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: https://www.ris.gov.tw/apply-idCard/app/idcard/IDCardReissue/main
                    regular_expression: false
                  name: url
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: 國民身分證領補換資料查詢作業
                    regular_expression: false
                  name: title
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: non user-input in post data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: non user-input in get data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: Frame
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: index
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: form data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '15421'
                    regular_expression: false
                  name: document size
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: all data in get method
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                ordinal_identifier: ''
              smart_identification:
                base_filter:
                  property_ref:
                  - micclass
                optional_filter:
                  property_ref:
                  - name
                  - title
                  - url
                algorithm: Mercury.TolerantPriority
                active: true
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:34:46 PM
              child_objects:
              - object:
                  class: WebList
                  name: siteId
                  properties:
                  - property:
                      value:
                        value: WebList
                        regular_expression: false
                      name: micclass
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: //SELECT[@id="siteId"]
                        regular_expression: false
                      name: _xpath
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: '0'
                        regular_expression: false
                      name: visible items
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: '-1'
                        regular_expression: false
                      name: visible
                      hidden: true
                      read_only: true
                      type: BOOL
                  - property:
                      value:
                        value: '179'
                        regular_expression: false
                      name: source_index
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: siteId
                        regular_expression: false
                      name: name
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: '28'
                        regular_expression: false
                      name: items count
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: SELECT
                        regular_expression: false
                      name: html tag
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: siteId
                        regular_expression: false
                      name: html id
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: default value
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: form-control
                        regular_expression: false
                      name: class
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: acc_name
                      hidden: true
                      read_only: true
                      type: STRING
                  basic_identification:
                    property_ref:
                    - micclass
                    - _xpath
                    - name
                    - html tag
                    ordinal_identifier: ''
                  smart_identification:
                    base_filter:
                      property_ref:
                      - micclass
                      - html tag
                    optional_filter:
                      property_ref:
                      - name
                      - html id
                      - class
                      - default value
                      - items count
                      - visible items
                      - visible
                      - acc_name
                    algorithm: Mercury.TolerantPriority
                    active: true
                  custom_replay: ''
                  comments: ''
                  visual_relations: ''
                  last_update_time: Tuesday, December 15, 2020 11:34:46 PM
                  child_objects: []
              - object:
                  class: WebList
                  name: applyTWY
                  properties:
                  - property:
                      value:
                        value: WebList
                        regular_expression: false
                      name: micclass
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: //SELECT[@id="applyTWY"]
                        regular_expression: false
                      name: _xpath
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: '0'
                        regular_expression: false
                      name: visible items
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: '-1'
                        regular_expression: false
                      name: visible
                      hidden: true
                      read_only: true
                      type: BOOL
                  - property:
                      value:
                        value: '106'
                        regular_expression: false
                      name: source_index
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: applyTWY
                        regular_expression: false
                      name: name
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: '17'
                        regular_expression: false
                      name: items count
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: SELECT
                        regular_expression: false
                      name: html tag
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: applyTWY
                        regular_expression: false
                      name: html id
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: default value
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: form-control inline min-control
                        regular_expression: false
                      name: class
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: acc_name
                      hidden: true
                      read_only: true
                      type: STRING
                  basic_identification:
                    property_ref:
                    - micclass
                    - _xpath
                    - name
                    - html tag
                    ordinal_identifier: ''
                  smart_identification:
                    base_filter:
                      property_ref:
                      - micclass
                      - html tag
                    optional_filter:
                      property_ref:
                      - name
                      - html id
                      - class
                      - default value
                      - items count
                      - visible items
                      - visible
                      - acc_name
                    algorithm: Mercury.TolerantPriority
                    active: true
                  custom_replay: ''
                  comments: ''
                  visual_relations: ''
                  last_update_time: Tuesday, December 15, 2020 11:34:46 PM
                  child_objects: []
              - object:
                  class: WebList
                  name: applyReason
                  properties:
                  - property:
                      value:
                        value: WebList
                        regular_expression: false
                      name: micclass
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: //SELECT[@id="applyReason"]
                        regular_expression: false
                      name: _xpath
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: '0'
                        regular_expression: false
                      name: visible items
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: '-1'
                        regular_expression: false
                      name: visible
                      hidden: true
                      read_only: true
                      type: BOOL
                  - property:
                      value:
                        value: '213'
                        regular_expression: false
                      name: source_index
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: applyReason
                        regular_expression: false
                      name: name
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: '4'
                        regular_expression: false
                      name: items count
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: SELECT
                        regular_expression: false
                      name: html tag
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: applyReason
                        regular_expression: false
                      name: html id
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: default value
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: form-control
                        regular_expression: false
                      name: class
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: acc_name
                      hidden: true
                      read_only: true
                      type: STRING
                  basic_identification:
                    property_ref:
                    - micclass
                    - _xpath
                    - name
                    - html tag
                    ordinal_identifier: ''
                  smart_identification:
                    base_filter:
                      property_ref:
                      - micclass
                      - html tag
                    optional_filter:
                      property_ref:
                      - name
                      - html id
                      - class
                      - default value
                      - items count
                      - visible items
                      - visible
                      - acc_name
                    algorithm: Mercury.TolerantPriority
                    active: true
                  custom_replay: ''
                  comments: ''
                  visual_relations: ''
                  last_update_time: Tuesday, December 15, 2020 11:34:46 PM
                  child_objects: []
              - object:
                  class: WebList
                  name: applyMM
                  properties:
                  - property:
                      value:
                        value: WebList
                        regular_expression: false
                      name: micclass
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: //SELECT[@id="applyMM"]
                        regular_expression: false
                      name: _xpath
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: '0'
                        regular_expression: false
                      name: visible items
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: '-1'
                        regular_expression: false
                      name: visible
                      hidden: true
                      read_only: true
                      type: BOOL
                  - property:
                      value:
                        value: '125'
                        regular_expression: false
                      name: source_index
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: applyMM
                        regular_expression: false
                      name: name
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: '13'
                        regular_expression: false
                      name: items count
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: SELECT
                        regular_expression: false
                      name: html tag
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: applyMM
                        regular_expression: false
                      name: html id
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: default value
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: form-control inline min-control
                        regular_expression: false
                      name: class
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: acc_name
                      hidden: true
                      read_only: true
                      type: STRING
                  basic_identification:
                    property_ref:
                    - micclass
                    - _xpath
                    - name
                    - html tag
                    ordinal_identifier: ''
                  smart_identification:
                    base_filter:
                      property_ref:
                      - micclass
                      - html tag
                    optional_filter:
                      property_ref:
                      - name
                      - html id
                      - class
                      - default value
                      - items count
                      - visible items
                      - visible
                      - acc_name
                    algorithm: Mercury.TolerantPriority
                    active: true
                  custom_replay: ''
                  comments: ''
                  visual_relations: ''
                  last_update_time: Tuesday, December 15, 2020 11:34:46 PM
                  child_objects: []
              - object:
                  class: WebList
                  name: applyDD
                  properties:
                  - property:
                      value:
                        value: WebList
                        regular_expression: false
                      name: micclass
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: //SELECT[@id="applyDD"]
                        regular_expression: false
                      name: _xpath
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: '0'
                        regular_expression: false
                      name: visible items
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: '-1'
                        regular_expression: false
                      name: visible
                      hidden: true
                      read_only: true
                      type: BOOL
                  - property:
                      value:
                        value: '140'
                        regular_expression: false
                      name: source_index
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: applyDD
                        regular_expression: false
                      name: name
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: '32'
                        regular_expression: false
                      name: items count
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: SELECT
                        regular_expression: false
                      name: html tag
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: applyDD
                        regular_expression: false
                      name: html id
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: default value
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: form-control inline min-control
                        regular_expression: false
                      name: class
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: acc_name
                      hidden: true
                      read_only: true
                      type: STRING
                  basic_identification:
                    property_ref:
                    - micclass
                    - _xpath
                    - name
                    - html tag
                    ordinal_identifier: ''
                  smart_identification:
                    base_filter:
                      property_ref:
                      - micclass
                      - html tag
                    optional_filter:
                      property_ref:
                      - name
                      - html id
                      - class
                      - default value
                      - items count
                      - visible items
                      - visible
                      - acc_name
                    algorithm: Mercury.TolerantPriority
                    active: true
                  custom_replay: ''
                  comments: ''
                  visual_relations: ''
                  last_update_time: Tuesday, December 15, 2020 11:34:46 PM
                  child_objects: []
              - object:
                  class: WebEdit
                  name: idnum
                  properties:
                  - property:
                      value:
                        value: WebEdit
                        regular_expression: false
                      name: micclass
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: //INPUT[@id="idnum"]
                        regular_expression: false
                      name: _xpath
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: text
                        regular_expression: false
                      name: type
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: '99'
                        regular_expression: false
                      name: source_index
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: '0'
                        regular_expression: false
                      name: rows
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: 請輸入統一編號
                        regular_expression: false
                      name: placeholder
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: idnum
                        regular_expression: false
                      name: name
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: '10'
                        regular_expression: false
                      name: max length
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: INPUT
                        regular_expression: false
                      name: html tag
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: idnum
                        regular_expression: false
                      name: html id
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: default value
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: form-control text-uppercase
                        regular_expression: false
                      name: class
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: acc_name
                      hidden: true
                      read_only: true
                      type: STRING
                  basic_identification:
                    property_ref:
                    - micclass
                    - _xpath
                    - type
                    - name
                    - html tag
                    ordinal_identifier: ''
                  smart_identification:
                    base_filter:
                      property_ref:
                      - micclass
                      - type
                      - html tag
                    optional_filter:
                      property_ref:
                      - name
                      - html id
                      - max length
                      - default value
                      - class
                      - rows
                      - placeholder
                      - acc_name
                    algorithm: Mercury.TolerantPriority
                    active: true
                  custom_replay: ''
                  comments: ''
                  visual_relations: ''
                  last_update_time: Tuesday, December 15, 2020 11:34:46 PM
                  child_objects: []
              - object:
                  class: WebEdit
                  name: captchaInput
                  properties:
                  - property:
                      value:
                        value: WebEdit
                        regular_expression: false
                      name: micclass
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: //INPUT[@id="captchaInput_captcha-refresh"]
                        regular_expression: false
                      name: _xpath
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: text
                        regular_expression: false
                      name: type
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: '236'
                        regular_expression: false
                      name: source_index
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: '0'
                        regular_expression: false
                      name: rows
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: 請輸入驗證碼
                        regular_expression: false
                      name: placeholder
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: captchaInput
                        regular_expression: false
                      name: name
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: '5'
                        regular_expression: false
                      name: max length
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: INPUT
                        regular_expression: false
                      name: html tag
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: captchaInput_captcha-refresh
                        regular_expression: false
                      name: html id
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: default value
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: form-control
                        regular_expression: false
                      name: class
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: acc_name
                      hidden: true
                      read_only: true
                      type: STRING
                  basic_identification:
                    property_ref:
                    - micclass
                    - _xpath
                    - type
                    - name
                    - html tag
                    ordinal_identifier: ''
                  smart_identification:
                    base_filter:
                      property_ref:
                      - micclass
                      - type
                      - html tag
                    optional_filter:
                      property_ref:
                      - name
                      - html id
                      - max length
                      - default value
                      - class
                      - rows
                      - placeholder
                      - acc_name
                    algorithm: Mercury.TolerantPriority
                    active: true
                  custom_replay: ''
                  comments: ''
                  visual_relations: ''
                  last_update_time: Tuesday, December 15, 2020 11:34:46 PM
                  child_objects: []
              - object:
                  class: WebButton
                  name: 送出
                  properties:
                  - property:
                      value:
                        value: WebButton
                        regular_expression: false
                      name: micclass
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: //DIV[1]/DIV[4]/DIV[1]/DIV[1]/FORM[1]/DIV[4]/BUTTON[1]
                        regular_expression: false
                      name: _xpath
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: '-1'
                        regular_expression: false
                      name: visible
                      hidden: true
                      read_only: true
                      type: BOOL
                  - property:
                      value:
                        value: 送出
                        regular_expression: false
                      name: value
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: button
                        regular_expression: false
                      name: type
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: '256'
                        regular_expression: false
                      name: source_index
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: 送出
                        regular_expression: false
                      name: name
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: BUTTON
                        regular_expression: false
                      name: html tag
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: html id
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: btn btn-primary query
                        regular_expression: false
                      name: class
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: acc_name
                      hidden: true
                      read_only: true
                      type: STRING
                  basic_identification:
                    property_ref:
                    - micclass
                    - _xpath
                    - type
                    - name
                    - html tag
                    ordinal_identifier: ''
                  smart_identification:
                    base_filter:
                      property_ref:
                      - micclass
                      - html tag
                    optional_filter:
                      property_ref:
                      - name
                      - type
                      - html id
                      - value
                      - class
                      - visible
                      - acc_name
                    algorithm: Mercury.TolerantPriority
                    active: true
                  custom_replay: ''
                  comments: ''
                  visual_relations: ''
                  last_update_time: Tuesday, December 15, 2020 11:34:46 PM
                  child_objects: []
      - object:
          class: Dialog
          name: Save Print Output As
          properties:
          - property:
              value:
                value: Save Print Output As
                regular_expression: false
              name: text
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '#32770'
                regular_expression: false
              name: nativeclass
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '-1'
                regular_expression: false
              name: is owned window
              hidden: false
              read_only: false
              type: BOOL
          - property:
              value:
                value: '0'
                regular_expression: false
              name: is child window
              hidden: false
              read_only: false
              type: BOOL
          basic_identification:
            property_ref:
            - text
            - nativeclass
            - is owned window
            - is child window
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: '#32770'
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:34:46 PM
          child_objects:
          - object:
              class: WinToolbar
              name: 'Address: Documents'
              properties:
              - property:
                  value:
                    value: 'Address: Documents'
                    regular_expression: false
                  name: text
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: ToolbarWindow32
                    regular_expression: false
                  name: nativeclass
                  hidden: false
                  read_only: false
                  type: STRING
              basic_identification:
                property_ref:
                - text
                - nativeclass
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay:
                behavior:
                  value: ToolbarWindow32
                  name: simclass
                  type: STRING
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:34:46 PM
              child_objects: []
          - object:
              class: WinEdit
              name: 'File name:'
              properties:
              - property:
                  value:
                    value: Edit
                    regular_expression: false
                  name: nativeclass
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: 'File name:'
                    regular_expression: false
                  name: attached text
                  hidden: false
                  read_only: false
                  type: STRING
              basic_identification:
                property_ref:
                - nativeclass
                - attached text
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay:
                behavior:
                  value: Edit
                  name: simclass
                  type: STRING
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:34:46 PM
              child_objects: []
          - object:
              class: WinButton
              name: Save
              properties:
              - property:
                  value:
                    value: '&Save'
                    regular_expression: false
                  name: text
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: Button
                    regular_expression: false
                  name: nativeclass
                  hidden: false
                  read_only: false
                  type: STRING
              basic_identification:
                property_ref:
                - text
                - nativeclass
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay:
                behavior:
                  value: Button
                  name: simclass
                  type: STRING
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:34:46 PM
              child_objects: []
          - object:
              class: Dialog
              name: Confirm Save As
              properties:
              - property:
                  value:
                    value: Confirm Save As
                    regular_expression: false
                  name: text
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: '#32770'
                    regular_expression: false
                  name: nativeclass
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: '-1'
                    regular_expression: false
                  name: is owned window
                  hidden: false
                  read_only: false
                  type: BOOL
              - property:
                  value:
                    value: '0'
                    regular_expression: false
                  name: is child window
                  hidden: false
                  read_only: false
                  type: BOOL
              basic_identification:
                property_ref:
                - text
                - nativeclass
                - is owned window
                - is child window
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay:
                behavior:
                  value: '#32770'
                  name: simclass
                  type: STRING
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:34:46 PM
              child_objects:
              - object:
                  class: WinButton
                  name: 'Yes'
                  properties:
                  - property:
                      value:
                        value: '&Yes'
                        regular_expression: false
                      name: text
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: Button
                        regular_expression: false
                      name: nativeclass
                      hidden: false
                      read_only: false
                      type: STRING
                  basic_identification:
                    property_ref:
                    - text
                    - nativeclass
                    ordinal_identifier: ''
                  smart_identification: ''
                  custom_replay:
                    behavior:
                      value: Button
                      name: simclass
                      type: STRING
                  comments: ''
                  visual_relations: ''
                  last_update_time: Tuesday, December 15, 2020 11:34:46 PM
                  child_objects: []
      - object:
          class: Dialog
          name: Print
          properties:
          - property:
              value:
                value: Print
                regular_expression: false
              name: text
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '#32770'
                regular_expression: false
              name: nativeclass
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '-1'
                regular_expression: false
              name: is owned window
              hidden: false
              read_only: false
              type: BOOL
          - property:
              value:
                value: '0'
                regular_expression: false
              name: is child window
              hidden: false
              read_only: false
              type: BOOL
          basic_identification:
            property_ref:
            - text
            - nativeclass
            - is owned window
            - is child window
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: '#32770'
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:34:46 PM
          child_objects:
          - object:
              class: WinButton
              name: Print
              properties:
              - property:
                  value:
                    value: '&Print'
                    regular_expression: false
                  name: text
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: Button
                    regular_expression: false
                  name: nativeclass
                  hidden: false
                  read_only: false
                  type: STRING
              basic_identification:
                property_ref:
                - text
                - nativeclass
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay:
                behavior:
                  value: Button
                  name: simclass
                  type: STRING
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:34:46 PM
              child_objects: []
  - object:
      class: Browser
      name: 中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料
      properties:
      - property:
          value:
            value: 中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料查詢作業
            regular_expression: false
          name: title
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: https://www.ris.gov.tw/app/portal/3014
            regular_expression: false
          name: openurl
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: 中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料查詢作業
            regular_expression: false
          name: opentitle
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: '-1'
            regular_expression: false
          name: openedbytestingtool
          hidden: true
          read_only: true
          type: BOOL
      - property:
          value:
            value: '1'
            regular_expression: false
          name: number of tabs
          hidden: true
          read_only: true
          type: NUMBER
      - property:
          value:
            value: 中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料查詢作業
            regular_expression: false
          name: name
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: Browser
            regular_expression: false
          name: micclass
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: '-1'
            regular_expression: false
          name: hastoolbar
          hidden: true
          read_only: true
          type: BOOL
      - property:
          value:
            value: '0'
            regular_expression: false
          name: hasstatusbar
          hidden: true
          read_only: true
          type: BOOL
      - property:
          value:
            value: '-1'
            regular_expression: false
          name: hasmenubar
          hidden: true
          read_only: true
          type: BOOL
      - property:
          value:
            value: '4'
            regular_expression: false
          name: browserindex
          hidden: true
          read_only: true
          type: I2
      basic_identification:
        property_ref:
        - micclass
        ordinal_identifier:
          value: 1
          type: creationtime
      smart_identification:
        base_filter:
          property_ref:
          - micclass
        optional_filter:
          property_ref:
          - name
          - title
          - openurl
          - opentitle
          - hasstatusbar
          - hasmenubar
          - hastoolbar
          - openedbytestingtool
          - number of tabs
        algorithm: Mercury.TolerantPriority
        active: true
      custom_replay: ''
      comments: ''
      visual_relations: ''
      last_update_time: Tuesday, December 15, 2020 11:34:46 PM
      child_objects:
      - object:
          class: Page
          name: 中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料
          properties:
          - property:
              value:
                value: ''
                regular_expression: false
              name: user-input in post data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: user input in get data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: https://www.ris.gov.tw/app/portal/3014
                regular_expression: false
              name: url without form data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: https://www.ris.gov.tw/app/portal/3014
                regular_expression: false
              name: url
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 中華民國 內政部戶政司 全球資訊網 - 國民身分證領補換資料查詢作業
                regular_expression: false
              name: title
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: non user-input in post data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: ''
                regular_expression: false
              name: non user-input in get data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: Page
                regular_expression: false
              name: micclass
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '40015'
                regular_expression: false
              name: index
              hidden: true
              read_only: true
              type: NUMBER
          - property:
              value:
                value: ''
                regular_expression: false
              name: form data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: '53775'
                regular_expression: false
              name: document size
              hidden: true
              read_only: true
              type: NUMBER
          - property:
              value:
                value: ''
                regular_expression: false
              name: all data in get method
              hidden: true
              read_only: true
              type: STRING
          basic_identification:
            property_ref:
            - micclass
            ordinal_identifier: ''
          smart_identification:
            base_filter:
              property_ref:
              - micclass
            optional_filter:
              property_ref:
              - title
              - url
            algorithm: Mercury.TolerantPriority
            active: true
          custom_replay: ''
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:34:46 PM
          child_objects:
          - object:
              class: Frame
              name: Frame
              properties:
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: user-input in post data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: user input in get data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: https://www.ris.gov.tw/apply-idCard/app/idcard/IDCardReissue/query
                    regular_expression: false
                  name: url without form data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: https://www.ris.gov.tw/apply-idCard/app/idcard/IDCardReissue/query
                    regular_expression: false
                  name: url
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: 國民身分證領補換資料查詢作業
                    regular_expression: false
                  name: title
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: non user-input in post data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: non user-input in get data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: Frame
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: index
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: form data
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '19818'
                    regular_expression: false
                  name: document size
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: ''
                    regular_expression: false
                  name: all data in get method
                  hidden: true
                  read_only: true
                  type: STRING
              basic_identification:
                property_ref:
                - name
                - micclass
                ordinal_identifier: ''
              smart_identification:
                base_filter:
                  property_ref:
                  - micclass
                optional_filter:
                  property_ref:
                  - name
                  - title
                  - url
                algorithm: Mercury.TolerantPriority
                active: true
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:34:46 PM
              child_objects:
              - object:
                  class: WebButton
                  name: 列 印
                  properties:
                  - property:
                      value:
                        value: WebButton
                        regular_expression: false
                      name: micclass
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: //DIV[@id="resultBlock"]/DIV[2]/DIV[2]/DIV[2]/BUTTON[2]
                        regular_expression: false
                      name: _xpath
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: '-1'
                        regular_expression: false
                      name: visible
                      hidden: true
                      read_only: true
                      type: BOOL
                  - property:
                      value:
                        value: 列　印
                        regular_expression: false
                      name: value
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: button
                        regular_expression: false
                      name: type
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: '144'
                        regular_expression: false
                      name: source_index
                      hidden: true
                      read_only: true
                      type: NUMBER
                  - property:
                      value:
                        value: 列　印
                        regular_expression: false
                      name: name
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: BUTTON
                        regular_expression: false
                      name: html tag
                      hidden: false
                      read_only: false
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: html id
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: btn btn-success print
                        regular_expression: false
                      name: class
                      hidden: true
                      read_only: true
                      type: STRING
                  - property:
                      value:
                        value: ''
                        regular_expression: false
                      name: acc_name
                      hidden: true
                      read_only: true
                      type: STRING
                  basic_identification:
                    property_ref:
                    - micclass
                    - _xpath
                    - type
                    - name
                    - html tag
                    ordinal_identifier: ''
                  smart_identification:
                    base_filter:
                      property_ref:
                      - micclass
                      - html tag
                    optional_filter:
                      property_ref:
                      - name
                      - type
                      - html id
                      - value
                      - class
                      - visible
                      - acc_name
                    algorithm: Mercury.TolerantPriority
                    active: true
                  custom_replay: ''
                  comments: ''
                  visual_relations: ''
                  last_update_time: Tuesday, December 15, 2020 11:34:46 PM
                  child_objects: []
      - object:
          class: Dialog
          name: 列印
          properties:
          - property:
              value:
                value: 列印
                regular_expression: false
              name: text
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '#32770'
                regular_expression: false
              name: nativeclass
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '-1'
                regular_expression: false
              name: is owned window
              hidden: false
              read_only: false
              type: BOOL
          - property:
              value:
                value: '0'
                regular_expression: false
              name: is child window
              hidden: false
              read_only: false
              type: BOOL
          basic_identification:
            property_ref:
            - text
            - nativeclass
            - is owned window
            - is child window
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: '#32770'
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:34:46 PM
          child_objects:
          - object:
              class: WinButton
              name: 列印(P)
              properties:
              - property:
                  value:
                    value: 列印(&P)
                    regular_expression: false
                  name: text
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: Button
                    regular_expression: false
                  name: nativeclass
                  hidden: false
                  read_only: false
                  type: STRING
              basic_identification:
                property_ref:
                - text
                - nativeclass
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay:
                behavior:
                  value: Button
                  name: simclass
                  type: STRING
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:34:46 PM
              child_objects: []
  check_points_and_outputs: []
  parameters: []
