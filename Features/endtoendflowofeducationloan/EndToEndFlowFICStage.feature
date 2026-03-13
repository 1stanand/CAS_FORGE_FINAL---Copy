@Epic-E2E
@AuthoredBy-anshika.gupta
@ImplementedBy-rishabh.garg
@Conventional
@E2EOrder
@Release
@FIC
@Order
     #FeatureID-ACAUTOCAS-17388
Feature: End to end work flow for All LOB Order Wise

################################################## STAGE - FIC ####################################################################################


  Scenario Outline: ACAUTOCAS-19816: Save field investigation completion decision details at FIC stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "FIC" stage present in context from application grid
    And user reads data from the excel file "<FIC_details_WB>" under sheet "<FIC_Sheet>" and row <FIC_RowNum>
    And user fills decision details on field investigation completion page
    And user saves field investigation completion details
    Then field investigation completion details should be saved successfully

    Examples:
      | LogicalID | FIC_details_WB           | FIC_Sheet                      | FIC_RowNum | ProductType                |
      | EDU00001  | field_investigation.xlsx | field_investigation_completion | 0          | Education Loan             |
      | EDU00002  | field_investigation.xlsx | field_investigation_completion | 0          | Education Loan             |
      | AL00001   | field_investigation.xlsx | field_investigation_completion | 0          | Auto Loan                  |
      | CV00001   | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan    |
      | KCC00001  | field_investigation.xlsx | field_investigation_completion | 0          | Kisan Credit Card          |
      | GL00001   | field_investigation.xlsx | field_investigation_completion | 0          | Gold Loan                  |
      | CEQ00001  | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Equipment       |
      | CC00001   | field_investigation.xlsx | field_investigation_completion | 0          | Credit Card Application    |
      | AGRL00001 | field_investigation.xlsx | field_investigation_completion | 0          | Agriculture Loan           |
      | LAP00001  | field_investigation.xlsx | field_investigation_completion | 0          | Loan Against Property      |
      | CV00003   | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan    |
      | CV00004   | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan    |
      | CV00002   | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan    |
      | PL00001   | field_investigation.xlsx | field_investigation_completion | 0          | Personal Loan              |
      | KCC00002  | field_investigation.xlsx | field_investigation_completion | 0          | Kisan Credit Card          |
      | HL00001   | field_investigation.xlsx | field_investigation_completion | 0          | Home Loan                  |
      | PL00002   | field_investigation.xlsx | field_investigation_completion | 0          | Personal Loan              |
      | OL00001   | field_investigation.xlsx | field_investigation_completion | 0          | Omni Loan                  |
      | AL00003   | field_investigation.xlsx | field_investigation_completion | 0          | Auto Loan                  |
      | AL00002   | field_investigation.xlsx | field_investigation_completion | 0          | Auto Loan                  |
      | CC00002   | field_investigation.xlsx | field_investigation_completion | 0          | Credit Card Application    |
      | CC00003   | field_investigation.xlsx | field_investigation_completion | 0          | Credit Card Application    |
      | FAS00001  | field_investigation.xlsx | field_investigation_completion | 0          | Finance Against Securities |
      | CV00005   | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan    |

    @PQMStory
    Examples:
      | LogicalID                       | FIC_details_WB           | FIC_Sheet                      | FIC_RowNum | ProductType             |
      | CV00CAS_88943_01                | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan |
      | CV00CAS_88943_02                | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan |
      | CV00CAS_88946_01                | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan |
      | CV00CAS_206825_01               | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan |
      | CV00CAS_80273_01                | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan |
      | CV00CAS_90456_01                | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan |
      | CV00CAS_90456_02                | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv01 | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv02 | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv03 | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv04 | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv05 | field_investigation.xlsx | field_investigation_completion | 0          | Commercial Vehicle Loan |

  Scenario Outline: ACAUTOCAS-19817: Move application from FIC stage to next stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user clicks on move to next stage
    Then application should successfully move to next stage from FIC stage
    Examples:
      | LogicalID | ProductType                |
      | EDU00001  | Education Loan             |
      | EDU00002  | Education Loan             |
      | AL00001   | Auto Loan                  |
      | CV00001   | Commercial Vehicle Loan    |
      | KCC00001  | Kisan Credit Card          |
      | GL00001   | Gold Loan                  |
      | CEQ00001  | Commercial Equipment       |
      | CC00001   | Commercial Equipment       |
      | AGRL00001 | Agriculture Loan           |
      | LAP00001  | Loan Against Property      |
      | CV00003   | Commercial Vehicle Loan    |
      | CV00004   | Commercial Vehicle Loan    |
      | CV00002   | Commercial Vehicle Loan    |
      | PL00001   | Personal Loan              |
      | KCC00002  | Kisan Credit Card          |
      | HL00001   | Home Loan                  |
      | AL00003   | Auto Loan                  |
      | OL00001   | Omni Loan                  |
      | PL00002   | Personal Loan              |
      | AL00002   | Auto Loan                  |
      | CC00002   | Credit Card Application    |
      | CC00003   | Credit Card Application    |
      | FAS00001  | Finance Against Securities |
      | CV00005   | Commercial Vehicle Loan    |

    @PQMStory
    Examples:
      | LogicalID                       | ProductType             |
      | CV00CAS_88943_01                | Commercial Vehicle Loan |
      | CV00CAS_88943_02                | Commercial Vehicle Loan |
      | CV00CAS_88946_01                | Commercial Vehicle Loan |
      | CV00CAS_206825_01               | Commercial Vehicle Loan |
      | CV00CAS_80273_01                | Commercial Vehicle Loan |
      | CV00CAS_90456_01                | Commercial Vehicle Loan |
      | CV00CAS_90456_02                | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv01 | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv02 | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv03 | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv04 | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv05 | Commercial Vehicle Loan |

