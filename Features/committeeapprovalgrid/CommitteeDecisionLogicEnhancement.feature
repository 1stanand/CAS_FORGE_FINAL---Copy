@DevTrack
@GA-9.0
@Epic-HD-Bank-GA-9.0
@AuthoredBy-anand.singh1
@Order
@NotImplemented
@CAS-247073
Feature: Committee Decision Logic Enhancement

    ######==================================== PURPOSE ====================================
    ##### - Validate enhanced committee decision logic for Minimum Approval, Decision Maker and Majority committees
    ##### - Ensure 100% participation rules are enforced where applicable
    ##### - Prevent premature verdict declaration and indefinite pending states
    ##### - Ensure verdict vs committee status behavior is correct
    ##### - Ensure backward compatibility when new configuration is disabled
    #####==================================================================================

    ######=============================== Pre-Requisites =================================
    ###### Configuration :: configuration "cas.committee.wait.pending decisions" should be true
    ######-------------------------- DATA PREPARATION POINTS------------------------------
    #####  Committees to be maintained as Sequential Committees. The Following will work for Parallel Committees as well.
    #####  Minimum Approval Committee is Maintained with 3 Members as Minimum Approval.
    #####  Decision Maker Committee is Maintained with 2 Decision Maker, Decision maker users are Row 1 and Row 2 in "LoginDetailsCAS.xlsx" under "CommitteeUser"
    #####==================================================================================

    ######====================================================================
    ###### Setting PRE-REQUISITE Scenarios
    ###### We Are Creating 24 Loans in Total
    ######      4 Product Types for Each Committee Type :: That is 12 Loans :: At Credit Approval
    ######      4 Product Types for Each Committee Type :: That is 12 Loans :: At App Update Approval
    ###### Out Of 24 Loans, 6 Loans Are Testing Configuration Off, 18 Are Testing with Configuration On
    ######====================================================================

    ######---------------------------CONTEXT----------------------------------
    ######  Application Creation Scenario: is Added in OpenApplication.Feature
    ######--------------------------------------------------------------------

  @CreditApproval @CommitteeInitiation
  Scenario Outline: User Initiates Committee of <Committee_type> with 5 members at Credit Approval
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "<ApplicationStage>" stage present in context from application grid
    And user reads data from the excel file "<FileName>" under sheet "<sheetName>" and row <rowNum>
    And user selects a committee to take decision
    And user initiate committee approval
    Then committee of "<Committee_type>" should get initiated successfully
    Examples:
      | LogicalID            | ProductType | ApplicationStage | FileName                     | sheetName          | rowNum | Committee_type    |
      | CAS_247073_CRED_MA_1 | HL          | CreditApproval   | committee_approval_grid.xlsx | committee_approval | 1      | Minimum Approvals |
      | CAS_247073_CRED_MA_2 | PL          | CreditApproval   | committee_approval_grid.xlsx | committee_approval | 1      | Minimum Approvals |
      | CAS_247073_CRED_MA_3 | MAL         | CreditApproval   | committee_approval_grid.xlsx | committee_approval | 1      | Minimum Approvals |
      | CAS_247073_CRED_MA_4 | LAP         | CreditApproval   | committee_approval_grid.xlsx | committee_approval | 1      | Minimum Approvals |

      | CAS_247073_CRED_DM_1 | HL          | CreditApproval   | committee_approval_grid.xlsx | committee_approval | 2      | Decision Maker    |
      | CAS_247073_CRED_DM_2 | PL          | CreditApproval   | committee_approval_grid.xlsx | committee_approval | 2      | Decision Maker    |
      | CAS_247073_CRED_DM_3 | MAL         | CreditApproval   | committee_approval_grid.xlsx | committee_approval | 2      | Decision Maker    |
      | CAS_247073_CRED_DM_4 | LAP         | CreditApproval   | committee_approval_grid.xlsx | committee_approval | 2      | Decision Maker    |

      | CAS_247073_CRED_GM_1 | HL          | CreditApproval   | committee_approval_grid.xlsx | committee_approval | 3      | General Majority  |
      | CAS_247073_CRED_GM_2 | PL          | CreditApproval   | committee_approval_grid.xlsx | committee_approval | 3      | General Majority  |
      | CAS_247073_CRED_GM_3 | MAL         | CreditApproval   | committee_approval_grid.xlsx | committee_approval | 3      | General Majority  |
      | CAS_247073_CRED_GM_4 | LAP         | CreditApproval   | committee_approval_grid.xlsx | committee_approval | 3      | General Majority  |


  @AppUpdateApproval @CommitteeInitiation
  Scenario Outline: User Initiates Committee of <Committee_type> with 5 members At App Update Approval
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And Application should move to "<ApplicationStage>" Stage using "Search" service
    When user moves application from "Sent To Ops" stage to application of "<ProductType>" product type as "individual" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application from application grid at "<ApplicationStage>" stage
    And user reads data from the excel file "<FileName>" under sheet "<sheetName>" and row <rowNum>
    And user selects a committee to take decision at "<ApplicationStage>"
    And user initiate committee approval at "<ApplicationStage>"
    Then committee of "<Committee_type>" should get initiated successfully
    Examples:
      | LogicalID           | ProductType | ApplicationStage    | FileName                     | sheetName          | rowNum | Committee_type    | Category | key |
      | CAS_247073_AUA_MA_1 | HL          | App Update Approval | committee_approval_grid.xlsx | committee_approval | 1      | Minimum Approvals |          |     |
      | CAS_247073_AUA_MA_2 | PL          | App Update Approval | committee_approval_grid.xlsx | committee_approval | 1      | Minimum Approvals |          |     |
      | CAS_247073_AUA_MA_3 | MAL         | App Update Approval | committee_approval_grid.xlsx | committee_approval | 1      | Minimum Approvals |          |     |
      | CAS_247073_AUA_MA_4 | LAP         | App Update Approval | committee_approval_grid.xlsx | committee_approval | 1      | Minimum Approvals |          |     |

      | CAS_247073_AUA_DM_1 | HL          | App Update Approval | committee_approval_grid.xlsx | committee_approval | 2      | Decision Maker    |          |     |
      | CAS_247073_AUA_DM_2 | PL          | App Update Approval | committee_approval_grid.xlsx | committee_approval | 2      | Decision Maker    |          |     |
      | CAS_247073_AUA_DM_3 | MAL         | App Update Approval | committee_approval_grid.xlsx | committee_approval | 2      | Decision Maker    |          |     |
      | CAS_247073_AUA_DM_4 | LAP         | App Update Approval | committee_approval_grid.xlsx | committee_approval | 2      | Decision Maker    |          |     |

      | CAS_247073_AUA_GM_1 | HL          | App Update Approval | committee_approval_grid.xlsx | committee_approval | 3      | General Majority  |          |     |
      | CAS_247073_AUA_GM_2 | PL          | App Update Approval | committee_approval_grid.xlsx | committee_approval | 3      | General Majority  |          |     |
      | CAS_247073_AUA_GM_3 | MAL         | App Update Approval | committee_approval_grid.xlsx | committee_approval | 3      | General Majority  |          |     |
      | CAS_247073_AUA_GM_4 | LAP         | App Update Approval | committee_approval_grid.xlsx | committee_approval | 3      | General Majority  |          |     |

    ######====================================================================
    ###### MINIMUM APPROVAL COMMITTEE – NEW CONFIGURATION ENABLED
    ######====================================================================

  @CommitteeApproval
  Scenario Outline: <CommitteeType> committee waits to finalize the verdict when Minimum Approvals are achieved but remains open for other members to provide votes
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "<UserDecision>"
    And user selects reason for committee decision as "<Reason>"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"
    @CreditApproval
    Examples:
      | LogicalID            | ProductType | CommitteeType     | MemberNumber | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_CRED_MA_1 | HL          | Minimum Approvals | 1            | approve      | Ok           | pending                  |
      | CAS_247073_CRED_MA_1 | HL          | Minimum Approvals | 2            | approve      | Ok           | pending                  |
      | CAS_247073_CRED_MA_1 | HL          | Minimum Approvals | 3            | approve      | Ok           | pending                  |
      | CAS_247073_CRED_MA_1 | HL          | Minimum Approvals | 4            | reject       | Not Approved | approved                 |
      | CAS_247073_CRED_MA_1 | HL          | Minimum Approvals | 5            | reject       | Not Approved | approved                 |

    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | CommitteeType     | MemberNumber | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_AUA_MA_1 | HL          | Minimum Approvals | 1            | approve      | Ok           | pending                  |
      | CAS_247073_AUA_MA_1 | HL          | Minimum Approvals | 2            | approve      | Ok           | pending                  |
      | CAS_247073_AUA_MA_1 | HL          | Minimum Approvals | 3            | approve      | Ok           | pending                  |
      | CAS_247073_AUA_MA_1 | HL          | Minimum Approvals | 4            | reject       | Not Approved | approved                 |
      | CAS_247073_AUA_MA_1 | HL          | Minimum Approvals | 5            | reject       | Not Approved | approved                 |

  @CommitteeApproval
  Scenario Outline: <CommitteeType> committee finalizes the decision as rejected when minimum approval is not achieved and majority members reject
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "<UserDecision>"
    And user selects reason for committee decision as "<Reason>"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"
    @CreditApproval
    Examples:
      | LogicalID            | ProductType | CommitteeType     | MemberNumber | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_CRED_MA_3 | MAL         | Minimum Approvals | 1            | reject       | Not Approved | pending                  |
      | CAS_247073_CRED_MA_3 | MAL         | Minimum Approvals | 2            | reject       | Not Approved | pending                  |
      | CAS_247073_CRED_MA_3 | MAL         | Minimum Approvals | 3            | reject       | Not Approved | pending                  |
      | CAS_247073_CRED_MA_3 | MAL         | Minimum Approvals | 4            | approve      | Ok           | rejected                 |
      | CAS_247073_CRED_MA_3 | MAL         | Minimum Approvals | 5            | approve      | Ok           | rejected                 |

    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | CommitteeType     | MemberNumber | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_AUA_MA_3 | MAL         | Minimum Approvals | 1            | reject       | Not Approved | pending                  |
      | CAS_247073_AUA_MA_3 | MAL         | Minimum Approvals | 2            | reject       | Not Approved | pending                  |
      | CAS_247073_AUA_MA_3 | MAL         | Minimum Approvals | 3            | reject       | Not Approved | pending                  |
      | CAS_247073_AUA_MA_3 | MAL         | Minimum Approvals | 4            | approve      | Ok           | rejected                 |
      | CAS_247073_AUA_MA_3 | MAL         | Minimum Approvals | 5            | approve      | Ok           | rejected                 |

    ######====================================================================
    ###### DECISION MAKER COMMITTEE – NEW PARTICIPATION RULE
    ######====================================================================
  @CommitteeApproval
  Scenario Outline: <CommitteeType> committee verdict is declared immediately based on the decision maker decisions but committee remains open until all members have voted
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user present at "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>" is "<isDecisionMaker>"
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "<UserDecision>"
    And user selects reason for committee decision as "<Reason>"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | CommitteeType  | MemberNumber | isDecisionMaker    | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_CRED_DM_1 | PL          | Decision Maker | 1            | Decision Maker     | approve      | Ok           | pending                  |
      | CAS_247073_CRED_DM_1 | PL          | Decision Maker | 2            | Decision Maker     | approve      | Ok           | pending                  |
      | CAS_247073_CRED_DM_1 | PL          | Decision Maker | 3            | Not Decision Maker | reject       | Not Approved | approved                 |
      | CAS_247073_CRED_DM_1 | PL          | Decision Maker | 4            | Not Decision Maker | reject       | Not Approved | approved                 |
      | CAS_247073_CRED_DM_1 | PL          | Decision Maker | 5            | Not Decision Maker | reject       | Not Approved | approved                 |

    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | CommitteeType  | MemberNumber | isDecisionMaker    | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_AUA_DM_1 | PL          | Decision Maker | 1            | Decision Maker     | approve      | Ok           | pending                  |
      | CAS_247073_AUA_DM_1 | PL          | Decision Maker | 2            | Decision Maker     | approve      | Ok           | pending                  |
      | CAS_247073_AUA_DM_1 | PL          | Decision Maker | 3            | Not Decision Maker | reject       | Not Approved | approved                 |
      | CAS_247073_AUA_DM_1 | PL          | Decision Maker | 4            | Not Decision Maker | reject       | Not Approved | approved                 |
      | CAS_247073_AUA_DM_1 | PL          | Decision Maker | 5            | Not Decision Maker | reject       | Not Approved | approved                 |

  @CommitteeApproval
  Scenario Outline: <CommitteeType> committee is rejected when decision-maker users cannot agree on the same decision and will remain open until all members have voted
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user present at "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>" is "<isDecisionMaker>"
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "<UserDecision>"
    And user selects reason for committee decision as "<Reason>"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"
    @CreditApproval
    Examples:
      | LogicalID            | ProductType | CommitteeType  | MemberNumber | isDecisionMaker    | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_CRED_DM_2 | HL          | Decision Maker | 1            | Decision Maker     | approve      | Ok           | pending                  |
      | CAS_247073_CRED_DM_2 | HL          | Decision Maker | 2            | Decision Maker     | reject       | Not Approved | pending                  |
      | CAS_247073_CRED_DM_2 | HL          | Decision Maker | 3            | Not Decision Maker | approve      | Ok           | rejected                 |
      | CAS_247073_CRED_DM_2 | HL          | Decision Maker | 4            | Not Decision Maker | approve      | Ok           | rejected                 |
      | CAS_247073_CRED_DM_2 | HL          | Decision Maker | 5            | Not Decision Maker | reject       | Not Approved | rejected                 |

    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | CommitteeType  | MemberNumber | isDecisionMaker    | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_AUA_DM_2 | HL          | Decision Maker | 1            | Decision Maker     | approve      | Ok           | pending                  |
      | CAS_247073_AUA_DM_2 | HL          | Decision Maker | 2            | Decision Maker     | reject       | Not Approved | pending                  |
      | CAS_247073_AUA_DM_2 | HL          | Decision Maker | 3            | Not Decision Maker | approve      | Ok           | rejected                 |
      | CAS_247073_AUA_DM_2 | HL          | Decision Maker | 4            | Not Decision Maker | approve      | Ok           | rejected                 |
      | CAS_247073_AUA_DM_2 | HL          | Decision Maker | 5            | Not Decision Maker | reject       | Not Approved | rejected                 |

  @CommitteeApproval
  Scenario Outline: In <CommitteeType>Decision Maker committee declares the verdict immediately, even though other members will still provide inputs that do not affect the verdict
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user present at "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>" is "<isDecisionMaker>"
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "<UserDecision>"
    And user selects reason for committee decision as "<Reason>"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"
    @CreditApproval
    Examples:
      | LogicalID            | ProductType | CommitteeType  | MemberNumber | isDecisionMaker    | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_CRED_DM_3 | MAL         | Decision Maker | 1            | Decision Maker     | reject       | Not Approved | pending                  |
      | CAS_247073_CRED_DM_3 | MAL         | Decision Maker | 2            | Decision Maker     | approve      | Ok           | pending                  |
      | CAS_247073_CRED_DM_3 | MAL         | Decision Maker | 3            | Not Decision Maker | approve      | Ok           | rejected                 |
      | CAS_247073_CRED_DM_3 | MAL         | Decision Maker | 4            | Not Decision Maker | approve      | Ok           | rejected                 |
      | CAS_247073_CRED_DM_3 | MAL         | Decision Maker | 5            | Not Decision Maker | reject       | Not Approved | rejected                 |

    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | CommitteeType  | MemberNumber | isDecisionMaker    | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_AUA_DM_3 | MAL         | Decision Maker | 1            | Decision Maker     | reject       | Not Approved | pending                  |
      | CAS_247073_AUA_DM_3 | MAL         | Decision Maker | 2            | Decision Maker     | approve      | Ok           | pending                  |
      | CAS_247073_AUA_DM_3 | MAL         | Decision Maker | 3            | Not Decision Maker | approve      | Ok           | rejected                 |
      | CAS_247073_AUA_DM_3 | MAL         | Decision Maker | 4            | Not Decision Maker | approve      | Ok           | rejected                 |
      | CAS_247073_AUA_DM_3 | MAL         | Decision Maker | 5            | Not Decision Maker | reject       | Not Approved | rejected                 |


    ######====================================================================
    ###### MAJORITY APPROVAL COMMITTEE – PARTICIPATION RULE ENFORCEMENT
    ######====================================================================

  @CommitteeApproval
  Scenario Outline: <CommitteeType> committee declares the verdict on achieving majority but remains open until all members have voted
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "<UserDecision>"
    And user selects reason for committee decision as "<Reason>"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | CommitteeType    | MemberNumber | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_CRED_GM_1 | HL          | General Majority | 1            | approve      | Ok           | pending                  |
      | CAS_247073_CRED_GM_1 | HL          | General Majority | 2            | approve      | Ok           | pending                  |
      | CAS_247073_CRED_GM_1 | HL          | General Majority | 3            | approve      | Ok           | pending                  |
      | CAS_247073_CRED_GM_1 | HL          | General Majority | 4            | reject       | Not Approved | approved                 |
      | CAS_247073_CRED_GM_1 | HL          | General Majority | 5            | reject       | Not Approved | approved                 |

    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | CommitteeType    | MemberNumber | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_AUA_GM_1 | HL          | General Majority | 1            | approve      | Ok           | pending                  |
      | CAS_247073_AUA_GM_1 | HL          | General Majority | 2            | approve      | Ok           | pending                  |
      | CAS_247073_AUA_GM_1 | HL          | General Majority | 3            | approve      | Ok           | pending                  |
      | CAS_247073_AUA_GM_1 | HL          | General Majority | 4            | reject       | Not Approved | approved                 |
      | CAS_247073_AUA_GM_1 | HL          | General Majority | 5            | reject       | Not Approved | approved                 |

  @CommitteeApproval
  Scenario Outline: <CommitteeType> committee declares the verdict as rejected when all members have voted and majority members decided to reject
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "<UserDecision>"
    And user selects reason for committee decision as "<Reason>"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | CommitteeType    | MemberNumber | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_CRED_GM_2 | PL          | General Majority | 1            | reject       | Not Approved | pending                  |
      | CAS_247073_CRED_GM_2 | PL          | General Majority | 2            | reject       | Not Approved | pending                  |
      | CAS_247073_CRED_GM_2 | PL          | General Majority | 3            | reject       | Not Approved | pending                  |
      | CAS_247073_CRED_GM_2 | PL          | General Majority | 4            | approve      | Ok           | rejected                 |
      | CAS_247073_CRED_GM_2 | PL          | General Majority | 5            | approve      | Ok           | rejected                 |

    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | CommitteeType    | MemberNumber | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_AUA_GM_2 | PL          | General Majority | 1            | reject       | Not Approved | pending                  |
      | CAS_247073_AUA_GM_2 | PL          | General Majority | 2            | reject       | Not Approved | pending                  |
      | CAS_247073_AUA_GM_2 | PL          | General Majority | 3            | reject       | Not Approved | pending                  |
      | CAS_247073_AUA_GM_2 | PL          | General Majority | 4            | approve      | Ok           | rejected                 |
      | CAS_247073_AUA_GM_2 | PL          | General Majority | 5            | approve      | Ok           | rejected                 |

  @CommitteeApproval
  Scenario Outline: <CommitteeType> committee declares the verdict as approved when all members have voted and majority members decided to approve
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "<UserDecision>"
    And user selects reason for committee decision as "<Reason>"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"
    @CreditApproval
    Examples:
      | LogicalID            | ProductType | CommitteeType    | MemberNumber | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_CRED_GM_3 | MAL         | General Majority | 1            | approve      | Ok           | pending                  |
      | CAS_247073_CRED_GM_3 | MAL         | General Majority | 2            | approve      | Ok           | pending                  |
      | CAS_247073_CRED_GM_3 | MAL         | General Majority | 3            | approve      | Ok           | pending                  |
      | CAS_247073_CRED_GM_3 | MAL         | General Majority | 4            | reject       | Not Approved | approved                 |
      | CAS_247073_CRED_GM_3 | MAL         | General Majority | 5            | reject       | Not Approved | approved                 |

    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | CommitteeType    | MemberNumber | UserDecision | Reason       | VerdictAfterPreviousVote |
      | CAS_247073_AUA_GM_3 | MAL         | General Majority | 1            | approve      | Ok           | pending                  |
      | CAS_247073_AUA_GM_3 | MAL         | General Majority | 2            | approve      | Ok           | pending                  |
      | CAS_247073_AUA_GM_3 | MAL         | General Majority | 3            | approve      | Ok           | pending                  |
      | CAS_247073_AUA_GM_3 | MAL         | General Majority | 4            | reject       | Not Approved | approved                 |
      | CAS_247073_AUA_GM_3 | MAL         | General Majority | 5            | reject       | Not Approved | approved                 |


    ######====================================================================
    ###### CONFIGURATION OFF – BACKWARD COMPATIBILITY
    ######====================================================================
  @CommitteeApproval
  Scenario Outline: <CommitteeType> committee finalizes the verdict as soon as Minimum Approvals are provided
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "<UserDecision>"
    And user selects reason for committee decision as "<Reason>"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"
    @CreditApproval
    Examples:
      | LogicalID            | ProductType | CommitteeType     | MemberNumber | UserDecision | Reason | VerdictAfterPreviousVote |
      | CAS_247073_CRED_MA_4 | LAP         | Minimum Approvals | 1            | approve      | Ok     | pending                  |
      | CAS_247073_CRED_MA_4 | LAP         | Minimum Approvals | 2            | approve      | Ok     | pending                  |
      | CAS_247073_CRED_MA_4 | LAP         | Minimum Approvals | 3            | approve      | Ok     | pending                  |
      | CAS_247073_CRED_MA_4 | LAP         | Minimum Approvals | 4            | approve      | Ok     | approved                 |

    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | CommitteeType     | MemberNumber | UserDecision | Reason | VerdictAfterPreviousVote |
      | CAS_247073_AUA_MA_4 | LAP         | Minimum Approvals | 1            | approve      | Ok     | pending                  |
      | CAS_247073_AUA_MA_4 | LAP         | Minimum Approvals | 2            | approve      | Ok     | pending                  |
      | CAS_247073_AUA_MA_4 | LAP         | Minimum Approvals | 3            | approve      | Ok     | pending                  |
      | CAS_247073_AUA_MA_4 | LAP         | Minimum Approvals | 4            | approve      | Ok     | approved                 |

  @CommitteeApproval
  Scenario Outline: <CommitteeType> committee verdict is declared immediately based on the decision maker decisions and committee is completed
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user present at "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>" is "<isDecisionMaker>"
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "<UserDecision>"
    And user selects reason for committee decision as "<Reason>"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"

    @CreditApproval
    Examples:
      | LogicalID            | ProductType | CommitteeType  | MemberNumber | isDecisionMaker | UserDecision | Reason | VerdictAfterPreviousVote |
      | CAS_247073_CRED_DM_4 | PL          | Decision Maker | 1            | Decision Maker  | approve      | Ok     | pending                  |
      | CAS_247073_CRED_DM_4 | PL          | Decision Maker | 2            | Decision Maker  | approve      | Ok     | approved                 |
    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | CommitteeType  | MemberNumber | isDecisionMaker | UserDecision | Reason | VerdictAfterPreviousVote |
      | CAS_247073_AUA_DM_4 | PL          | Decision Maker | 1            | Decision Maker  | approve      | Ok     | pending                  |
      | CAS_247073_AUA_DM_4 | PL          | Decision Maker | 2            | Decision Maker  | approve      | Ok     | approved                 |

  @CommitteeApproval
  Scenario Outline: <CommitteeType> committee declares the verdict on achieving majority and committee is completed
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open committee approval grid
    And search the initiated committee approval application
    And user opens the initiated committee approval application for current user
    And user selects committee decision as "<UserDecision>"
    And user selects reason for committee decision as "<Reason>"
    And user click on save in committee approval
    Then committee decision should be saved successfully
    And committee verdict should be "<VerdictAfterPreviousVote>" for "<CommitteeType>"
    @CreditApproval
    Examples:
      | LogicalID            | ProductType | CommitteeType    | MemberNumber | UserDecision | Reason | VerdictAfterPreviousVote |
      | CAS_247073_CRED_GM_4 | HL          | General Majority | 1            | approve      | Ok     | pending                  |
      | CAS_247073_CRED_GM_4 | HL          | General Majority | 2            | approve      | Ok     | pending                  |
      | CAS_247073_CRED_GM_4 | HL          | General Majority | 3            | approve      | Ok     | approved                 |

    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | CommitteeType    | MemberNumber | UserDecision | Reason | VerdictAfterPreviousVote |
      | CAS_247073_AUA_GM_4 | HL          | General Majority | 1            | approve      | Ok     | pending                  |
      | CAS_247073_AUA_GM_4 | HL          | General Majority | 2            | approve      | Ok     | pending                  |
      | CAS_247073_AUA_GM_4 | HL          | General Majority | 3            | approve      | Ok     | approved                 |

  @CommitteeApproval @ApplicationManager
  Scenario Outline: In <CommitteeType> committee after decision is finalized other members can not see Committee Task In Application Manager
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "CommitteeUser" and "<MemberNumber>"
    And user open application manager
    And user checks for "CommitteeTask"
    Then user should not be able to see any committee tasks for "<CommitteeType>"
    @CreditApproval
    Examples:
      | LogicalID            | ProductType | CommitteeType     | MemberNumber |
      | CAS_247073_CRED_MA_4 | LAP         | Minimum Approvals | 5            |
      | CAS_247073_CRED_DM_4 | LAP         | Decision Maker    | 3            |
      | CAS_247073_CRED_DM_4 | LAP         | Decision Maker    | 4            |
      | CAS_247073_CRED_DM_4 | LAP         | Decision Maker    | 5            |
      | CAS_247073_CRED_GM_4 | LAP         | General Majority  | 4            |
      | CAS_247073_CRED_GM_4 | LAP         | General Majority  | 5            |

    @AppUpdateApproval
    Examples:
      | LogicalID           | ProductType | CommitteeType     | MemberNumber |
      | CAS_247073_AUA_MA_4 | LAP         | Minimum Approvals | 5            |
      | CAS_247073_AUA_DM_4 | LAP         | Decision Maker    | 3            |
      | CAS_247073_AUA_DM_4 | LAP         | Decision Maker    | 4            |
      | CAS_247073_AUA_DM_4 | LAP         | Decision Maker    | 5            |
      | CAS_247073_AUA_GM_4 | LAP         | General Majority  | 4            |
      | CAS_247073_AUA_GM_4 | LAP         | General Majority  | 5            |

