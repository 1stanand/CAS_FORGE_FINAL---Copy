@Epic-E2E
@AuthoredBy-anshika.gupta
@ImplementedBy-rishabh.garg
@Conventional
@E2EOrder
@Release
@CreditBureauReferral
@Order
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

############################################## STAGE 4: CREDIT_BUREAU_REFERRAL STAGE ####################################################################################

  Scenario Outline: ACAUTOCAS-19802: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Save credit bureau details at CREDIT_BUREAU_REFERRAL stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "CREDIT_BUREAU_REFERRAL" stage present in context from application grid
    And user reads data from the excel file "<CreditBureauCheckWB>" under sheet "<CreditBureauCheck_sheet>" and row <CreditBureauCheck_rowNum>
    When user fills credit bureau details decision
    And user saves credit bureau details
    Then credit bureau details should be saved successfully
    Examples:
      | LogicalID | CreditBureauCheckWB                  | CreditBureauCheck_sheet | CreditBureauCheck_rowNum | ProductType       | RevisitCount |
      | EDU00001  | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Education Loan    |              |
      | EDU00002  | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Education Loan    |              |
      | KCC00001  | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Kisan Credit Card |              |
      | AGRL00001 | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Agriculture Loan  |              |
      | PL00001   | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Personal Loan     |              |
      | KCC00002  | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Kisan Credit Card |              |
      | PL00002   | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Personal Loan     |              |

    @Reject
    Examples:
      | LogicalID | CreditBureauCheckWB                  | CreditBureauCheck_sheet | CreditBureauCheck_rowNum | ProductType    | RevisitCount |
      | EDU00004  | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Education Loan | 1            |

    @PQMStory
    Examples:
      | LogicalID                        | CreditBureauCheckWB                  | CreditBureauCheck_sheet | CreditBureauCheck_rowNum | ProductType    | RevisitCount |
      | EDU_CAS_60813_ContractualIndiv01 | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Education Loan |              |
      | EDU_CAS_60813_ContractualIndiv02 | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Education Loan |              |
      | EDU_CAS_60813_ContractualIndiv03 | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Education Loan |              |
      | EDU_CAS_60813_ContractualIndiv04 | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Education Loan |              |
      | EDU_CAS_60813_ContractualIndiv05 | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 0                        | Education Loan |              |


  Scenario Outline: Reject credit bureau referral decision at CREDIT_BUREAU_REFERRAL stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "CREDIT_BUREAU_REFERRAL" stage present in context from application grid
    And user reads data from the excel file "<CreditBureauCheckWB>" under sheet "<CreditBureauCheck_sheet>" and row <CreditBureauCheck_rowNum>
    When user fills credit bureau details decision
    And user saves credit bureau details
    And user confirms the reject credit bureau decision
    Then Application should move to "<Stage>" Stage
    Examples:
      | LogicalID | CreditBureauCheckWB                  | CreditBureauCheck_sheet | CreditBureauCheck_rowNum | ProductType    | Stage     |
      | EDU00004  | credit_bureau_referral_end_flow.xlsx | credit_bureau_check     | 1                        | Education Loan | Rejection |
