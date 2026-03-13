@Epic-E2E
@AuthoredBy-anshika.gupta
@ImplementedBy-anshika.gupta
@Conventional
@E2EOrder
@CIC
@Order

Feature: End to end work flow for All LOB Order Wise

################################################## STAGE - CIC ####################################################################################


  Scenario Outline: ACAUTOCAS-20887: Save collateral investigation completion decision details at CIC stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application present in context from CIC grid
    And user reads data from the excel file "<CIC_details_WB>" under sheet "<CIC_Sheet>" and row <CIC_RowNum>
    And user fills decision details on collateral investigation completion page
    And user saves collateral investigation completion details
    Then collateral investigation completion details should be saved successfully

    Examples:
      | LogicalID | CIC_details_WB                             | CIC_Sheet        | CIC_RowNum | ProductType           |
      | CEQ00001  | collateral_investigation_verification.xlsx | decision_details | 0          | Commercial Equipment  |
      | LAP00001  | collateral_investigation_verification.xlsx | decision_details | 0          | Loan Against Property |
      | HL00001   | collateral_investigation_verification.xlsx | decision_details | 0          | Home Loan             |
      | OL00001   | collateral_investigation_verification.xlsx | decision_details | 0          | Omni Loan             |
      | OL00001   | collateral_investigation_verification.xlsx | decision_details | 0          | Omni Loan             |

  Scenario Outline: ACAUTOCAS-20888: Proceed application from CIC stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application present in context from CIC grid
    When user proceeds to next stage
    Then application should successfully proceed from CIC stage
    Examples:
      | LogicalID | ProductType           |
      | CEQ00001  | Commercial Equipment  |
      | LAP00001  | Loan Against Property |
      | HL00001   | Home Loan             |
      | OL00001   | Omni Loan             |
      | AL00003   | Auto Loan             |
