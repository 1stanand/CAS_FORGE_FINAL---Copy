@Epic-E2E
@AuthoredBy-anshika.gupta
@ImplementedBy-rishabh.garg
@Conventional
@E2EOrder
@Release
@LoginAcceptance
@Order

  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise


#################################################### STAGE -2 LOGIN ACCEPTANCE #########################################################################################
#  @ImplementedBy-kanika.mahal
#  Scenario Outline: User fills the acceptance checklist at Login Acceptance stage for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>"
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Login Acceptance" stage present in context from application grid
#    When user answers approval checklist questions
#    And user saves the approval checklist questions
#    Then acceptance sheet should be saved successfully
#    Examples:
#      | LogicalID | ProductType             |
#      | LAP00001  | Loan Against Property   |
#      | EDU00001  | Education Loan          |
#      | EDU00002  | Education Loan          |
#      | EDU00003  | Education Loan          |
#      | AL00001   | Auto Loan               |
#      | CV00001   | Commercial Vehicle Loan |
#      | KCC00001  | Kisan Credit Card       |
#      | FE00001   | Farm Equipment          |
#      | MHF00001  | Micro Housing Finance   |
#      | CEQ00001  | Commercial Equipment    |
#      | AGRL00001 | Agriculture Loan        |
#      | PL00001   | Personal Loan           |
#      | HL00001   | Home Loan               |
#      | LAP00001  | Loan Against Property   |
#      | CV00003   | Commercial Vehicle Loan |
#      | CV00004   | Commercial Vehicle Loan |
#      | CV00002   | Commercial Vehicle Loan |
#      | KCC00002  | Kisan Credit Card       |
#      | PL00002   | Personal Loan           |
#      | OL00001   | Omni Loan               |
#      | AL00003   | Auto Loan               |



  #decision - approve
  Scenario Outline: ACAUTOCAS-19860:[LogicalID-<LogicalID>][SendBack-<SendBack>][RevisitCount-<RevisitCount>] <Acceptance_Criteria> the acceptance checklist at Login Acceptance stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Login Acceptance" stage present in context from application grid
    When user reads data from the excel file "<LoginAcceptanceWB>" under sheet "<LoginAcceptance_sheet>" and row <LoginAcceptance_rowNum>
    And user fills acceptance sheet decision
    And user saves the acceptance sheet
    Then acceptance sheet should be saved successfully

    Examples:
      | LogicalID  | LoginAcceptanceWB              | LoginAcceptance_sheet    | LoginAcceptance_rowNum | ProductType             | Acceptance_Criteria | SendBack | RevisitCount |
      | EDU00001   | login_acceptance_end_flow.xlsx | login_acceptance_details | 1                      | Education Loan          | Approve             |          |              |
      | EDU00002   | login_acceptance_end_flow.xlsx | login_acceptance_details | 1                      | Education Loan          | Approve             |          |              |
      | EDU00003   | login_acceptance_end_flow.xlsx | login_acceptance_details | 3                      | Education Loan          | Discrepant          |          |              |
      | AL00001    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             |          |              |
      | CV00001    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |
      | KCC00001   | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Kisan Credit Card       | Approve             |          |              |
      | FE00001    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Farm Equipment          | Approve             |          |              |
      | MHF00001   | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Micro Housing Finance   | Approve             |          |              |
      | CEQ00001   | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Equipment    | Approve             |          |              |
      | AGRL00001  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Agriculture Loan        | Approve             |          |              |
      | PL00001    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Personal Loan           | Approve             |          |              |
      | HL00001    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Home Loan               | Approve             |          |              |
      | LAP00001   | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Loan Against Property   | Approve             |          |              |
      | CV00003    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |
      | CV00004    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |
      | CV00002    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |
      | KCC00002   | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Kisan Credit Card       | Approve             |          |              |
      | PL00002    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Personal Loan           | Approve             |          |              |
      | OL00001    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Omni Loan               | Approve             |          |              |
      | AL00003    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             |          |              |
      | AL00002    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             |          |              |
      | SB_AL00001 | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             |          |              |
      | SB_AL00002 | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             |          |              |
      | SB_AL00002 | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             | yes      |              |
      | SB_AL00003 | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             |          |              |
      | SB_AL00004 | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             |          |              |
      | MHF00002   | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Micro Housing Finance   | Approve             |          |              |
      | CV00005    | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |

    @Reject
    Examples:
      | LogicalID | LoginAcceptanceWB              | LoginAcceptance_sheet    | LoginAcceptance_rowNum | ProductType    | Acceptance_Criteria | SendBack | RevisitCount |
      | EDU00004  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Education Loan | Approve             |          | 1            |

    @PQMStory
    Examples:
      | LogicalID                        |  | LoginAcceptanceWB              | LoginAcceptance_sheet    | LoginAcceptance_rowNum | ProductType             | Acceptance_Criteria | SendBack | RevisitCount |  |
      | EDU_CAS_60813_ContractualIndiv01 |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 1                      | Education Loan          | Approve             |          |              |  |
      | EDU_CAS_60813_ContractualIndiv02 |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 1                      | Education Loan          | Approve             |          |              |  |
      | EDU_CAS_60813_ContractualIndiv03 |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 1                      | Education Loan          | Approve             |          |              |  |
      | EDU_CAS_60813_ContractualIndiv04 |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 1                      | Education Loan          | Approve             |          |              |  |
      | EDU_CAS_60813_ContractualIndiv05 |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 1                      | Education Loan          | Approve             |          |              |  |
      | CV00CAS_88943_01                 |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |  |
      | CV00CAS_88943_02                 |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |  |
      | CV00CAS_88946_01                 |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |  |
      | CV00CAS_206825_01                |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |  |
      | CV00CAS_80273_01                 |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |  |
      | CV00CAS_90456_01                 |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |  |
      | CV00CAS_90456_02                 |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |  |
      | AL_CAS_60813_ContractualIndiv01  |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             |          |              |  |
      | AL_CAS_60813_ContractualIndiv02  |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             |          |              |  |
      | AL_CAS_60813_ContractualIndiv03  |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             |          |              |  |
      | AL_CAS_60813_ContractualIndiv04  |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             |          |              |  |
      | AL_CAS_60813_ContractualIndiv05  |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Auto Loan               | Approve             |          |              |  |
      | CV_CAS_60813_ContractualIndiv01  |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |  |
      | CV_CAS_60813_ContractualIndiv02  |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |  |
      | CV_CAS_60813_ContractualIndiv03  |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |  |
      | CV_CAS_60813_ContractualIndiv04  |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |  |
      | CV_CAS_60813_ContractualIndiv05  |  | login_acceptance_end_flow.xlsx | login_acceptance_details | 0                      | Commercial Vehicle Loan | Approve             |          |              |  |
  
  
  Scenario Outline: ACAUTOCAS-19861: Reject the acceptance checklist at Login Acceptance stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Login Acceptance" stage present in context from application grid
    When user reads data from the excel file "<LoginAcceptanceWB>" under sheet "<LoginAcceptance_sheet>" and row <LoginAcceptance_rowNum>
    And user fills acceptance sheet decision
    And user saves the acceptance sheet
    Then Application should move to "REJECTION" Stage
    Examples:
      | LogicalID | LoginAcceptanceWB              | LoginAcceptance_sheet    | LoginAcceptance_rowNum | ProductType    |
      | EDU00004  | login_acceptance_end_flow.xlsx | login_acceptance_details | 2                      | Education Loan |





