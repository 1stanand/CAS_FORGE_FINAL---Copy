@Epic-RejectApplication
@AuthoredBy-rishabh.sachan
@ImplementedBy-rishabh.sachan
@Conventional
@E2EOrder
@Release
@Order


Feature: End to end work flow for All LOB Order Wise

  @Reject
  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Reject application of <ProductType> at <Stage> stage from more actions LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<Stage>" stage present in context from application grid
    And user navigates to more actions application screen
    And user selects "<Action>" from more actions option
    And user reads data from the excel file "<RejectApplicationWB>" under sheet "<RejectApplication_sheet>" and row <RejectApplication_rowNum>
    When user fills all details for rejecting application
    And user confirm rejection of application
    Then Application should move to "<NextStage>" Stage
    @Recommendation
    Examples:
      | LogicalID | ProductType    | Stage          | Action             | NextStage | RejectApplicationWB              | RejectApplication_sheet | RejectApplication_rowNum | RevisitCount |
      | EDU00004  | Education Loan | Recommendation | reject application | Rejection | reject_application_end_flow.xlsx | reject                  | 0                        |              |

    @Disbursal
    Examples:
      | LogicalID | ProductType    | Stage     | Action             | NextStage | RejectApplicationWB              | RejectApplication_sheet | RejectApplication_rowNum | RevisitCount |
      | EDU00004  | Education Loan | Disbursal | reject application | Rejection | reject_application_end_flow.xlsx | reject                  | 0                        |              |
      | HL00003   | Home Loan      | Disbursal | reject application | Rejection | reject_application_end_flow.xlsx | reject                  | 0                        |              |
