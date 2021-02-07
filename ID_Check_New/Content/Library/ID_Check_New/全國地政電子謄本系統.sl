namespace: ID_Check_New
operation:
  name: 全國地政電子謄本系統
  sequential_action:
    gav: 'com.microfocus.seq:ID_Check_New.全國地政電子謄本系統:1.0.14'
    skills:
      - Web
    settings:
      windows:
        active: false
      web:
        active: true
        address: 'https://ep.land.nat.gov.tw/EpaperDoc/MainNew'
        browser: IE64
        close_on_exit: false
    steps:
      - step:
          id: '1'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("Year")'
          action: Set
          args: '"109"'
          snapshot: ".\\Snapshots\\ssf1.png"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("Year")'
      - step:
          id: '2'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("Month")'
          action: Set
          args: '"12"'
          snapshot: ".\\Snapshots\\ssf2.png"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("Month")'
      - step:
          id: '3'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("Day")'
          action: Set
          args: '"7"'
          snapshot: ".\\Snapshots\\ssf3.png"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("Day")'
      - step:
          id: '4'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("Hour")'
          action: Set
          args: '"11"'
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("Hour")'
      - step:
          id: '5'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("Min")'
          action: Set
          args: '"00"'
          snapshot: ".\\Snapshots\\ssf5.png"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("Min")'
      - step:
          id: '6'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebList("City_ID")'
          action: Select
          args: '"臺北市"'
          snapshot: ".\\Snapshots\\ssf6.png"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebList("City ID")'
      - step:
          id: '7'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebList("Area_ID")'
          action: Select
          args: '"內湖區"'
          snapshot: ".\\Snapshots\\ssf7.png"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebList("Area ID")'
      - step:
          id: '8'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebList("DocID2")'
          action: Select
          args: '"中山電謄"'
          snapshot: ".\\Snapshots\\ssf8.png"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebList("DocID2")'
      - step:
          id: '9'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("DocID3")'
          action: Set
          args: '"100"'
          snapshot: ".\\Snapshots\\ssf9.png"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("DocID3")'
      - step:
          id: '10'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebCheckBox("NCSession")'
          action: Set
          args: '"ON"'
          snapshot: ".\\Snapshots\\ssf10.png"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebCheckBox("NCSession")'
      - step:
          id: '11'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("CheckID")'
          action: Set
          args: '"12345"'
          snapshot: ".\\Snapshots\\ssf11.html"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("CheckID")'
      - step:
          id: '12'
          action: Script
          object_path: 'aa = inputbox("Input:")'
      - step:
          id: '13'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("CaptchaValue")'
          action: Set
          args: aa
          snapshot: ".\\Snapshots\\ssf12.html"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebEdit("CaptchaValue")'
      - step:
          id: '14'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebButton("送出")'
          action: Click
          snapshot: ".\\Snapshots\\ssf13.html"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統").WebButton("送出")'
      - step:
          id: '15'
          action: Wait
          args: '"5"'
          default_args: '"1"'
      - step:
          id: '16'
          action: Script
          object_path: 'hwnd_scr = Browser("全國地政電子謄本系統").GetROProperty("hwnd")'
      - step:
          id: '17'
          object_path: 'window("hwnd:=" & hwnd_scr)'
          action: type
          args: 'micCtrlDwn + "p" + micCtrlUp'
          snapshot: ".\\Snapshots\\ssf1.png"
          highlight_id: '1574270'
      - step:
          id: '18'
          object_path: 'Browser("全國地政電子謄本系統_2").Dialog("列印").WinButton("列印(P)")'
          action: Click
          snapshot: ".\\Snapshots\\ssf2.png"
          highlight_id: '525148'
      - step:
          id: '19'
          action: Wait
          args: '"10"'
          default_args: '"1"'
      - step:
          id: '20'
          object_path: 'Dialog("CutePDF Writer").WinToolbar("網址帶狀工具列")'
          action: Press
          args: '1'
          snapshot: ".\\Snapshots\\ssf4.png"
          highlight_id: '852878'
      - step:
          id: '21'
          object_path: 'Dialog("CutePDF Writer").WinComboBox("ComboBox")'
          action: Select
          args: "\"C:\\CheckData\\Process\\OutputPDF\""
          snapshot: ".\\Snapshots\\ssf5.png"
          highlight_id: '4195656'
      - step:
          id: '22'
          object_path: 'Dialog("CutePDF Writer").WinEdit("檔案名稱:")'
          action: Set
          args: '"AAA"'
          snapshot: ".\\Snapshots\\ssf7.png"
          highlight_id: '1705342'
      - step:
          id: '23'
          object_path: 'Dialog("CutePDF Writer").WinButton("存檔(S)")'
          action: Click
          snapshot: ".\\Snapshots\\ssf8.png"
          highlight_id: '3606032'
      - step:
          id: '24'
          action: Script
          object_path: 'If Dialog("CutePDF Writer").Dialog("確認另存新檔").WinButton("是(Y)").exist(5) Then'
      - step:
          id: '25'
          object_path: 'Dialog("CutePDF Writer").Dialog("確認另存新檔").WinButton("是(Y)")'
          action: Click
      - step:
          id: '26'
          action: Script
          object_path: End If
          snapshot: ".\\Snapshots\\ssf9.png"
          highlight_id: '5441050'
      - step:
          id: '27'
          object_path: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統_2").WebButton("重新查詢")'
          action: Click
          snapshot: ".\\Snapshots\\ssf14.html"
          highlight_id: 'Browser("全國地政電子謄本系統").Page("全國地政電子謄本系統 2").WebButton("重新查詢")'
      - step:
          id: '28'
          action: Wait
          args: '"5"'
          default_args: '"1"'
      - step:
          id: '29'
          object_path: 'Browser("全國地政電子謄本系統")'
          action: CloseAllTabs
          snapshot: ".\\Snapshots\\ssf16.png"
          highlight_id: '590760'
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
        last_update_time: '2020年12月15日 下午 02:02:19'
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
              last_update_time: '2020年12月15日 下午 02:02:19'
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
              last_update_time: '2020年12月15日 下午 02:02:19'
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
              last_update_time: '2020年12月15日 下午 02:02:19'
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
              last_update_time: '2020年12月15日 下午 02:02:19'
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
              last_update_time: '2020年12月15日 下午 02:02:19'
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
    - object:
        class: Browser
        name: 全國地政電子謄本系統_2
        properties:
          - property:
              value:
                value: 全國地政電子謄本系統
                regular_expression: false
              name: title
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 'https://ep.land.nat.gov.tw/EpaperDoc/MainNew'
                regular_expression: false
              name: openurl
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 全國地政電子謄本系統
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
                value: 全國地政電子謄本系統
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
                value: '6'
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
        last_update_time: '2020年12月15日 下午 02:02:19'
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
              last_update_time: '2020年12月15日 下午 02:02:19'
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
    - object:
        class: Browser
        name: 全國地政電子謄本系統
        properties:
          - property:
              value:
                value: 全國地政電子謄本系統
                regular_expression: false
              name: title
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 'https://ep.land.nat.gov.tw/EpaperDoc/MainNew'
                regular_expression: false
              name: openurl
              hidden: true
              read_only: true
              type: STRING
          - property:
              value:
                value: 全國地政電子謄本系統
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
                value: 全國地政電子謄本系統
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
        last_update_time: '2020年12月15日 下午 02:02:19'
        child_objects:
          - object:
              class: Page
              name: 全國地政電子謄本系統_2
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
                      value: 'https://ep.land.nat.gov.tw/EpaperDoc/MainNewCheck'
                      regular_expression: false
                    name: url without form data
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: 'https://ep.land.nat.gov.tw/EpaperDoc/MainNewCheck'
                      regular_expression: false
                    name: url
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: 全國地政電子謄本系統
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
                      value: '20035'
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
                      value: '22019'
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
              last_update_time: '2020年12月15日 下午 02:02:19'
              child_objects:
                - object:
                    class: WebButton
                    name: 重新查詢
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
                            value: '//TABLE[2]/TBODY[1]/TR[1]/TD[2]/TABLE[2]/TBODY[1]/TR[1]/TH[1]/SPAN[1]/INPUT[1]'
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
                            value: 重新查詢
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
                            value: '148'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: 重新查詢
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
                            value: btn_back
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
          - object:
              class: Page
              name: 全國地政電子謄本系統
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
                      value: 'https://ep.land.nat.gov.tw/EpaperDoc/MainNew'
                      regular_expression: false
                    name: url without form data
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: 'https://ep.land.nat.gov.tw/EpaperDoc/MainNew'
                      regular_expression: false
                    name: url
                    hidden: true
                    read_only: true
                    type: STRING
                - property:
                    value:
                      value: 全國地政電子謄本系統
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
                      value: '20034'
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
                      value: '47232'
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
              last_update_time: '2020年12月15日 下午 02:02:19'
              child_objects:
                - object:
                    class: WebList
                    name: DocID2
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
                            value: '//TABLE[2]/TBODY[1]/TR[1]/TD[2]/TABLE[2]/TBODY[1]/TR[1]/TD[2]/FORM[1]/TABLE[1]/TBODY[1]/TR[1]/TD[1]/DIV[1]/TABLE[1]/TBODY[1]/TR[5]/TD[1]/SELECT[1]'
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
                            value: '226'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: DocID2
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '2'
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
                            value: DocID2
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
                - object:
                    class: WebList
                    name: City_ID
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
                            value: '//SELECT[@id="City_ID"]'
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
                            value: '180'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: City_ID
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '23'
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
                            value: City_ID
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
                            value: st1
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
                - object:
                    class: WebList
                    name: Area_ID
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
                            value: '//SELECT[@id="Area_ID"]'
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
                            value: '207'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: Area_ID
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
                            value: Area_ID
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
                            value: st1
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
                - object:
                    class: WebEdit
                    name: Year
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
                            value: '//INPUT[@id="Year"]'
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
                            value: '172'
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
                            value: Year
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '3'
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
                            value: Year
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
                            value: required
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
                - object:
                    class: WebEdit
                    name: Month
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
                            value: '//INPUT[@id="Month"]'
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
                            value: '173'
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
                            value: Month
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
                            value: Month
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
                            value: required
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
                - object:
                    class: WebEdit
                    name: Min
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
                            value: '//INPUT[@id="Min"]'
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
                            value: '176'
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
                            value: Min
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
                            value: Min
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
                            value: required
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
                - object:
                    class: WebEdit
                    name: Hour
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
                            value: '//INPUT[@id="Hour"]'
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
                            value: '175'
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
                            value: Hour
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
                            value: Hour
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
                            value: required
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
                - object:
                    class: WebEdit
                    name: DocID3
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
                            value: '//TABLE[2]/TBODY[1]/TR[1]/TD[2]/TABLE[2]/TBODY[1]/TR[1]/TD[2]/FORM[1]/TABLE[1]/TBODY[1]/TR[1]/TD[1]/DIV[1]/TABLE[1]/TBODY[1]/TR[5]/TD[1]/INPUT[2]'
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
                            value: '229'
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
                            value: DocID3
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '6'
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
                            value: DocID3
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
                            value: required
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
                - object:
                    class: WebEdit
                    name: Day
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
                            value: '//INPUT[@id="Day"]'
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
                            value: '174'
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
                            value: Day
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
                            value: Day
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
                            value: required
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
                - object:
                    class: WebEdit
                    name: CheckID
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
                            value: '//INPUT[@id="CheckID"]'
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
                            value: '377'
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
                            value: CheckID
                            regular_expression: false
                          name: name
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '15'
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
                            value: CheckID
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
                            value: required
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
                - object:
                    class: WebEdit
                    name: CaptchaValue
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
                            value: '//INPUT[@id="CaptchaValue"]'
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
                            value: '381'
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
                            value: CaptchaValue
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
                            value: CaptchaValue
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
                            value: required
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
                - object:
                    class: WebCheckBox
                    name: NCSession
                    properties:
                      - property:
                          value:
                            value: WebCheckBox
                            regular_expression: false
                          name: micclass
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: '//INPUT[@id="NCSession"]'
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
                            value: 'Y'
                            regular_expression: false
                          name: value
                          hidden: true
                          read_only: true
                          type: STRING
                      - property:
                          value:
                            value: checkbox
                            regular_expression: false
                          name: type
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '372'
                            regular_expression: false
                          name: source_index
                          hidden: true
                          read_only: true
                          type: NUMBER
                      - property:
                          value:
                            value: NCSession
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
                            value: NCSession
                            regular_expression: false
                          name: html id
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
                      algorithm: Mercury.TolerantPriority
                      active: true
                    custom_replay: ''
                    comments: ''
                    visual_relations: ''
                    last_update_time: '2020年12月15日 下午 02:02:19'
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
                            value: '//TABLE[2]/TBODY[1]/TR[1]/TD[2]/TABLE[2]/TBODY[1]/TR[1]/TD[2]/FORM[1]/TABLE[1]/TBODY[1]/TR[1]/TD[1]/DIV[1]/CENTER[1]/INPUT[3]'
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
                            value: submit
                            regular_expression: false
                          name: type
                          hidden: false
                          read_only: false
                          type: STRING
                      - property:
                          value:
                            value: '384'
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
                            value: btn_senta
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
                    last_update_time: '2020年12月15日 下午 02:02:19'
                    child_objects: []
  check_points_and_outputs: []
  parameters: []
