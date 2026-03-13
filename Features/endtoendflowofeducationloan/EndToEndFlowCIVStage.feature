@Epic-E2E
@AuthoredBy-anshika.gupta
@ImplementedBy-anshika.gupta
@Conventional
@E2EOrder
@CIV
@Order

Feature: End to end work flow for All LOB Order Wise


############################################## STAGE -CIV ##################################################################################################


  Scenario Outline: ACAUTOCAS-20893: Save collateral investigation verification details at CIV grid for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application present in context from CIV grid
    And user reads data from the excel file "<CIV_details_WB>" under sheet "<CIV_Sheet>" and row <CIV_RowNum>
    And user fills collateral investigation legal verification
    And user fills collateral investigation decision verification
    And user "save & proceed" collateral investigation verification
    Then Application should move to "COLLATERAL INVESTIGATION COMPLETION" Stage

    Examples:
      | LogicalID | ProductType           | CIV_details_WB                             | CIV_Sheet            | CIV_RowNum |
      | CEQ00001  | Commercial Equipment  | collateral_investigation_verification.xlsx | verification_details | 0          |
      | LAP00001  | Loan Against Property | collateral_investigation_verification.xlsx | verification_details | 0          |
      | HL00001   | Home Loan             | collateral_investigation_verification.xlsx | verification_details | 0          |
      | OL00001   | Omni Loan             | collateral_investigation_verification.xlsx | verification_details | 0          |
      | OL00001   | Omni Loan             | collateral_investigation_verification.xlsx | verification_details | 0          |
      | AL00003   | Auto Loan             | collateral_investigation_verification.xlsx | verification_details | 0          |

