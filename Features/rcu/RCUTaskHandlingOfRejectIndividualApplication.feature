@Epic-RCU
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-tanya
@Release3
@Perishable
@ReviewedByDEV
@Reconciled
Feature:RCU Task Handling Of Reject Individual Application

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4793: Cancel initiated individual <Loan_type> application of <Stage> stage is shown in rcu initiation search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the "<Loan_Type>" application for rejection
    When user navigates to "<screen>" screen
    And user searches the application using application id on "<screen>" screen
    Then application is displayed in search grid of "<screen>" screen
    Examples:
      | Loan_Type     | Stage          | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                  |
      | Home Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 135                         | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Home Loan     | RCU            | rcu_verification.xlsx | home                 | 27                          | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Home Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 27                          | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Auto Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 136                         | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Auto Loan     | RCU            | rcu_verification.xlsx | home                 | 28                          | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Auto Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 28                          | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Personal Loan | RCU INITIATION | rcu_initiation.xlsx   | home                 | 137                         | RCU INITIATION | rcu_indiv_notinitiated_pl  |
      | Personal Loan | RCU            | rcu_verification.xlsx | home                 | 29                          | RCU INITIATION | rcu_indiv_notinitiated_pl  |
      | Personal Loan | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 29                          | RCU INITIATION | rcu_indiv_notinitiated_pl  |

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4794: After rejecting the individual <Loan_Type> application the RCU status changes from initiated to not initiated
    And user reads data from the excel file "<RCUVerificationWB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user move the application at "<Stage>" stage to rcu "<status1>" status
    And user initiated the "<Loan_Type>" application for rejection
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then rcu status of the application is "<status>"
    Examples:
      | Loan_Type     | RCUVerificationWB   | RCUVerification_home | RCUVerification_home_rowNum | status        | Var_Stage                  | Stage          | status1   |
      | Home Loan     | rcu_initiation.xlsx | home                 | 132                         | Not-Initiated | rcu_indiv_notinitiated_hl  | RCU INITIATION | Initiated |
      | Auto Loan     | rcu_initiation.xlsx | home                 | 133                         | Not-Initiated | rcu_indiv_notinitiated_mal | RCU INITIATION | Initiated |
      | Personal Loan | rcu_initiation.xlsx | home                 | 134                         | Not-Initiated | rcu_indiv_notinitiated_pl  | RCU INITIATION | Initiated |

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4795: After rejecting the individual <Loan_Type> application the RCU status does not change from <status>
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user move the application at "<screen>" stage to rcu "<status>" status
    And user initiated the "<Loan_Type>" application for rejection
    When user navigates to "<screen>" screen
    And user searches the application using application id on "<screen>" screen
    Then rcu status of the application is "<status>"
    Examples:
      | Loan_Type     | status        | RCUVerification_WB  | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                  |
      | Home Loan     | Completed     | rcu_initiation.xlsx | home                 | 120                         | RCU INITIATION | rcu_indiv_completed_hl     |
      | Home Loan     | In-Progress   | rcu_initiation.xlsx | home                 | 121                         | RCU INITIATION | rcu_indiv_inprogress_hl    |
      | Home Loan     | Not-Initiated | rcu_initiation.xlsx | home                 | 122                         | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Home Loan     | Waived        | rcu_initiation.xlsx | home                 | 123                         | RCU INITIATION | rcu_indiv_waived_hl        |
      | Auto Loan     | Completed     | rcu_initiation.xlsx | home                 | 124                         | RCU INITIATION | rcu_indiv_completed_mal    |
      | Auto Loan     | In-Progress   | rcu_initiation.xlsx | home                 | 125                         | RCU INITIATION | rcu_indiv_inprogress_mal   |
      | Auto Loan     | Not-Initiated | rcu_initiation.xlsx | home                 | 126                         | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Auto Loan     | Waived        | rcu_initiation.xlsx | home                 | 127                         | RCU INITIATION | rcu_indiv_waived_mal       |
      | Personal Loan | Completed     | rcu_initiation.xlsx | home                 | 128                         | RCU INITIATION | rcu_indiv_completed_pl     |
      | Personal Loan | In-Progress   | rcu_initiation.xlsx | home                 | 129                         | RCU INITIATION | rcu_indiv_inprogress_pl    |
      | Personal Loan | Not-Initiated | rcu_initiation.xlsx | home                 | 130                         | RCU INITIATION | rcu_indiv_notinitiated_pl  |
      | Personal Loan | Waived        | rcu_initiation.xlsx | home                 | 131                         | RCU INITIATION | rcu_indiv_waived_pl        |

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4796: Reject initiated individual <Loan_Type> application can not be <status>
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user move the application at "<Stage>" stage to rcu "<status1>" status
    And user initiated the "<Loan_Type>" application for rejection
    When user navigates to "<screen>" screen
    And user searches application using application id on "<screen>" screen along with status
    Then user can not "<status>" the application

    Examples:
      | Loan_Type     | status      | RCUVerification_WB  | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                  | status1       | Stage          |
      | Home Loan     | Initiate    | rcu_initiation.xlsx | home                 | 111                         | RCU INITIATION | rcu_indiv_notinitiated_hl  | Not-Initiated | RCU INITIATION |
      | Home Loan     | Waive Off   | rcu_initiation.xlsx | home                 | 112                         | RCU INITIATION | rcu_indiv_notinitiated_hl  | Not-Initiated | RCU INITIATION |
      | Home Loan     | Re-initiate | rcu_initiation.xlsx | home                 | 113                         | RCU INITIATION | rcu_indiv_completed_hl     | Completed     | KYC            |
      | Auto Loan     | Initiate    | rcu_initiation.xlsx | home                 | 114                         | RCU INITIATION | rcu_indiv_notinitiated_mal | Not-Initiated | RCU INITIATION |
      | Auto Loan     | Waive Off   | rcu_initiation.xlsx | home                 | 115                         | RCU INITIATION | rcu_indiv_notinitiated_mal | Not-Initiated | RCU INITIATION |
      | Auto Loan     | Re-initiate | rcu_initiation.xlsx | home                 | 116                         | RCU INITIATION | rcu_indiv_completed_mal    | Completed     | KYC            |
      | Personal Loan | Initiate    | rcu_initiation.xlsx | home                 | 117                         | RCU INITIATION | rcu_indiv_notinitiated_pl  | Not-Initiated | RCU INITIATION |
      | Personal Loan | Waive Off   | rcu_initiation.xlsx | home                 | 118                         | RCU INITIATION | rcu_indiv_notinitiated_pl  | Not-Initiated | RCU INITIATION |
      | Personal Loan | Re-initiate | rcu_initiation.xlsx | home                 | 119                         | RCU INITIATION | rcu_indiv_completed_pl     | Completed     | KYC            |

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4797: Reject initiated individual <Loan_Type> application of <Stage> stage is not shown in <Stage> search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the "<Loan_Type>" application for rejection
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then application is not displayed in search grid of "<Stage>" screen

    Examples:
      | Loan_Type     | Stage        | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | Var_Stage                  |
      | Home Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 45                          | rcu_indiv_notinitiated_hl  |
      | Home Loan     | RCU          | rcu_verification.xlsx | home                 | 45                          | rcu_indiv_notinitiated_hl  |
      | Personal Loan | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 46                          | rcu_indiv_notinitiated_pl  |
      | Personal Loan | RCU          | rcu_verification.xlsx | home                 | 45                          | rcu_indiv_notinitiated_pl  |
      | Auto Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 47                          | rcu_indiv_notinitiated_mal |
      | Auto Loan     | RCU          | rcu_verification.xlsx | home                 | 47                          | rcu_indiv_notinitiated_mal |

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4798: Rejected individual <Loan_Type> application of <Stage> stage not shown in rcu initiation search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the "<Loan_Type>" application for rejection
    And user rejected the application
    When user navigates to "<screen>" screen
    And user searches the application using application id on "<screen>" screen
    Then application is not displayed in search grid of "<screen>" screen
    Examples:
      | Loan_Type     | Stage          | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                  |
      | Home Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 104                         | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Home Loan     | RCU            | rcu_verification.xlsx | home                 | 54                          | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Home Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 55                          | RCU INITIATION | rcu_indiv_notinitiated_hl  |
      | Auto Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 105                         | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Auto Loan     | RCU            | rcu_verification.xlsx | home                 | 55                          | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Auto Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 56                          | RCU INITIATION | rcu_indiv_notinitiated_mal |
      | Personal Loan | RCU INITIATION | rcu_initiation.xlsx   | home                 | 106                         | RCU INITIATION | rcu_indiv_notinitiated_pl  |
      | Personal Loan | RCU            | rcu_verification.xlsx | home                 | 56                          | RCU INITIATION | rcu_indiv_notinitiated_pl  |
      | Personal Loan | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 57                          | RCU INITIATION | rcu_indiv_notinitiated_pl  |

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4799: Rejected individual <Loan_Type> application of <screen> stage is not shown in <screen> search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<screen>" stage
    And user initiated the "<Loan_Type>" application for rejection
    And user rejected the application
    When user navigates to "<screen>" screen
    And user searches the application using application id on "<screen>" screen
    Then application is not displayed in search grid of "<screen>" screen
    Examples:
      | Loan_Type     | screen       | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | Var_Stage                  |
      | Home Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 58                          | rcu_indiv_notinitiated_hl  |
      | Home Loan     | RCU          | rcu_verification.xlsx | home                 | 57                          | rcu_indiv_notinitiated_hl  |
      | Personal Loan | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 59                          | rcu_indiv_notinitiated_pl  |
      | Personal Loan | RCU          | rcu_verification.xlsx | home                 | 58                          | rcu_indiv_notinitiated_pl  |
      | Auto Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 60                          | rcu_indiv_notinitiated_mal |
      | Auto Loan     | RCU          | rcu_verification.xlsx | home                 | 59                          | rcu_indiv_notinitiated_mal |
