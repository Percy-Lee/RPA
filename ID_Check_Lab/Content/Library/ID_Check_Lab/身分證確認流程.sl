namespace: ID_Check_Lab
flow:
  name: 身分證確認流程
  workflow:
    - 身分證確認:
        do:
          ID_Check_Lab.身分證確認: []
        navigate:
          - SUCCESS: SUCCESS
          - WARNING: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      身分證確認:
        x: 251
        'y': 167.39999389648438
        navigate:
          8bfe7a7c-aa9a-86c1-5422-e73b701c436d:
            targetId: c7045cc5-0d73-3339-66c3-8a4755ab808c
            port: SUCCESS
          b7cd6b1f-54b7-1a87-19ee-4844cf7361b9:
            targetId: c7045cc5-0d73-3339-66c3-8a4755ab808c
            port: WARNING
    results:
      SUCCESS:
        c7045cc5-0d73-3339-66c3-8a4755ab808c:
          x: 443
          'y': 78
