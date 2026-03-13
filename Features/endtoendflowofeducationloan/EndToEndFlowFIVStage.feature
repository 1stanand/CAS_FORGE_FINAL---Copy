@Epic-E2E
@AuthoredBy-anshika.gupta
@ImplementedBy-rishabh.garg
@Conventional
@E2EOrder
@Release
@FIV
@Order
     #FeatureID-ACAUTOCAS-17388
Feature: End to end work flow for All LOB Order Wise


############################################## STAGE -FIV ##################################################################################################


  Scenario Outline: ACAUTOCAS-19818:[LogicalID-<LogicalID>] Save Field investigation verification at FIV grid for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application present in context from FIV grid
    And user reads data from the excel file "<FIV_details_WB>" under sheet "<FIV_Sheet>" and row <FIV_RowNum>
    And user fill all mandatory fields for Field investigation verification
    And user "save & proceed" Field investigation verification
    Then Application should move to "FIC" Stage

    Examples:
      | LogicalID | FIV_details_WB           | FIV_Sheet           | FIV_RowNum | ProductType                |
      | EDU00001  | field_investigation.xlsx | FieldInvestigationV | 7          | Education Loan             |
      | EDU00002  | field_investigation.xlsx | FieldInvestigationV | 7          | Education Loan             |
      | AL00001   | field_investigation.xlsx | FieldInvestigationV | 7          | Auto Loan                  |
      | CV00001   | field_investigation.xlsx | FieldInvestigationV | 7          | Commercial Vehicle Loan    |
      | KCC00001  | field_investigation.xlsx | FieldInvestigationV | 8          | Kisan Credit Card          |
      | GL00001   | field_investigation.xlsx | FieldInvestigationV | 8          | Gold Loan                  |
      | CEQ00001  | field_investigation.xlsx | FieldInvestigationV | 7          | Commercial Equipment       |
      | CC00001   | field_investigation.xlsx | FieldInvestigationV | 7          | Credit Card Application    |
      | AGRL00001 | field_investigation.xlsx | FieldInvestigationV | 8          | Agriculture Loan           |
      | LAP00001  | field_investigation.xlsx | FieldInvestigationV | 8          | Loan Against Property      |
      | CV00003   | field_investigation.xlsx | FieldInvestigationV | 7          | Commercial Vehicle Loan    |
      | CV00004   | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan    |
      | CV00002   | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan    |
      | PL00001   | field_investigation.xlsx | FieldInvestigationV | 8          | Personal Loan              |
      | KCC00002  | field_investigation.xlsx | FieldInvestigationV | 8          | Kisan Credit Card          |
      | HL00001   | field_investigation.xlsx | FieldInvestigationV | 8          | Home Loan                  |
      | PL00002   | field_investigation.xlsx | FieldInvestigationV | 9          | Personal Loan              |
      | OL00001   | field_investigation.xlsx | FieldInvestigationV | 9          | Omni Loan                  |
      | AL00003   | field_investigation.xlsx | FieldInvestigationV | 8          | Auto Loan                  |
      | AL00002   | field_investigation.xlsx | FieldInvestigationV | 7          | Auto Loan                  |
      | CC00002   | field_investigation.xlsx | FieldInvestigationV | 7          | Credit Card Application    |
      | CC00003   | field_investigation.xlsx | FieldInvestigationV | 8          | Credit Card Application    |
      | CV00005   | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan    |
      | FAS00001  | field_investigation.xlsx | FieldInvestigationV | 8          | Finance Against Securities |

    @PQMStory
    Examples:
      | LogicalID                       | FIV_details_WB           | FIV_Sheet           | FIV_RowNum | ProductType             |
      | CV00CAS_88943_01                | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan |
      | CV00CAS_88943_02                | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan |
      | CV00CAS_88946_01                | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan |
      | CV00CAS_206825_01               | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan |
      | CV00CAS_80273_01                | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan |
      | CV00CAS_90456_01                | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan |
      | CV00CAS_90456_02                | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv01 | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv02 | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv03 | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv04 | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv05 | field_investigation.xlsx | FieldInvestigationV | 8          | Commercial Vehicle Loan |


