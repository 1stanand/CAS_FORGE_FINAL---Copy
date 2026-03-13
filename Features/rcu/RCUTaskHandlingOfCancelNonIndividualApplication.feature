@Epic-RCU
@ReviewedBy-None
@ImplementedBy-tanya
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Perishable
@Release3
@ReviewedByDEV
@Reconciled
Feature:RCU Task Handling Of Cancel Non Individual Application

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

     #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4800: Cancel initiated non individual <Loan_type> application of <Stage> stage is shown in rcu initiation search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the non individual "<Loan_Type>" application for cancellation
    When user navigates to "<screen>" screen
    And user searches the application using application id on "<screen>" screen
    Then application is displayed in search grid of "<screen>" screen
    Examples:
      | Loan_Type     | Stage          | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                     |
      | Home Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 41                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | RCU            | rcu_verification.xlsx | home                 | 18                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 21                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Auto Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 42                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | RCU            | rcu_verification.xlsx | home                 | 19                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 22                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Personal Loan | RCU INITIATION | rcu_initiation.xlsx   | home                 | 43                          | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | RCU            | rcu_verification.xlsx | home                 | 20                          | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 23                          | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |

     #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4801: After canceling the non individual <Loan_Type> application the RCU status changes from initiated to not initiated
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user move the application at "<Stage>" stage to rcu "<status>" status
    And user initiated the non individual "<Loan_Type>" application for cancellation
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then rcu status of the application is "<status1>"
    Examples:
      | Loan_Type     | Stage          | RCUVerification_WB  | RCUVerification_home | RCUVerification_home_rowNum | status1       | Var_Stage                     | status    |
      | Home Loan     | RCU INITIATION | rcu_initiation.xlsx | home                 | 44                          | Not-Initiated | rcu_nonindiv_notinitiated_hl  | Initiated |
      | Auto Loan     | RCU INITIATION | rcu_initiation.xlsx | home                 | 45                          | Not-Initiated | rcu_nonindiv_notinitiated_mal | Initiated |
      | Personal Loan | RCU INITIATION | rcu_initiation.xlsx | home                 | 46                          | Not-Initiated | rcu_nonindiv_notinitiated_pl  | Initiated |

 #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4802: After canceling the non individual <Loan_Type> application the RCU status does not change from <status>
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user move the application at "<Stage>" stage to rcu "<status>" status
    And user initiated the non individual "<Loan_Type>" application for cancellation
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then rcu status of the application is "<status>"
    Examples:
      | Loan_Type     | status        | RCUVerification_WB  | RCUVerification_home | RCUVerification_home_rowNum | Stage          | Var_Stage                     |
      | Home Loan     | Completed     | rcu_initiation.xlsx | home                 | 47                          | RCU INITIATION | rcu_nonindiv_completed_hl     |
      | Home Loan     | In-Progress   | rcu_initiation.xlsx | home                 | 48                          | RCU INITIATION | rcu_nonindiv_inprogress_hl    |
      | Home Loan     | Not-Initiated | rcu_initiation.xlsx | home                 | 49                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | Waived        | rcu_initiation.xlsx | home                 | 50                          | RCU INITIATION | rcu_nonindiv_waived_hl        |
      | Auto Loan     | Completed     | rcu_initiation.xlsx | home                 | 51                          | RCU INITIATION | rcu_nonindiv_completed_mal    |
      | Auto Loan     | In-Progress   | rcu_initiation.xlsx | home                 | 52                          | RCU INITIATION | rcu_nonindiv_inprogress_mal   |
      | Auto Loan     | Not-Initiated | rcu_initiation.xlsx | home                 | 53                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | Waived        | rcu_initiation.xlsx | home                 | 54                          | RCU INITIATION | rcu_nonindiv_waived_mal       |
      | Personal Loan | Completed     | rcu_initiation.xlsx | home                 | 55                          | RCU INITIATION | rcu_nonindiv_completed_pl     |
      | Personal Loan | In-Progress   | rcu_initiation.xlsx | home                 | 56                          | RCU INITIATION | rcu_nonindiv_inprogress_pl    |
      | Personal Loan | Not-Initiated | rcu_initiation.xlsx | home                 | 57                          | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | Waived        | rcu_initiation.xlsx | home                 | 58                          | RCU INITIATION | rcu_nonindiv_waived_pl        |

     #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4803: Cancel initiated non individual <Loan_Type> application can not be <status>
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user move the application at "<screen>" stage to rcu "<status1>" status
    And user initiated the non individual "<Loan_Type>" application for cancellation
    When user navigates to "<screen>" screen
    And user searches application using application id on "<screen>" screen along with status
    Then user can not "<status>" the application
    Examples:
      | Loan_Type     | status      | RCUVerification_WB  | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                     | status1       |
      | Home Loan     | Initiate    | rcu_initiation.xlsx | home                 | 95                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  | Not-Initiated |
      | Home Loan     | Waive Off   | rcu_initiation.xlsx | home                 | 96                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  | Not-Initiated |
      | Home Loan     | Re-initiate | rcu_initiation.xlsx | home                 | 97                          | RCU INITIATION | rcu_nonindiv_completed_hl     | Completed     |
      | Auto Loan     | Initiate    | rcu_initiation.xlsx | home                 | 98                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal | Not-Initiated |
      | Auto Loan     | Waive Off   | rcu_initiation.xlsx | home                 | 99                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal | Not-Initiated |
      | Auto Loan     | Re-initiate | rcu_initiation.xlsx | home                 | 100                         | RCU INITIATION | rcu_nonindiv_completed_mal    | Completed     |
      | Personal Loan | Initiate    | rcu_initiation.xlsx | home                 | 101                         | RCU INITIATION | rcu_nonindiv_notinitiated_pl  | Not-Initiated |
      | Personal Loan | Waive Off   | rcu_initiation.xlsx | home                 | 102                         | RCU INITIATION | rcu_nonindiv_notinitiated_pl  | Not-Initiated |
      | Personal Loan | Re-initiate | rcu_initiation.xlsx | home                 | 103                         | RCU INITIATION | rcu_nonindiv_completed_pl     | Completed     |

 #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4804: Cancel initiated non individual  <Loan_Type> application of <Stage> stage is not shown in <Stage> search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the non individual "<Loan_Type>" application for cancellation
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then application is not displayed in search grid of "<Stage>" screen
    Examples:
      | Loan_Type     | Stage        | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | Var_Stage                     |
      | Home Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 24                          | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | RCU          | rcu_verification.xlsx | home                 | 24                          | rcu_nonindiv_notinitiated_hl  |
      | Personal Loan | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 25                          | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | RCU          | rcu_verification.xlsx | home                 | 25                          | rcu_nonindiv_notinitiated_pl  |
      | Auto Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 26                          | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | RCU          | rcu_verification.xlsx | home                 | 26                          | rcu_nonindiv_notinitiated_mal |

     #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4805: Cancelled non individual <Loan_Type> application of <Stage> stage not shown in rcu initiation search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the non individual "<Loan_Type>" application for cancellation
    And user cancel the non individual application
    When user navigates to "<screen>" screen
    And user searches the application using application id on "<screen>" screen
    Then application is not displayed in search grid of "<screen>" screen
    Examples:
      | Loan_Type     | Stage          | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                     |
      | Home Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 41                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | RCU            | rcu_verification.xlsx | home                 | 18                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 21                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Auto Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 42                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | RCU            | rcu_verification.xlsx | home                 | 19                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 22                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Personal Loan | RCU INITIATION | rcu_initiation.xlsx   | home                 | 43                          | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | RCU            | rcu_verification.xlsx | home                 | 20                          | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 23                          | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |

     #FeatureID-ACAUTOCAS-519
  Scenario Outline: ACAUTOCAS-4806: Cancelled non individual <Loan_Type> application of <Stage> stage is not shown in <Stage> search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the non individual "<Loan_Type>" application for cancellation
    And user cancel the non individual application
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then application is not displayed in search grid of "<Stage>" screen
    Examples:
      | Loan_Type     | Stage        | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | Var_Stage                     |
      | Home Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 24                          | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | RCU          | rcu_verification.xlsx | home                 | 21                          | rcu_nonindiv_notinitiated_hl  |
      | Personal Loan | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 25                          | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | RCU          | rcu_verification.xlsx | home                 | 22                          | rcu_nonindiv_notinitiated_pl  |
      | Auto Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 26                          | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | RCU          | rcu_verification.xlsx | home                 | 23                          | rcu_nonindiv_notinitiated_mal |
