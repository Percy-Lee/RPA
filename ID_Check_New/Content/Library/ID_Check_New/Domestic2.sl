namespace: ID_Check_New
operation:
  name: Domestic2
  inputs:
  - CRT_ID: 臺灣高雄少年及家事法院
  - KD_ID: 01繼承事件
  - SearchName: 李
  sequential_action:
    gav: com.microfocus.seq:ID_Check_New.Domestic2:1.0.14
    skills:
    - Web
    - WPF
    settings:
      windows:
        active: false
      web:
        active: true
        address: https://domestic.judicial.gov.tw/abbs/wkw/WHD9HN01.jsp
        browser: IE
        close_on_exit: false
    steps:
    - step:
        id: '1'
        object_path: Browser("家事事件公告").Page("家事事件公告").WebList("crtid")
        action: Select
        args: Parameter("CRT_ID")
        snapshot: .\Snapshots\ssf1.png
        highlight_id: Browser("家事事件公告").Page("家事事件公告").WebList("crtid")
    - step:
        id: '2'
        object_path: Browser("家事事件公告").Page("家事事件公告").WebList("kdid")
        action: Select
        args: Parameter("KD_ID")
        snapshot: .\Snapshots\ssf2.png
        highlight_id: Browser("家事事件公告").Page("家事事件公告").WebList("kdid")
    - step:
        id: '3'
        object_path: Browser("家事事件公告").Page("家事事件公告").WebEdit("clnm")
        action: Set
        args: Parameter("SearchName")
        snapshot: .\Snapshots\ssf3.png
        highlight_id: Browser("家事事件公告").Page("家事事件公告").WebEdit("clnm")
    - step:
        id: '4'
        object_path: Browser("家事事件公告").Page("家事事件公告").WebButton("查 詢")
        action: Click
    - step:
        id: '5'
        object_path: Browser("家事事件公告").Page("家事事件公告").Link("列印")
        action: Click
        snapshot: .\Snapshots\ssf5.png
        highlight_id: Browser("家事事件公告").Page("家事事件公告 2").Link("列印")
    - step:
        id: '6'
        action: Wait
        args: '"1"'
        default_args: '"1"'
    - step:
        id: '7'
        object_path: '''Browser("家事事件公告").Dialog("列印").WinListView("SysListView32")'
        action: Select
        args: '"CutePDF Writer"'
        snapshot: .\Snapshots\ssf6.png
        highlight_id: '66778'
    - step:
        id: '8'
        object_path: '''Browser("家事事件公告").Dialog("列印").WinButton("列印(P)")'
        action: Click
        snapshot: .\Snapshots\ssf9.png
        highlight_id: '66734'
    - step:
        id: '9'
        object_path: '''Browser("家事事件公告").Page("家事事件公告")'
        action: Sync
        snapshot: .\Snapshots\ssf10.html
        highlight_id: Browser("家事事件公告").Page("家事事件公告_3")
    - step:
        id: '10'
        object_path: '''Dialog("CutePDF Writer").WinToolbar("網址帶狀工具列")'
        action: Press
        args: '1'
        snapshot: .\Snapshots\ssf6.png
        highlight_id: '853148'
    - step:
        id: '11'
        object_path: '''Dialog("CutePDF Writer").WinComboBox("ComboBox")'
        action: Select
        args: '"C:\CheckData\Process\OutputPDF"'
        snapshot: .\Snapshots\ssf7.png
        highlight_id: '1442856'
    - step:
        id: '12'
        object_path: '''Dialog("CutePDF Writer").WinEdit("檔案名稱:")'
        action: Set
        args: '"Domestic"'
    - step:
        id: '13'
        object_path: '''Dialog("CutePDF Writer").WinButton("存檔(S)")'
        action: Click
    - step:
        id: '14'
        action: Script
        object_path: '''If Dialog("CutePDF Writer").Dialog("確認另存新檔").WinButton("是(Y)").exist(2)
          Then'
    - step:
        id: '15'
        action: Script
        object_path: "'\tDialog(\"CutePDF Writer\").Dialog(\"確認另存新檔\").WinButton(\"\
          是(Y)\").Click"
    - step:
        id: '16'
        action: Script
        object_path: '''End If'
        snapshot: .\Snapshots\ssf19.html
        highlight_id: Browser("家事事件公告").Page("家事事件公告_3")
    - step:
        id: '17'
        object_path: Browser("國民身分證").Dialog("Print").WinButton("Print")
        action: Click
    - step:
        id: '18'
        action: Wait
        args: '"5"'
        default_args: '"1"'
    - step:
        id: '19'
        object_path: Browser("國民身分證").Dialog("Save Print Output As").WinEdit("File
          name:")
        action: Set
        args: '"C:\CheckData\Process\OutputPDF\Domestic"'
    - step:
        id: '20'
        object_path: Browser("國民身分證").Dialog("Save Print Output As").WinButton("Save")
        action: Click
    - step:
        id: '21'
        action: Wait
        args: '"3"'
        default_args: '"1"'
    - step:
        id: '22'
        action: Script
        object_path: if Browser("國民身分證").Dialog("Save Print Output As").Dialog("Confirm
          Save As").Exist then
    - step:
        id: '23'
        object_path: Browser("國民身分證").Dialog("Save Print Output As").Dialog("Confirm
          Save As").WinButton("Yes")
        action: Click
    - step:
        id: '24'
        action: Script
        object_path: End If
    - step:
        id: '25'
        action: Wait
        args: '"5"'
        default_args: '"1"'
    - step:
        id: '26'
        object_path: Browser("家事事件公告")
        action: CloseAllTabs
        snapshot: .\Snapshots\ssf20.png
        highlight_id: '1246076'
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
      last_update_time: Tuesday, December 15, 2020 11:56:41 PM
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
          last_update_time: Tuesday, December 15, 2020 11:56:41 PM
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
          last_update_time: Tuesday, December 15, 2020 11:56:41 PM
          child_objects: []
      - object:
          class: WinEdit
          name: Edit
          properties:
          - property:
              value:
                value: Edit
                regular_expression: false
              name: nativeclass
              hidden: false
              read_only: false
              type: STRING
          basic_identification:
            property_ref:
            - nativeclass
            ordinal_identifier: ''
          smart_identification: ''
          custom_replay:
            behavior:
              value: Edit
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:56:41 PM
          child_objects: []
      - object:
          class: WinComboBox
          name: '存檔類型:'
          properties:
          - property:
              value:
                value: ComboBox
                regular_expression: false
              name: nativeclass
              hidden: false
              read_only: false
              type: STRING
          - property:
              value:
                value: '存檔類型:'
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
              value: ComboBox
              name: simclass
              type: STRING
          comments: ''
          visual_relations: ''
          last_update_time: Tuesday, December 15, 2020 11:56:41 PM
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
          last_update_time: Tuesday, December 15, 2020 11:56:41 PM
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
          last_update_time: Tuesday, December 15, 2020 11:56:41 PM
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
          last_update_time: Tuesday, December 15, 2020 11:56:41 PM
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
              last_update_time: Tuesday, December 15, 2020 11:56:41 PM
              child_objects: []
  - object:
      class: Browser
      name: 家事事件公告
      properties:
      - property:
          value:
            value: 家事事件公告
            regular_expression: false
          name: title
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: https://domestic.judicial.gov.tw/abbs/wkw/WHD9HN01.jsp
            regular_expression: false
          name: openurl
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: 家事事件公告
            regular_expression: false
          name: opentitle
          hidden: true
          read_only: true
          type: STRING
      - property:
          value:
            value: '0'
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
            value: 家事事件公告
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
            value: '1'
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
      last_update_time: Tuesday, December 15, 2020 11:56:41 PM
      child_objects:
      - object:
          class: Page
          name: 家事事件公告
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
                value: https://domestic.judicial.gov.tw/abbs/wkw/WHD9HN01.jsp
                regular_expression: false
              name: url without form data
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: https://domestic.judicial.gov.tw/abbs/wkw/WHD9HN01.jsp
                regular_expression: false
              name: url
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 家事事件公告
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
                value: '10046'
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
                value: '22306'
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
          last_update_time: Tuesday, December 15, 2020 11:56:41 PM
          child_objects:
          - object:
              class: WebList
              name: kdid
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
                    value: //FORM[@id="form"]/TABLE[1]/TBODY[1]/TR[2]/TD[1]/DIV[1]/DIV[1]/CENTER[1]/TABLE[1]/TBODY[1]/TR[2]/TD[2]/SELECT[1]
                    regular_expression: false
                  name: _xpath
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '1'
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
                    value: '93'
                    regular_expression: false
                  name: source_index
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: kdid
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: '7'
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
                    value: ''
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
                    value: ''
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
              last_update_time: Tuesday, December 15, 2020 11:56:41 PM
              child_objects: []
          - object:
              class: WebList
              name: crtid
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
                    value: //FORM[@id="form"]/TABLE[1]/TBODY[1]/TR[2]/TD[1]/DIV[1]/DIV[1]/CENTER[1]/TABLE[1]/TBODY[1]/TR[1]/TD[2]/SELECT[1]
                    regular_expression: false
                  name: _xpath
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: '1'
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
                    value: '56'
                    regular_expression: false
                  name: source_index
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: crtid
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: '30'
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
                    value: ''
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
                    value: ''
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
              last_update_time: Tuesday, December 15, 2020 11:56:41 PM
              child_objects: []
          - object:
              class: WebEdit
              name: clnm
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
                    value: //FORM[@id="form"]/TABLE[1]/TBODY[1]/TR[2]/TD[1]/DIV[1]/DIV[1]/CENTER[1]/TABLE[1]/TBODY[1]/TR[3]/TD[2]/INPUT[1]
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
                    value: '108'
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
                    value: ''
                    regular_expression: false
                  name: placeholder
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: clnm
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: '20'
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
                    value: ''
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
                    value: ''
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
              last_update_time: Tuesday, December 15, 2020 11:56:41 PM
              child_objects: []
          - object:
              class: WebButton
              name: 查 詢
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
                    value: //FORM[@id="form"]/TABLE[1]/TBODY[1]/TR[2]/TD[1]/DIV[1]/DIV[1]/CENTER[1]/TABLE[1]/TBODY[1]/TR[1]/TD[2]/FONT[1]/INPUT[1]
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
                    value: 　查　詢　
                    regular_expression: false
                  name: value
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: submit
                    regular_expression: false
                  name: type
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: '88'
                    regular_expression: false
                  name: source_index
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: 查　詢
                    regular_expression: false
                  name: name
                  hidden: false
                  read_only: false
                  type: STRING
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
                    value: ''
                    regular_expression: false
                  name: html id
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: small
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
              last_update_time: Tuesday, December 15, 2020 11:56:41 PM
              child_objects: []
          - object:
              class: Link
              name: 列印
              properties:
              - property:
                  value:
                    value: Link
                    regular_expression: false
                  name: micclass
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: //FORM[1]/TABLE[1]/TBODY[1]/TR[1]/TD[1]/DIV[1]/A[3]
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
                    value: 列印
                    regular_expression: false
                  name: text
                  hidden: false
                  read_only: false
                  type: STRING
              - property:
                  value:
                    value: '49'
                    regular_expression: false
                  name: source_index
                  hidden: true
                  read_only: true
                  type: NUMBER
              - property:
                  value:
                    value: 列印
                    regular_expression: false
                  name: name
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: A
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
                    value: https://domestic.judicial.gov.tw/abbs/wkw/WHD9HN02.jsp?from=WHD9HN01.jsp#
                    regular_expression: false
                  name: href
                  hidden: true
                  read_only: true
                  type: STRING
              - property:
                  value:
                    value: ''
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
                - text
                - html tag
                ordinal_identifier: ''
              smart_identification:
                base_filter:
                  property_ref:
                  - micclass
                  - html tag
                optional_filter:
                  property_ref:
                  - text
                  - html id
                  - class
                  - name
                  - href
                  - visible
                  - acc_name
                algorithm: Mercury.TolerantPriority
                active: true
              custom_replay: ''
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:56:41 PM
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
          last_update_time: Tuesday, December 15, 2020 11:56:41 PM
          child_objects:
          - object:
              class: WinListView
              name: SysListView32
              properties:
              - property:
                  value:
                    value: SysListView32
                    regular_expression: false
                  name: nativeclass
                  hidden: false
                  read_only: false
                  type: STRING
              basic_identification:
                property_ref:
                - nativeclass
                ordinal_identifier: ''
              smart_identification: ''
              custom_replay:
                behavior:
                  value: SysListView32
                  name: simclass
                  type: STRING
              comments: ''
              visual_relations: ''
              last_update_time: Tuesday, December 15, 2020 11:56:41 PM
              child_objects: []
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
              last_update_time: Tuesday, December 15, 2020 11:56:41 PM
              child_objects: []
  check_points_and_outputs: []
  parameters: []
