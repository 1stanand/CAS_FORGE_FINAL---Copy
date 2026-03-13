@Epic-E2E
@Conventional
@E2EOrder
@Release
@Order
@OperationCheck
@AuthoredBy-harshita.nayak
@ImplementedBy-harshita.nayak
@NotImplemented
@CAS-262309
@Sprint-4
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise


  Scenario Outline: ACAUTOCAS-20902: Save operations checklist at operation check stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "OPERATIONS CHECK" stage present in context from application grid
    And user reads data from the excel file "<OperationCheck_WB>" under sheet "<OperationCheck_sheet>" and row <OperationCheck_RowNum>
    When user take decision on the basis of operation checklist
    Then operations check should be saved successfully

    Examples:
      | LogicalID          | OperationCheck_WB              | OperationCheck_sheet | OperationCheck_RowNum | ProductType             |
      | CC00001            | credit_card_loan_end_flow.xlsx | operations_check     | 0                     | Credit Card Application |
      | CC00002            | credit_card_loan_end_flow.xlsx | operations_check     | 0                     | Credit Card Application |
      | CAS_262309_CC00002 | credit_card_loan_end_flow.xlsx | operations_check     | 0                     | Credit Card Application |
      | CC00003            | credit_card_loan_end_flow.xlsx | operations_check     | 0                     | Credit Card Application |
