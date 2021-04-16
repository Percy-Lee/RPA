namespace: Test
flow:
  name: Test_Flow
  workflow:
    - Add_Excel_Data:
        do_external:
          4552e495-4595-4916-b58b-ce521bdb1e9a:
            - excelFileName: "c:\\test"
            - rowData: '2'
        navigate:
          - failure: on_failure
          - success: SUCCESS
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      Add_Excel_Data:
        x: 247
        'y': 157.11111450195312
        navigate:
          6353b1f9-9c16-b070-8e23-7650d78c8df3:
            targetId: 2e136dc8-8f60-a200-afda-d5fb4b0c2c27
            port: success
    results:
      SUCCESS:
        2e136dc8-8f60-a200-afda-d5fb4b0c2c27:
          x: 389
          'y': 46.22222900390625
