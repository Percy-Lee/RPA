namespace: New
flow:
  name: New_Flow
  workflow:
    - ID_Check_主流程:
        do:
          ID_Check_Lab.ID_Check_主流程: []
        navigate:
          - SUCCESS: SUCCESS
          - FAILURE: on_failure
  results:
    - FAILURE
    - SUCCESS
extensions:
  graph:
    steps:
      ID_Check_主流程:
        x: 202
        'y': 172.39999389648438
        navigate:
          e3c5a5d7-08b7-e700-bb61-55211c9b2d3c:
            targetId: 6fe65531-3742-a29e-b3c7-fa7d9ec3cb4e
            port: SUCCESS
    results:
      SUCCESS:
        6fe65531-3742-a29e-b3c7-fa7d9ec3cb4e:
          x: 478
          'y': 110.4000244140625
