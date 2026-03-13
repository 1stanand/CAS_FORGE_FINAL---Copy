@Epic-RCU
@ReviewedBy-aman.nagarkoti
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-yash.sharma
@Release3
@ReviewedByDEV

#FeatureID-ACAUTOCAS-511
Feature:Application Level RCU Initiation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  Scenario Outline: ACAUTOCAS-3515: Click on rcu history it opens the RCU history page
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user searches the application using application id
    And user selects the rcu history in rcu initiation
    Then rcu history page is displayed in rcu initiation
    Examples:
      | Var_Stage                 | Status    |
      | dde_indiv_rcuinitiated_pl | Initiated |

  Scenario Outline: ACAUTOCAS-3516: The rcu history does not contain details for applications without initiated RCUs
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user searches the application using application id with status as "<Status>" in rcu initiation
    And user selects the rcu history in rcu initiation
    Then no details are available in rcu initiation
    Examples:
      | Var_Stage    | Status        | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum |
      | dde_indiv_pl | not-initiated | rcu_initiation.xlsx | home               | 1                         |

  Scenario Outline: ACAUTOCAS-3517: The rcu history contain details for applications with rcu completed
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user searches the application using application id with status as "<Status>" in rcu initiation
    And user selects the rcu history in rcu initiation
    Then details are available in rcu initiation when rcu is "<Status>"
    Examples:
      | Var_Stage                            | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | Status    |
      | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 2                         | Completed |

  Scenario Outline: ACAUTOCAS-3518: The rcu history contain details for applications with rcu re-initiate
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user searches the application using application id with status as "<Status>" in rcu initiation
    And user completes the rcu initiation with status as "<var1>"
    And user completes the rcu referral with decision as "<var2>"
    And user check the rcu history in rcu initiation
    Then more than one rcu details are displayed
    Examples:
      | Var_Stage                            | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | var1         | var2     | Status    |
      | recommendation_indiv_rcucompleted_pl | rcu_initiation.xlsx | home               | 2                         | Screening Ok | Positive | Completed |

  Scenario Outline: ACAUTOCAS-3519: The RCU history displays <var1> for RCU initiation status with a <var2> decision for RCU referral
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<Var_Stage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user searches the application using application id with status as "<Status>" in rcu initiation
    And user completes the rcu initiation with status as "<var1>"
    And user completes the rcu referral with decision as "<var2>"
    And user check the rcu history in rcu initiation
    Then rcu history displays rcu initiation status as "<var1>" with "<var2>" decision for rcu referral
    Examples:
      | Var_Stage                            | var1             | var2     | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | Status    |
      | recommendation_indiv_rcucompleted_pl | Screening Ok     | Positive | rcu_initiation.xlsx | home               | 2                         | Completed |
      | recommendation_indiv_rcucompleted_pl | Screening Ok     | Neutral  | rcu_initiation.xlsx | home               | 2                         | Completed |
      | recommendation_indiv_rcucompleted_pl | Screening Ok     | Negative | rcu_initiation.xlsx | home               | 2                         | Completed |
      | recommendation_indiv_rcucompleted_pl | Screening Not Ok | Positive | rcu_initiation.xlsx | home               | 2                         | Completed |
      | recommendation_indiv_rcucompleted_pl | Screening Not Ok | Neutral  | rcu_initiation.xlsx | home               | 2                         | Completed |
      | recommendation_indiv_rcucompleted_pl | Screening Not Ok | Negative | rcu_initiation.xlsx | home               | 2                         | Completed |
      | recommendation_indiv_rcucompleted_pl | Waived           | Positive | rcu_initiation.xlsx | home               | 2                         | Completed |
      | recommendation_indiv_rcucompleted_pl | Waived           | Neutral  | rcu_initiation.xlsx | home               | 2                         | Completed |
      | recommendation_indiv_rcucompleted_pl | Waived           | Negative | rcu_initiation.xlsx | home               | 2                         | Completed |


    #FeatureID-ACAUTOCAS-512
  Scenario Outline: ACAUTOCAS-4781: If reasons are not added to an RCU they should not be displayed in the RCU history
    And user moves the application at "<ApplicationStage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user check the rcu history in rcu initiation
    Then no reasons are displayed
    Examples:
      | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | ApplicationStage                     | Status    |
      | rcu_initiation.xlsx | home               | 170                       | recommendation_indiv_rcucompleted_hl | Completed |


    #FeatureID-ACAUTOCAS-512
  Scenario Outline: ACAUTOCAS-4779: If attachments are not added to an RCU they should not be displayed in the RCU history
    And user moves the application at "<ApplicationStage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user check the rcu history in rcu initiation
    Then no attachments are displayed
    Examples:
      | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | ApplicationStage                     | Status    |
      | rcu_initiation.xlsx | home               | 170                       | recommendation_indiv_rcucompleted_hl | Completed |

     #FeatureID-ACAUTOCAS-512
  Scenario Outline: ACAUTOCAS-4780: Add reasons in RCU they should be displayed in the RCU
    And user reads data from the excel file "<RCUInitiationWB>" under sheet "<RCUInitiation_home>" and row <RCUInitiation_home_rowNum>
    And user moves the application at "<ApplicationStage>" stage to rcu "<Status>" status
    When user navigates to rcu initiation screen
    And user searches the application using application id with status as "<Status>" in rcu initiation
    And user completes the rcu initiation with status as "<var1>"
    And user completes the rcu referral with decision as Positive with reason
    And user check the rcu history in rcu initiation
    Then all added reasons are displayed in rcu history
    Examples:
      | RCUInitiationWB     | RCUInitiation_home | RCUInitiation_home_rowNum | ApplicationStage                     | Status    | var1             |
      | rcu_initiation.xlsx | home               | 2                         | recommendation_indiv_rcucompleted_mal | Completed | Screening Ok     |


  Scenario: ACAUTOCAS-4778: Add attachments in RCU they should be displayed in the RCU history
    When user navigates to rcu initiation screen
    And user reads data from the excel file "RCUInitiationWB" under sheet "RCUInitiation_home" and row 0
    And user searches rcu completed application in which attachments are added
    And user checks the rcu history
    Then all added attachments are displayed













