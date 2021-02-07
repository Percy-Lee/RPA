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
        x: 216
        'y': 223.39999389648438
        navigate:
          07abdf10-8ecb-c57c-3706-c00cdf873ff8:
            targetId: 7421706d-0f58-0189-9b7d-2ced6eea8ac0
            port: SUCCESS
          addb3b73-c4f3-a9b8-cfc1-e51f9e208116:
            targetId: 7421706d-0f58-0189-9b7d-2ced6eea8ac0
            port: WARNING
    results:
      SUCCESS:
        7421706d-0f58-0189-9b7d-2ced6eea8ac0:
          x: 430
          'y': 155
