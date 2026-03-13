@Epic-E2E
@AuthoredBy-anshika.gupta
@Conventional
@E2EOrder
@Order
@Release
@RcuInitiation
  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

########################################## STAGE : RCU INITIATION #################################################################################

  @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-19863: Waive off the application at RCU INITIATION stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to rcu initiation screen
    And user reads data from the excel file "<RCU_Initiation_WB>" under sheet "<RCU_Initiation_Sheet>" and row <RCU_Initiation_RowNum>
    When user searches application on "RCU INITIATION" screen along with status
    And user selects the application in rcu initiation
    And user waive off RCU initiation application
    Then application should be waived off successfully

    Examples:
      | LogicalID | RCU_Initiation_WB   | RCU_Initiation_Sheet | RCU_Initiation_RowNum | ProductType             |
      | EDU00001  | rcu_initiation.xlsx | home                 | 1                     | Education Loan          |
      | EDU00002  | rcu_initiation.xlsx | home                 | 1                     | Education Loan          |
      | CV00001   | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | FE00001   | rcu_initiation.xlsx | home                 | 1                     | Farm Equipment          |
      | KCC00001  | rcu_initiation.xlsx | home                 | 1                     | Kisan Credit Card       |
      | MHF00001  | rcu_initiation.xlsx | home                 | 1                     | Micro Housing Finance   |
      | CEQ00001  | rcu_initiation.xlsx | home                 | 1                     | Commercial Equipment    |
      | CC00001   | rcu_initiation.xlsx | home                 | 1                     | Credit Card Application |
      | AGRL00001 | rcu_initiation.xlsx | home                 | 1                     | Agriculture Loan        |
      | CV00003   | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | CV00004   | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | CV00002   | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | KCC00002  | rcu_initiation.xlsx | home                 | 1                     | Kisan Credit Card       |
      | CC00003   | rcu_initiation.xlsx | home                 | 1                     | Credit Card Application |
      | CV00005   | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |

    @PQMStory
    Examples:
      | LogicalID                            | RCU_Initiation_WB   | RCU_Initiation_Sheet | RCU_Initiation_RowNum | ProductType             |
      | EDU_CAS_60813_ContractualIndiv01     | rcu_initiation.xlsx | home                 | 1                     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv02     | rcu_initiation.xlsx | home                 | 1                     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv03     | rcu_initiation.xlsx | home                 | 1                     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv04     | rcu_initiation.xlsx | home                 | 1                     | Education Loan          |
      | EDU_CAS_60813_ContractualIndiv05     | rcu_initiation.xlsx | home                 | 1                     | Education Loan          |
      | PL_CAS_60813_ContractualIndiv03      | rcu_initiation.xlsx | home                 | 1                     | Personal Loan           |
      | MAL_CAS_60813_ContractualIndiv03     | rcu_initiation.xlsx | home                 | 1                     | Auto Loan               |
      | HL_CAS_60813_ContractualIndiv03      | rcu_initiation.xlsx | home                 | 1                     | Home Loan               |
      | CV00CAS_88943_01                     | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | CV00CAS_88943_02                     | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | CV00CAS_88946_01                     | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | CV00CAS_206825_01                    | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | CV00CAS_80273_01                     | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | CV00CAS_90456_01                     | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | CV00CAS_90456_02                     | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | AL_CAS_60813_ContractualIndiv01      | rcu_initiation.xlsx | home                 | 1                     | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv02      | rcu_initiation.xlsx | home                 | 1                     | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv03      | rcu_initiation.xlsx | home                 | 1                     | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv04      | rcu_initiation.xlsx | home                 | 1                     | Auto Loan               |
      | AL_CAS_60813_ContractualIndiv05      | rcu_initiation.xlsx | home                 | 1                     | Auto Loan               |
      | CV_CAS_60813_ContractualIndiv01      | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv02      | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv03      | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv04      | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | CV_CAS_60813_ContractualIndiv05      | rcu_initiation.xlsx | home                 | 1                     | Commercial Vehicle Loan |
      | PL_CAS_71126_ChargePrioritization02  | rcu_initiation.xlsx | home                 | 1                     | Personal Loan           |
      | MAL_CAS_71126_ChargePrioritization02 | rcu_initiation.xlsx | home                 | 1                     | Auto Loan               |
      | HL_CAS_71126_ChargePrioritization02  | rcu_initiation.xlsx | home                 | 1                     | Home Loan               |



  @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19864: RCU Initiation of the application at RCU INITIATION stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to rcu initiation screen
    And user reads data from the excel file "<RCU_Initiation_WB>" under sheet "<RCU_Initiation_Sheet>" and row <RCU_Initiation_RowNum>
    When user searches application on "RCU INITIATION" screen along with status
    And user change status to initiated at rcu initiation stage
    Then RCU for the application should initiate successfully

    Examples:
      | LogicalID | ProductType                | RCU_Initiation_WB   | RCU_Initiation_Sheet | RCU_Initiation_RowNum |
      | AL00001   | Auto Loan                  | rcu_initiation.xlsx | home                 | 1                     |
      | PL00001   | Personal Loan              | rcu_initiation.xlsx | home                 | 1                     |
      | HL00001   | Home Loan                  | rcu_initiation.xlsx | home                 | 1                     |
      | LAP00001  | Loan Against Property      | rcu_initiation.xlsx | home                 | 1                     |
      | PL00002   | Personal Loan              | rcu_initiation.xlsx | home                 | 1                     |
      | OL00001   | Omni Loan                  | rcu_initiation.xlsx | home                 | 1                     |
      | AL00003   | Auto Loan                  | rcu_initiation.xlsx | home                 | 1                     |
      | AL00002   | Auto Loan                  | rcu_initiation.xlsx | home                 | 1                     |
      | CC00002   | Credit Card Application    | rcu_initiation.xlsx | home                 | 1                     |
      | FAS00001  | Finance Against Securities | rcu_initiation.xlsx | home                 | 1                     |
      | MHF00002  | Micro Housing Finance      | rcu_initiation.xlsx | home                 | 1                     |


  @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-19865: Move application to rcu referral stage on setting the rcu result as <Var> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigates to rcu initiation screen
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    When user searches application on "RCU INITIATION" screen along with status
    And user set the result as "<Var>" in rcu initiation
    And user adds reason for "<Var>"
    And user saves the result after adding reason
    Then Application should move to "RCU_REFERRAL" Stage
    Examples:
      | LogicalID | ProductType                | Var              | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | AL00001   | Auto Loan                  | Screening Not Ok | rcu_initiation.xlsx | home               | 0                         |
      | PL00001   | Personal Loan              | Screening Not Ok | rcu_initiation.xlsx | home               | 0                         |
      | HL00001   | Home  Loan                 | Screening Not Ok | rcu_initiation.xlsx | home               | 0                         |
      | LAP00001  | Loan Against Property      | Screening Not Ok | rcu_initiation.xlsx | home               | 0                         |
      | PL00002   | Personal Loan              | Screening Not Ok | rcu_initiation.xlsx | home               | 0                         |
      | OL00001   | Omni  Loan                 | Screening Not Ok | rcu_initiation.xlsx | home               | 0                         |
      | AL00003   | Auto Loan                  | Screening Not Ok | rcu_initiation.xlsx | home               | 0                         |
      | AL00002   | Auto Loan                  | Screening Not Ok | rcu_initiation.xlsx | home               | 0                         |
      | CC00002   | Credit Card Application    | Screening Not Ok | rcu_initiation.xlsx | home               | 0                         |
      | FAS00001  | Finance Against Securities | Screening Not Ok | rcu_initiation.xlsx | home               | 0                         |
      | MHF00002  | Micro Housing Finance      | Screening Not Ok | rcu_initiation.xlsx | home               | 0                         |

