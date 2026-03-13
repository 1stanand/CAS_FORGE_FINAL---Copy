@Epic-E2E
@AuthoredBy-rishabh.sachan
@ImplementedBy-rishabh.sachan
@Conventional
@E2EOrder
@Release
@Reject
@Order


Feature: End to end work flow for All LOB Order Wise

  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Validate activity of application after initiating rejection for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user open application manager
    And user search application in Application Manager
    When user opens activity in activity section
    Then rejection activity of application at "<Stage>" stage should be present in activity section

    @LoginAcceptance
    Examples:
      | LogicalID | ProductType    | Stage            | RevisitCount |
      | EDU00004  | Education Loan | Login Acceptance |              |

    @KYC
    Examples:
      | LogicalID | ProductType    | Stage | RevisitCount |
      | EDU00004  | Education Loan | KYC   |              |
      | PL00003   | Personal Loan  | KYC   |              |

    @CreditBureauReferral
    Examples:
      | LogicalID | ProductType    | Stage                  | RevisitCount |
      | EDU00004  | Education Loan | CREDIT_BUREAU_REFERRAL |              |

    @CreditApproval
    Examples:
      | LogicalID | ProductType    | Stage           | RevisitCount |
      | EDU00004  | Education Loan | Credit Approval |              |
      | AL00005   | Auto Loan      | Credit Approval |              |

    @Recommendation
    Examples:
      | LogicalID | ProductType    | Stage          | RevisitCount |
      | EDU00004  | Education Loan | Recommendation | 1            |

    @Disbursal
    Examples:
      | LogicalID | ProductType    | Stage     | RevisitCount |
      | EDU00004  | Education Loan | Disbursal | 1            |
      | HL00003   | Home Loan      | Disbursal | 1            |


  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Save review action for rejected application of <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to rejection grid
    And user opens application from reject grid
    When user reads data from the excel file "<RejectApplicationWB>" under sheet "<RejectApplication_sheet>" and row <RejectApplication_rowNum>
    And user fills review action details on review rejected application
    And user save review action details for rejected application
    Then Application should move to "<SendBackStage>" Stage

    @LoginAcceptance
    Examples:
      | LogicalID | RejectApplicationWB              | RejectApplication_sheet | RejectApplication_rowNum | ProductType    | SendBackStage    | RevisitCount |
      | EDU00004  | reject_application_end_flow.xlsx | review_action           | 0                        | Education Loan | Login Acceptance |              |

    @KYC
    Examples:
      | LogicalID | RejectApplicationWB              | RejectApplication_sheet | RejectApplication_rowNum | ProductType    | SendBackStage | RevisitCount |
      | EDU00004  | reject_application_end_flow.xlsx | review_action           | 1                        | Education Loan | KYC           |              |
      | PL00003   | reject_application_end_flow.xlsx | review_action           | 6                        | Personal Loan  |               |              |

    @CreditBureauReferral
    Examples:
      | LogicalID | RejectApplicationWB              | RejectApplication_sheet | RejectApplication_rowNum | ProductType    | SendBackStage          | RevisitCount |
      | EDU00004  | reject_application_end_flow.xlsx | review_action           | 2                        | Education Loan | CREDIT_BUREAU_REFERRAL |              |


    @CreditApproval
    Examples:
      | LogicalID | RejectApplicationWB              | RejectApplication_sheet | RejectApplication_rowNum | ProductType    | SendBackStage   | RevisitCount |
      | EDU00004  | reject_application_end_flow.xlsx | review_action           | 3                        | Education Loan | Credit Approval |              |
      | AL00005   | reject_application_end_flow.xlsx | review_action           | 6                        | Auto Loan      |                 |              |


    @Recommendation
    Examples:
      | LogicalID | RejectApplicationWB              | RejectApplication_sheet | RejectApplication_rowNum | ProductType    | SendBackStage  | RevisitCount |
      | EDU00004  | reject_application_end_flow.xlsx | review_action           | 4                        | Education Loan | Recommendation | 1            |


    @Disbursal
    Examples:
      | LogicalID | RejectApplicationWB              | RejectApplication_sheet | RejectApplication_rowNum | ProductType    | SendBackStage   | RevisitCount |
      | EDU00004  | reject_application_end_flow.xlsx | review_action           | 3                        | Education Loan | Credit Approval | 1            |
      | HL00003   | reject_application_end_flow.xlsx | review_action           | 6                        | Home Loan      |                 | 1            |


  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Validate the In-Queue status of application in grid for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user open "<GridName>" grid
    When user searches application of "<Stage>" stage in respective Grid
    Then In-Queue status in application search grid is "Returned"

    @LoginAcceptance
    Examples:
      | LogicalID | ProductType    | GridName    | Stage            | RevisitCount |
      | EDU00004  | Education Loan | Application | Login Acceptance |              |

    @KYC
    Examples:
      | LogicalID | ProductType    | GridName    | Stage | RevisitCount |
      | EDU00004  | Education Loan | Application | KYC   |              |

    @CreditBureauReferral
    Examples:
      | LogicalID | ProductType    | GridName    | Stage                  | RevisitCount |
      | EDU00004  | Education Loan | Application | CREDIT_BUREAU_REFERRAL |              |

    @CreditApproval
    Examples:
      | LogicalID | ProductType    | GridName        | Stage           | RevisitCount |
      | EDU00004  | Education Loan | Credit Approval | Credit Approval |              |

    @Recommendation
    Examples:
      | LogicalID | ProductType    | GridName    | Stage          | RevisitCount |
      | EDU00004  | Education Loan | Application | Recommendation | 1            |

    @Disbursal
    Examples:
      | LogicalID | ProductType    | GridName        | Stage           | RevisitCount |
      | EDU00004  | Education Loan | Credit Approval | Credit Approval | 1            |

  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Validate send back activity of application after reviewing rejection of application for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user open application manager
    And user search application in Application Manager
    When user opens activity in activity section
    Then send back activity should be present in activity section

    @LoginAcceptance
    Examples:
      | LogicalID | ProductType    | RevisitCount |
      | EDU00004  | Education Loan |              |

    @KYC
    Examples:
      | LogicalID | ProductType    | RevisitCount |
      | EDU00004  | Education Loan |              |

    @CreditBureauReferral
    Examples:
      | LogicalID | ProductType    | RevisitCount |
      | EDU00004  | Education Loan |              |

    @CreditApproval
    Examples:
      | LogicalID | ProductType    | RevisitCount |
      | EDU00004  | Education Loan |              |

    @Recommendation
    Examples:
      | LogicalID | ProductType    | RevisitCount |
      | EDU00004  | Education Loan | 1            |

    @Disbursal
    @SendBack
    Examples:
      | LogicalID | ProductType    | RevisitCount |
      | EDU00004  | Education Loan | 1            |


  Scenario Outline: [LogicalID-<LogicalID>][RevisitCount-<RevisitCount>] Validate confirm rejection of application of <ProductType> from application manager LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user open application manager
    When user search application in Application Manager
    Then No task should be present for the application

    @KYC
    Examples:
      | LogicalID | ProductType   | RevisitCount |
      | PL00003   | Personal Loan |              |

    @CreditApproval
    Examples:
      | LogicalID | ProductType | RevisitCount |
      | AL00005   | Auto Loan   |              |

    @Disbursal
    Examples:
      | LogicalID | ProductType | RevisitCount |
      | HL00003   | Home Loan   | 1            |
