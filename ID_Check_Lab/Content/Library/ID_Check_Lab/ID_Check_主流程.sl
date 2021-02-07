namespace: ID_Check_Lab
flow:
  name: ID_Check_主流程
  inputs:
    - 檔案來源: "C:\\CheckData2\\IDCheck.txt"
  workflow:
    - 檢查檔案存在_FS_Exists:
        do_external:
          87e6ebad-dd89-4519-83f1-f1573f237d21:
            - source: '${檔案來源}'
        navigate:
          - success: 讀取時間_get_time
          - failure: on_failure
    - 讀取時間_get_time:
        do:
          io.cloudslang.base.datetime.get_time:
            - date_format: yyyyMddHHmmss
        publish:
          - 現在時間: '${output}'
        navigate:
          - SUCCESS: 讀入檔案_Read_from_File
          - FAILURE: on_failure
    - 建資料夾_FS_Create_Directory:
        do_external:
          612400c6-c7fd-4922-93a2-d43b5f09cc26:
            - path: "${'C:\\\\CheckData2\\\\Process\\\\'+File_Content.split(',', 10)[0]+'_'+現在時間}"
        publish:
          - path
        navigate:
          - success: 身分證確認網站
          - failure: on_failure
    - 讀入檔案_Read_from_File:
        do_external:
          023c9848-ce6d-4637-b16d-6cde4179d02a:
            - source: '${檔案來源}'
        publish:
          - File_Content: '${returnResult}'
        navigate:
          - failure: on_failure
          - no more items: 建資料夾_FS_Create_Directory
          - success: 建資料夾_FS_Create_Directory
    - 身分證確認網站:
        do:
          ID_Check_Lab.身分證確認:
            - input_0: null
        navigate:
          - SUCCESS: 搬報表_move
          - WARNING: 搬報表_move
          - FAILURE: on_failure
    - 搬報表_move:
        do:
          io.cloudslang.base.filesystem.move:
            - source: "C:\\CheckData2\\OutputPDF\\report.pdf"
            - destination: '${path}'
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      檢查檔案存在_FS_Exists:
        x: 109
        'y': 87
      讀取時間_get_time:
        x: 110
        'y': 318
      建資料夾_FS_Create_Directory:
        x: 254
        'y': 318
      讀入檔案_Read_from_File:
        x: 252
        'y': 86
      身分證確認網站:
        x: 389
        'y': 87
      搬報表_move:
        x: 385
        'y': 317
        navigate:
          56544b1b-f933-d4cd-889d-67ff18732e10:
            targetId: 68038e24-74e0-0183-e116-0a034115de70
            port: SUCCESS
    results:
      SUCCESS:
        68038e24-74e0-0183-e116-0a034115de70:
          x: 553
          'y': 184
