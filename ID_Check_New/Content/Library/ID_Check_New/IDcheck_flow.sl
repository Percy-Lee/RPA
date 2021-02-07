namespace: ID_Check_New
flow:
  name: IDcheck_flow
  inputs:
    - datetime_format: yyyyMddHHmmss
    - trigger_file: "C:\\CheckData\\IDCheck.txt"
    - pdf_result_path: "C:\\CheckData\\Process\\OutputPDF"
  workflow:
    - Check檔案是否存在_FS_Exist:
        do_external:
          87e6ebad-dd89-4519-83f1-f1573f237d21:
            - source: '${trigger_file}'
        publish: []
        navigate:
          - success: get_time
          - failure: on_failure
    - 從檔案讀入變數_Read_File:
        do_external:
          023c9848-ce6d-4637-b16d-6cde4179d02a:
            - source: '${trigger_file}'
            - delimiter: ','
        publish:
          - ReadFile_ReturnResult: '${returnResult}'
          - ReadFile_Count: '${COUNT}'
        navigate:
          - failure: on_failure
          - no more items: FS_Create_Directory
          - success: FS_Create_Directory
    - move:
        do:
          io.cloudslang.base.filesystem.move:
            - source: '${trigger_file}'
            - destination: "${move_dest +'\\\\IDCheck.txt'}"
        publish:
          - process_filename: '${destination}'
        navigate:
          - SUCCESS: IDcheck
          - FAILURE: on_failure
    - get_time:
        do:
          io.cloudslang.base.datetime.get_time:
            - date_format: '${datetime_format}'
        publish:
          - CurrentTime: '${output}'
        navigate:
          - SUCCESS: 從檔案讀入變數_Read_File
          - FAILURE: on_failure
    - FS_Create_Directory:
        do_external:
          b17536af-f18d-42e6-90d4-57a87a304869:
            - path: "${'C:\\\\CheckData\\\\Process\\\\'+ ReadFile_ReturnResult.split(',', 10)[0] +'_' +CurrentTime}"
        publish:
          - move_dest: '${path}'
        navigate:
          - success: move
          - failure: on_failure
    - move_1:
        do:
          io.cloudslang.base.filesystem.move:
            - source: '${pdf_result_path}'
            - destination: '${move_dest}'
        navigate:
          - SUCCESS: FS_Create_Directory_1
          - FAILURE: on_failure
    - FS_Create_Directory_1:
        do_external:
          612400c6-c7fd-4922-93a2-d43b5f09cc26:
            - path: "C:\\CheckData\\Process\\OutputPDF"
        navigate:
          - success: SUCCESS
          - failure: on_failure
    - 全國地政電子謄本系統:
        do:
          ID_Check_New.全國地政電子謄本系統: []
        navigate:
          - SUCCESS: move_1
          - WARNING: move_1
          - FAILURE: on_failure
    - IDcheck:
        do:
          ID_Check_New.IDcheck:
            - ID_Number: "${ReadFile_ReturnResult.split(',', 10)[0]}"
            - ID_Year: "${ReadFile_ReturnResult.split(',', 10)[1]}"
            - ID_Month: "${ReadFile_ReturnResult.split(',', 10)[2]}"
            - ID_Day: "${ReadFile_ReturnResult.split(',', 10)[3]}"
            - SiteId: "${ReadFile_ReturnResult.split(',', 10)[4]}"
            - IDType: "${ReadFile_ReturnResult.split(',', 10)[5]}"
        navigate:
          - SUCCESS: Domestic2
          - WARNING: Domestic2
          - FAILURE: on_failure
    - 期貨違約:
        do:
          ID_Check_New.期貨違約: []
        navigate:
          - SUCCESS: 全國地政電子謄本系統
          - WARNING: 全國地政電子謄本系統
          - FAILURE: on_failure
    - Domestic2:
        do:
          ID_Check_New.Domestic2:
            - CRT_ID: "${ReadFile_ReturnResult.split(',', 10)[6]}"
            - KD_ID: "${ReadFile_ReturnResult.split(',', 10)[7]}"
            - SearchName: "${ReadFile_ReturnResult.split(',', 10)[8]}"
        navigate:
          - SUCCESS: 期貨違約
          - WARNING: 期貨違約
          - FAILURE: on_failure
  outputs:
    - return_result
    - error_message
  results:
    - SUCCESS
    - FAILURE
extensions:
  graph:
    steps:
      Check檔案是否存在_FS_Exist:
        x: 98
        'y': 105
      move_1:
        x: 692
        'y': 257
      全國地政電子謄本系統:
        x: 555
        'y': 257
      從檔案讀入變數_Read_File:
        x: 413
        'y': 107
      IDcheck:
        x: 82
        'y': 275
      FS_Create_Directory_1:
        x: 828
        'y': 258
        navigate:
          0ff0ea82-44ed-290a-f56f-72389fcad8f9:
            targetId: 7759f50e-8cc1-d520-a216-633bb4d8974f
            port: success
      move:
        x: 693
        'y': 113
      Domestic2:
        x: 278
        'y': 258
      get_time:
        x: 275
        'y': 106
      期貨違約:
        x: 414
        'y': 257
      FS_Create_Directory:
        x: 555
        'y': 112
    results:
      SUCCESS:
        7759f50e-8cc1-d520-a216-633bb4d8974f:
          x: 822
          'y': 111
