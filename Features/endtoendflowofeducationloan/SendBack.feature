@Epic-E2E
@AuthoredBy-richa.singh
@ImplementedBy-richa.singh
@Order
@Conventional
@E2EOrder
@Release
@SendBack

Feature: End to end work flow for All LOB Order Wise


  Scenario Outline: ACAUTOCAS-19901:[LogicalID-<LogicalID>][RevisitCount-<RevisitCount>][SendBack-<SendBack>] Send Back Application to <SendBack_Stage> stage from <InitialStage> stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<InitialStage>" stage present in context from application grid
    And user reads data from the excel file "<MoreActionsWB>" under sheet "<MoreActions_sendBack>" and row <MoreActions_sendBack_rowNum>
    When user send back above application to "<SendBack_Stage>" stage
    Then validate application sent back to "<SendBack_Stage>" stage
    @KYC
    Examples:
      | LogicalID  | RevisitCount | ProductType | InitialStage | SendBack_Stage | MoreActionsWB     | MoreActions_sendBack | MoreActions_sendBack_rowNum |
      | SB_AL00001 |              | Auto Loan   | KYC          | Lead details   | more_actions.xlsx | send_back            | 15                          |
    @DDE
    Examples:
      | LogicalID  | RevisitCount | ProductType | InitialStage | SendBack_Stage | MoreActionsWB     | MoreActions_sendBack | MoreActions_sendBack_rowNum |
      | SB_AL00002 |              | Auto Loan   | DDE          | Lead details   | more_actions.xlsx | send_back            | 15                          |
    @CreditApproval
    Examples:
      | LogicalID  | RevisitCount | ProductType | InitialStage    | SendBack_Stage | MoreActionsWB     | MoreActions_sendBack | MoreActions_sendBack_rowNum |
      | SB_AL00003 |              | Auto Loan   | Credit Approval | DDE            | more_actions.xlsx | send_back            | 16                          |
    @Disbursal
    Examples:
      | LogicalID  | RevisitCount | ProductType | InitialStage | SendBack_Stage  | MoreActionsWB     | MoreActions_sendBack | MoreActions_sendBack_rowNum |
      | SB_AL00004 |              | Auto Loan   | disbursal    | Credit Approval | more_actions.xlsx | send_back            | 17                          |
