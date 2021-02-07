namespace: ID_Check_New
operation:
  name: 期貨違約
  sequential_action:
    gav: 'com.microfocus.seq:ID_Check_New.期貨違約:1.0.14'
    skills:
      - Web
    settings:
      windows:
        active: false
      web:
        active: true
        address: 'https://report.taifex.com.tw/FMS/login.html'
        browser: IE64
        close_on_exit: false
    steps:
      - step:
          id: '1'
          object_path: 'Browser("台灣期貨交易所-期貨商管理系統").Page("台灣期貨交易所-期貨商管理系統").WebEdit("username")'
          action: Set
          args: '"UserName"'
          snapshot: ".\\Snapshots\\ssf3.png"
          highlight_id: 'Browser("台灣期貨交易所-期貨商管理系統").Page("台灣期貨交易所-期貨商管理系統").WebEdit("username")'
      - step:
          id: '2'
          object_path: 'Browser("台灣期貨交易所-期貨商管理系統").Page("台灣期貨交易所-期貨商管理系統").WebEdit("subId")'
          action: Set
          args: '"SU"'
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: 'Browser("台灣期貨交易所-期貨商管理系統").Page("台灣期貨交易所-期貨商管理系統").WebEdit("subId")'
      - step:
          id: '3'
          object_path: 'Browser("台灣期貨交易所-期貨商管理系統").Page("台灣期貨交易所-期貨商管理系統").WebEdit("j_password")'
          action: SetSecure
          args: '"password"'
          snapshot: ".\\Snapshots\\ssf5.png"
          highlight_id: 'Browser("台灣期貨交易所-期貨商管理系統").Page("台灣期貨交易所-期貨商管理系統").WebEdit("j password")'
      - step:
          id: '4'
          action: Wait
          args: '"1"'
          default_args: '"1"'
      - step:
          id: '5'
          object_path: 'Browser("台灣期貨交易所-期貨商管理系統").Page("台灣期貨交易所-期貨商管理系統").Image("go")'
          action: Click
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: 'Browser("台灣期貨交易所-期貨商管理系統").Page("台灣期貨交易所-期貨商管理系統").Image("go")'
      - step:
          id: '6'
          action: Wait
          args: '"1"'
          default_args: '"1"'
      - step:
          id: '7'
          action: Script
          object_path: 'hwnd_scr = Browser("台灣期貨交易所-期貨商管理系統").GetROProperty("hwnd")'
      - step:
          id: '8'
          object_path: 'window("hwnd:=" & hwnd_scr)'
          action: type
          args: 'micCtrlDwn + "p" + micCtrlUp'
      - step:
          id: '9'
          action: Wait
          args: '"2"'
          default_args: '"1"'
      - step:
          id: '10'
          object_path: 'Browser("台灣期貨交易所-期貨商管理系統_2").Dialog("列印").WinListView("SysListView32")'
          action: Select
          args: '"CutePDF Writer"'
      - step:
          id: '11'
          object_path: 'Browser("台灣期貨交易所-期貨商管理系統_3").Dialog("列印").WinButton("列印(P)")'
          action: Click
          snapshot: ".\\Snapshots\\ssf3.png"
          highlight_id: '525620'
      - step:
          id: '12'
          action: Wait
          args: '"10"'
          default_args: '"1"'
      - step:
          id: '13'
          object_path: 'Dialog("CutePDF Writer").WinToolbar("網址帶狀工具列")'
          action: Press
          args: '1'
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: '132502'
      - step:
          id: '14'
          object_path: 'Dialog("CutePDF Writer").WinComboBox("ComboBox")'
          action: Select
          args: "\"C:\\CheckData\\Process\\OutputPDF\""
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: '132452'
      - step:
          id: '15'
          object_path: 'Dialog("CutePDF Writer").WinEdit("檔案名稱:")'
          action: Set
          args: '"Taifex"'
          snapshot: ".\\Snapshots\\ssf9.png"
          highlight_id: '67010'
      - step:
          id: '16'
          object_path: 'Dialog("CutePDF Writer").WinButton("存檔(S)")'
          action: Click
          snapshot: ".\\Snapshots\\ssf10.png"
          highlight_id: '132444'
      - step:
          id: '17'
          action: Script
          object_path: 'If Dialog("CutePDF Writer").Dialog("確認另存新檔").WinButton("是(Y)").exist(5) Then'
      - step:
          id: '18'
          object_path: 'Dialog("CutePDF Writer").Dialog("確認另存新檔").WinButton("是(Y)")'
          action: Click
      - step:
          id: '19'
          action: Script
          object_path: End If
          snapshot: ".\\Snapshots\\ssf11.png"
          highlight_id: '263636'
      - step:
          id: '20'
          action: Wait
          args: '"1"'
          default_args: '"1"'
      - step:
          id: '21'
          object_path: 'Browser("台灣期貨交易所-期貨商管理系統")'
          action: CloseAllTabs
          snapshot: ".\\Snapshots\\ssf8.png"
          highlight_id: '263100'
  outputs:
    - return_result: '${return_result}'
    - error_message: '${error_message}'
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
        last_update_time: '2020年12月14日 下午 05:01:54'
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
              last_update_time: '2020年12月14日 下午 05:01:54'
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
              last_update_time: '2020年12月14日 下午 05:01:54'
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
              last_update_time: '2020年12月14日 下午 05:01:54'
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
              last_update_time: '2020年12月14日 下午 05:01:54'
              child_objects: []
          - object:
              class: WinButton
              name: 存檔(S)
              properties:
                - property:
                    value:
                      value: '存檔(&S)'
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
              last_update_time: '2020年12月14日 下午 05:01:54'
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
              last_update_time: '2020年12月14日 下午 05:01:54'
              child_objects:
                - object:
                    class: WinButton
                    name: 是(Y)
                    properties:
                      - property:
                          value:
                            value: '是(&Y)'
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
                    last_update_time: '2020年12月14日 下午 05:01:54'
                    child_objects: []
    - object:
        class: Browser
        name: 台灣期貨交易所-期貨商管理系統_3
        properties:
          - property:
              value:
                value: 台灣期貨交易所-期貨商管理系統
                regular_expression: false
              name: title
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 'https://report.taifex.com.tw/FMS/login.html'
                regular_expression: false
              name: openurl
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 台灣期貨交易所-期貨商管理系統
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
                value: 台灣期貨交易所-期貨商管理系統
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
                value: '10'
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
        last_update_time: '2020年12月14日 下午 05:01:54'
        child_objects:
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
              last_update_time: '2020年12月14日 下午 05:01:54'
              child_objects:
                - object:
                    class: WinButton
                    name: 列印(P)
                    properties:
                      - property:
                          value:
                            value: '列印(&P)'
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
                    last_update_time: '2020年12月14日 下午 05:01:54'
                    child_objects: []
    - object:
        class: Browser
        name: 台灣期貨交易所-期貨商管理系統_2
        properties:
          - property:
              value:
                value: 台灣期貨交易所-期貨商管理系統
                regular_expression: false
              name: title
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 'https://report.taifex.com.tw/FMS/login.html'
                regular_expression: false
              name: openurl
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 台灣期貨交易所-期貨商管理系統
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
                value: 台灣期貨交易所-期貨商管理系統
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
                value: '5'
                regular_expression: false
              name: browserindex
              hidden: true
              read_only: true
              type: I2
        basic_identification:
          property_ref:
            - micclass
          ordinal_identifier:
            value: 2
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
        last_update_time: '2020年12月14日 下午 05:01:54'
        child_objects:
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
              last_update_time: '2020年12月14日 下午 05:01:54'
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
                    last_update_time: '2020年12月14日 下午 05:01:54'
                    child_objects: []
    - object:
        class: Browser
        name: 台灣期貨交易所-期貨商管理系統
        properties:
          - property:
              value:
                value: 台灣期貨交易所-期貨商管理系統
                regular_expression: false
              name: title
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 'https://report.taifex.com.tw/FMS/login.html'
                regular_expression: false
              name: openurl
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 台灣期貨交易所-期貨商管理系統
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
                value: 台灣期貨交易所-期貨商管理系統
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
        last_update_time: '2020年12月14日 下午 05:01:54'
        child_objects:
          - object:
              class: WinObject
              name: 通知
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
                      value: 通知
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
              last_update_time: '2020年12月14日 下午 05:01:54'
              child_objects:
                - object:
                    class: WinButton
                    name: 關閉
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
                            value: push button
                            regular_expression: false
                          name: nativeclass
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: 關閉
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
                        value: push button
                        name: simclass
                        type: STRING
                    comments: ''
                    visual_relations: ''
                    last_update_time: '2020年12月14日 下午 05:01:54'
                    child_objects: []
                - object:
                    class: WinButton
                    name: 安裝
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
                            value: push button
                            regular_expression: false
                          name: nativeclass
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: 安裝
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
                        value: push button
                        name: simclass
                        type: STRING
                    comments: ''
                    visual_relations: ''
                    last_update_time: '2020年12月14日 下午 05:01:54'
                    child_objects: []
          - object:
              class: Page
              name: 台灣期貨交易所-期貨商管理系統
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
                      value: 'https://report.taifex.com.tw/FMS/login.html'
                      regular_expression: false
                    name: url without form data
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: 'https://report.taifex.com.tw/FMS/login.html'
                      regular_expression: false
                    name: url
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: 台灣期貨交易所-期貨商管理系統
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
                      value: '10024'
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
                      value: '11424'
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
              last_update_time: '2020年12月14日 下午 05:01:54'
              child_objects:
                - object:
                    class: WebEdit
                    name: username
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
                            value: '//INPUT[@id="username"]'
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
                            value: '44'
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
                            value: username
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '524288'
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
                            value: username
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
                    last_update_time: '2020年12月14日 下午 05:01:54'
                    child_objects: []
                - object:
                    class: WebEdit
                    name: subId
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
                            value: '//INPUT[@id="subId"]'
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
                            value: '48'
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
                            value: subId
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '2'
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
                            value: subId
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
                    last_update_time: '2020年12月14日 下午 05:01:54'
                    child_objects: []
                - object:
                    class: WebEdit
                    name: j_password
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
                            value: '//INPUT[@id="j_password"]'
                            regular_expression: false
                          name: _xpath
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: password
                            regular_expression: false
                          name: type
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '52'
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
                            value: j_password
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '524288'
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
                            value: j_password
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
                    last_update_time: '2020年12月14日 下午 05:01:54'
                    child_objects: []
                - object:
                    class: Image
                    name: go
                    properties:
                      - property:
                          value:
                            value: Image
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '//FORM[@id="loginForm"]/TBODY[1]/TR[4]/TD[1]/A[1]/IMG[1]'
                            regular_expression: false
                          name: _xpath
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '21'
                            regular_expression: false
                          name: width
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
                            value: Image
                            regular_expression: false
                          name: name
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: Image Link
                            regular_expression: false
                          name: image type
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: IMG
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
                            value: '21'
                            regular_expression: false
                          name: height
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: go.gif
                            regular_expression: false
                          name: file name
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
                          name: alt
                          hidden: false
                          read_only: false
                          type: STRING
                    basic_identification:
                      property_ref:
                        - micclass
                        - _xpath
                        - image type
                        - html tag
                        - alt
                      ordinal_identifier: ''
                    smart_identification:
                      base_filter:
                        property_ref:
                          - micclass
                          - html tag
                      optional_filter:
                        property_ref:
                          - alt
                          - image type
                          - html id
                          - name
                          - file name
                          - class
                          - visible
                          - width
                          - height
                      algorithm: Mercury.TolerantPriority
                      active: true
                    custom_replay: ''
                    comments: ''
                    visual_relations: ''
                    last_update_time: '2020年12月14日 下午 05:01:54'
                    child_objects: []
  check_points_and_outputs: []
  parameters: []
