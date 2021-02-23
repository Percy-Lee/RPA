namespace: Lab01
flow:
  name: ID_Check_主流程
  inputs:
    - Source: "C:\\CheckData2\\IDCheck.txt"
  workflow:
    - 檢查檔案_FS_Exists:
        do_external:
          87e6ebad-dd89-4519-83f1-f1573f237d21:
            - source: '${Source}'
        navigate:
          - success: 讀取時間_get_time
          - failure: on_failure
    - 讀取時間_get_time:
        do:
          io.cloudslang.base.datetime.get_time:
            - timezone: GMT+8
            - date_format: yyyyMddHHmmss
        publish:
          - 現在時間: '${output}'
        navigate:
          - SUCCESS: 讀取檔案_Read_from_File
          - FAILURE: on_failure
    - 讀取檔案_Read_from_File:
        do_external:
          023c9848-ce6d-4637-b16d-6cde4179d02a:
            - source: '${Source}'
            - delimiter: ','
        publish:
          - Content: '${returnResult}'
        navigate:
          - failure: on_failure
          - no more items: 建立資料夾_FS_Create_Directory
          - success: 建立資料夾_FS_Create_Directory
    - 建立資料夾_FS_Create_Directory:
        do_external:
          b17536af-f18d-42e6-90d4-57a87a304869:
            - path: "${'C:\\\\CheckData2\\\\Process\\\\'+Content.split(',')[0]+'_'+現在時間}"
        publish:
          - path
        navigate:
          - success: SUCCESS
          - failure: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      檢查檔案_FS_Exists:
        x: 180
        'y': 119.39999389648438
      讀取時間_get_time:
        x: 179
        'y': 322
      讀取檔案_Read_from_File:
        x: 344
        'y': 124
      建立資料夾_FS_Create_Directory:
        x: 341
        'y': 319
        navigate:
          3725dbb1-46ba-b826-e210-3e97a10d3792:
            targetId: 380c577c-3fe8-5c30-9e25-5b4ab5c9f8c5
            port: success
    results:
      SUCCESS:
        380c577c-3fe8-5c30-9e25-5b4ab5c9f8c5:
          x: 507
          'y': 190
