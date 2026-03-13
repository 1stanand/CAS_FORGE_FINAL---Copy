@Epic-RCU
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-tanya
@Perishable
@Release3
@ReviewedByDEV
@Reconciled
Feature:RCU Task Handling Of Cancel Individual Application

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

    #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4807: Cancel initiated individual <Loan_type> application of <Stage> stage is shown in rcu initiation search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the individual "<Loan_Type>" application for cancellation
    When user navigates to "<screen>" screen
    And user searches the application using application id on "<screen>" screen
    Then application is displayed in search grid of "<screen>" screen
    Examples:
      | Loan_Type     | Stage          | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                  |
      | Home Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 68                          | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Home Loan     | RCU            | rcu_verification.xlsx | home                 | 27                          | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Home Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 27                          | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Auto Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 69                          | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Auto Loan     | RCU            | rcu_verification.xlsx | home                 | 28                          | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Auto Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 28                          | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Personal Loan | RCU INITIATION | rcu_initiation.xlsx   | home                 | 70                          | RCU INITIATION | rcu_indiv_notinitiated_pl  |
      | Personal Loan | RCU            | rcu_verification.xlsx | home                 | 29                          | RCU INITIATION | rcu_indiv_notinitiated_pl  |
      | Personal Loan | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 29                          | RCU INITIATION | rcu_indiv_notinitiated_pl  |

  #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4808: After canceling the individual <Loan_Type> application the RCU status changes from initiated to not initiated
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user move the application at "<Stage>" stage to rcu "<status>" status
    And user initiated the individual "<Loan_Type>" application for cancellation
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then rcu status of the application is "<status1>"
    Examples:
      | Loan_Type     | Stage          | RCUVerification_WB  | RCUVerification_home | RCUVerification_home_rowNum | status1       | Var_Stage                  | status    |
      | Home Loan     | RCU INITIATION | rcu_initiation.xlsx | home                 | 71                          | Not-Initiated | rcu_indiv_notinitiated_hl  | Initiated |
      | Auto Loan     | RCU INITIATION | rcu_initiation.xlsx | home                 | 72                          | Not-Initiated | rcu_indiv_notinitiated_mal | Initiated |
      | Personal Loan | RCU INITIATION | rcu_initiation.xlsx | home                 | 73                          | Not-Initiated | rcu_indiv_notinitiated_pl  | Initiated |

  #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4809: After canceling the individual <Loan_Type> application the RCU status does not change from <status>
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user move the application at "<Stage>" stage to rcu "<status>" status
    And user initiated the individual "<Loan_Type>" application for cancellation
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then rcu status of the application is "<status>"
    Examples:
      | Loan_Type     | status        | RCUVerification_WB  | RCUVerification_home | RCUVerification_home_rowNum | Stage          | Var_Stage                  |
      | Home Loan     | Completed     | rcu_initiation.xlsx | home                 | 74                          | RCU INITIATION | rcu_indiv_completed_hl     |
      | Home Loan     | In-Progress   | rcu_initiation.xlsx | home                 | 75                          | RCU INITIATION | rcu_indiv_inprogress_hl    |
      | Home Loan     | Not-Initiated | rcu_initiation.xlsx | home                 | 76                          | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Home Loan     | Waived        | rcu_initiation.xlsx | home                 | 77                          | RCU INITIATION | rcu_indiv_waived_hl        |
      | Auto Loan     | Completed     | rcu_initiation.xlsx | home                 | 78                          | RCU INITIATION | rcu_indiv_completed_mal    |
      | Auto Loan     | In-Progress   | rcu_initiation.xlsx | home                 | 79                          | RCU INITIATION | rcu_indiv_inprogress_mal   |
      | Auto Loan     | Not-Initiated | rcu_initiation.xlsx | home                 | 80                          | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Auto Loan     | Waived        | rcu_initiation.xlsx | home                 | 81                          | RCU INITIATION | rcu_indiv_waived_mal       |
      | Personal Loan | Completed     | rcu_initiation.xlsx | home                 | 82                          | RCU INITIATION | rcu_indiv_completed_pl     |
      | Personal Loan | In-Progress   | rcu_initiation.xlsx | home                 | 83                          | RCU INITIATION | rcu_indiv_inprogress_pl    |
      | Personal Loan | Not-Initiated | rcu_initiation.xlsx | home                 | 84                          | RCU INITIATION | rcu_indiv_notinitiated_pl  |
      | Personal Loan | Waived        | rcu_initiation.xlsx | home                 | 85                          | RCU INITIATION | rcu_indiv_waived_pl        |

#FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4810: Cancel initiated individual <Loan_Type> application can not be <status>
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user move the application at "<screen>" stage to rcu "<status1>" status
    And user initiated the individual "<Loan_Type>" application for cancellation
    When user navigates to "<screen>" screen
    And user searches application using application id on "<screen>" screen along with status
    Then user can not "<status>" the application
    Examples:
      | Loan_Type     | status      | RCUVerification_WB  | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                  | status1       |
      | Home Loan     | Initiate    | rcu_initiation.xlsx | home                 | 86                          | RCU INITIATION | rcu_indiv_notinitiated_hl  | Not-Initiated |
      | Home Loan     | Waive Off   | rcu_initiation.xlsx | home                 | 87                          | RCU INITIATION | rcu_indiv_notinitiated_hl  | Not-Initiated |
      | Home Loan     | Re-initiate | rcu_initiation.xlsx | home                 | 88                          | RCU INITIATION | rcu_indiv_completed_hl     | Completed     |
      | Auto Loan     | Initiate    | rcu_initiation.xlsx | home                 | 89                          | RCU INITIATION | rcu_indiv_notinitiated_mal | Not-Initiated |
      | Auto Loan     | Waive Off   | rcu_initiation.xlsx | home                 | 90                          | RCU INITIATION | rcu_indiv_notinitiated_mal | Not-Initiated |
      | Auto Loan     | Re-initiate | rcu_initiation.xlsx | home                 | 91                          | RCU INITIATION | rcu_indiv_completed_mal    | Completed     |
      | Personal Loan | Initiate    | rcu_initiation.xlsx | home                 | 92                          | RCU INITIATION | rcu_indiv_notinitiated_pl  | Not-Initiated |
      | Personal Loan | Waive Off   | rcu_initiation.xlsx | home                 | 93                          | RCU INITIATION | rcu_indiv_notinitiated_pl  | Not-Initiated |
      | Personal Loan | Re-initiate | rcu_initiation.xlsx | home                 | 94                          | RCU INITIATION | rcu_indiv_completed_pl     | Completed     |

   #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4811: Cancel initiated individual <Loan_Type> application of <Stage> stage is shown in <Stage> search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the individual "<Loan_Type>" application for cancellation
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then application is not displayed in search grid of "<Stage>" screen
    Examples:
      | Loan_Type     | Stage        | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | Var_Stage                  |
      | Home Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 30                          | rcu_indiv_notinitiated_hl  |
      | Home Loan     | RCU          | rcu_verification.xlsx | home                 | 30                          | rcu_indiv_notinitiated_hl  |
      | Personal Loan | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 31                          | rcu_indiv_notinitiated_pl  |
      | Personal Loan | RCU          | rcu_verification.xlsx | home                 | 31                          | rcu_indiv_notinitiated_pl  |
      | Auto Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 32                          | rcu_indiv_notinitiated_mal |
      | Auto Loan     | RCU          | rcu_verification.xlsx | home                 | 32                          | rcu_indiv_notinitiated_mal |

     #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4812: Cancelled individual <Loan_Type> application of <Stage> stage not shown in rcu initiation search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the individual "<Loan_Type>" application for cancellation
    And user cancel the individual application
    When user navigates to "<screen>" screen
    And user searches the application using application id on "<screen>" screen
    Then application is not displayed in search grid of "<screen>" screen
    Examples:
      | Loan_Type     | Stage          | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                  |
      | Home Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 86                          | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Home Loan     | RCU            | rcu_verification.xlsx | home                 | 33                          | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Home Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 33                          | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Auto Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 87                          | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Auto Loan     | RCU            | rcu_verification.xlsx | home                 | 34                          | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Auto Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 34                          | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Personal Loan | RCU INITIATION | rcu_initiation.xlsx   | home                 | 84                          | RCU INITIATION | rcu_indiv_notinitiated_pl  |
      | Personal Loan | RCU            | rcu_verification.xlsx | home                 | 35                          | RCU INITIATION | rcu_indiv_notinitiated_pl  |
      | Personal Loan | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 35                          | RCU INITIATION | rcu_indiv_notinitiated_pl  |

     #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4813: Cancelled individual <Loan_Type> application of <Stage> stage is not shown in <Stage> search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the individual "<Loan_Type>" application for cancellation
    And user cancel the individual application
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then application is not displayed in search grid of "<Stage>" screen
    Examples:
      | Loan_Type     | Stage        | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | Var_Stage                  |
      | Home Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 36                          | rcu_indiv_notinitiated_hl  |
      | Home Loan     | RCU          | rcu_verification.xlsx | home                 | 36                          | rcu_indiv_notinitiated_hl  |
      | Personal Loan | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 37                          | rcu_indiv_notinitiated_pl  |
      | Personal Loan | RCU          | rcu_verification.xlsx | home                 | 37                          | rcu_indiv_notinitiated_pl  |
      | Auto Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 38                          | rcu_indiv_notinitiated_mal |
      | Auto Loan     | RCU          | rcu_verification.xlsx | home                 | 38                          | rcu_indiv_notinitiated_mal |
