@Epic-RCU
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-tanya
@Release3
@Perishable
@ReviewedByDEV
@Reconciled
Feature:RCU Task Handling Of Reject Non Individual Application

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4814: Cancel initiated non individual <Loan_type> application of <Stage> stage is shown in rcu initiation search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the "<Loan_Type>" application for rejection
    When user navigates to "<screen>" screen
    And user searches the application using application id on "<screen>" screen
    Then application is displayed in search grid of "<screen>" screen
    Examples:
      | Loan_Type     | Stage          | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                     |
      | Home Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 138                         | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | RCU            | rcu_verification.xlsx | home                 | 48                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 54                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Auto Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 138                         | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | RCU            | rcu_verification.xlsx | home                 | 49                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 49                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Personal Loan | RCU INITIATION | rcu_initiation.xlsx   | home                 | 140                         | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | RCU            | rcu_verification.xlsx | home                 | 50                          | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 50                          | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4815: After rejecting the non individual <Loan_Type> application the RCU status changes from initiated to not initiated
    And user reads data from the excel file "<RCUVerificationWB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user move the application at "<Stage>" stage to rcu "<status1>" status
    And user initiated the "<Loan_Type>" application for rejection
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then rcu status of the application is "<status>"
    Examples:
      | Loan_Type     | RCUVerificationWB   | RCUVerification_home | RCUVerification_home_rowNum | status        | Var_Stage                     | Stage          | status1   |
      | Home Loan     | rcu_initiation.xlsx | home                 | 141                         | Not-Initiated | rcu_nonindiv_notinitiated_hl  | RCU INITIATION | Initiated |
      | Auto Loan     | rcu_initiation.xlsx | home                 | 142                         | Not-Initiated | rcu_nonindiv_notinitiated_mal | RCU INITIATION | Initiated |
      | Personal Loan | rcu_initiation.xlsx | home                 | 143                         | Not-Initiated | rcu_nonindiv_notinitiated_pl  | RCU INITIATION | Initiated |

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4816: After rejecting the non individual <Loan_Type> application the RCU status does not change from <status>
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user move the application at "<screen>" stage to rcu "<status>" status
    And user initiated the "<Loan_Type>" application for rejection
    When user navigates to "<screen>" screen
    And user searches the application using application id on "<screen>" screen
    Then rcu status of the application is "<status>"
    Examples:
      | Loan_Type     | status        | RCUVerification_WB  | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                     |
      | Home Loan     | Completed     | rcu_initiation.xlsx | home                 | 144                         | RCU INITIATION | rcu_nonindiv_completed_hl     |
      | Home Loan     | In-Progress   | rcu_initiation.xlsx | home                 | 145                         | RCU INITIATION | rcu_nonindiv_inprogress_hl    |
      | Home Loan     | Not-Initiated | rcu_initiation.xlsx | home                 | 146                         | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | Waived        | rcu_initiation.xlsx | home                 | 147                         | RCU INITIATION | rcu_nonindiv_waived_hl        |
      | Auto Loan     | Completed     | rcu_initiation.xlsx | home                 | 148                         | RCU INITIATION | rcu_nonindiv_completed_mal    |
      | Auto Loan     | In-Progress   | rcu_initiation.xlsx | home                 | 149                         | RCU INITIATION | rcu_nonindiv_inprogress_mal   |
      | Auto Loan     | Not-Initiated | rcu_initiation.xlsx | home                 | 150                         | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | Waived        | rcu_initiation.xlsx | home                 | 151                         | RCU INITIATION | rcu_nonindiv_waived_mal       |
      | Personal Loan | Completed     | rcu_initiation.xlsx | home                 | 152                         | RCU INITIATION | rcu_nonindiv_completed_pl     |
      | Personal Loan | In-Progress   | rcu_initiation.xlsx | home                 | 153                         | RCU INITIATION | rcu_nonindiv_inprogress_pl    |
      | Personal Loan | Not-Initiated | rcu_initiation.xlsx | home                 | 154                         | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | Waived        | rcu_initiation.xlsx | home                 | 155                         | RCU INITIATION | rcu_nonindiv_waived_pl        |

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4817: Reject initiated non individual <Loan_Type> application can not be <status>
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user move the application at "<Stage>" stage to rcu "<status1>" status
    And user initiated the "<Loan_Type>" application for rejection
    When user navigates to "<screen>" screen
    And user searches application using application id on "<screen>" screen along with status
    Then user can not "<status>" the application
    Examples:
      | Loan_Type     | status      | RCUVerification_WB  | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                     | status1       | Stage          |
      | Home Loan     | Initiate    | rcu_initiation.xlsx | home                 | 156                         | RCU INITIATION | rcu_nonindiv_notinitiated_hl  | Not-Initiated | RCU INITIATION |
      | Home Loan     | Waive Off   | rcu_initiation.xlsx | home                 | 157                         | RCU INITIATION | rcu_nonindiv_notinitiated_hl  | Not-Initiated | RCU INITIATION |
      | Home Loan     | Re-initiate | rcu_initiation.xlsx | home                 | 158                         | RCU INITIATION | rcu_nonindiv_completed_hl     | Completed     | KYC            |
      | Auto Loan     | Initiate    | rcu_initiation.xlsx | home                 | 159                         | RCU INITIATION | rcu_nonindiv_notinitiated_mal | Not-Initiated | RCU INITIATION |
      | Auto Loan     | Waive Off   | rcu_initiation.xlsx | home                 | 160                         | RCU INITIATION | rcu_nonindiv_notinitiated_mal | Not-Initiated | RCU INITIATION |
      | Auto Loan     | Re-initiate | rcu_initiation.xlsx | home                 | 161                         | RCU INITIATION | rcu_nonindiv_completed_mal    | Completed     | KYC            |
      | Personal Loan | Initiate    | rcu_initiation.xlsx | home                 | 162                         | RCU INITIATION | rcu_nonindiv_notinitiated_pl  | Not-Initiated | RCU INITIATION |
      | Personal Loan | Waive Off   | rcu_initiation.xlsx | home                 | 163                         | RCU INITIATION | rcu_nonindiv_notinitiated_pl  | Not-Initiated | RCU INITIATION |
      | Personal Loan | Re-initiate | rcu_initiation.xlsx | home                 | 164                         | RCU INITIATION | rcu_nonindiv_completed_pl     | Completed     | KYC            |

  #application will display or not it is configurable
  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4818: Reject initiated non individual <Loan_Type> application of <Stage> stage is not shown in <Stage> search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the "<Loan_Type>" application for rejection
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then application is not displayed in search grid of "<Stage>" screen
    Examples:
      | Loan_Type     | Stage        | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | Var_Stage                     |
      | Home Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 51                          | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | RCU          | rcu_verification.xlsx | home                 | 51                          | rcu_nonindiv_notinitiated_hl  |
      | Personal Loan | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 52                          | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | RCU          | rcu_verification.xlsx | home                 | 52                          | rcu_nonindiv_notinitiated_pl  |
      | Auto Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 53                          | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | RCU          | rcu_verification.xlsx | home                 | 53                          | rcu_nonindiv_notinitiated_mal |

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4819: Rejected non individual <Loan_Type> application of <Stage> stage not shown in rcu initiation search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the "<Loan_Type>" application for rejection
    And user rejected the application
    When user navigates to "<screen>" screen
    And user searches the application using application id on "<screen>" screen
    Then application is not displayed in search grid of "<screen>" screen
    Examples:
      | Loan_Type     | Stage          | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | screen         | Var_Stage                     |
      | Home Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 165                         | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | RCU            | rcu_verification.xlsx | home                 | 60                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 61                          | RCU INITIATION | rcu_nonindiv_notinitiated_hl  |
      | Auto Loan     | RCU INITIATION | rcu_initiation.xlsx   | home                 | 166                         | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | RCU            | rcu_verification.xlsx | home                 | 61                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 62                          | RCU INITIATION | rcu_nonindiv_notinitiated_mal |
      | Personal Loan | RCU INITIATION | rcu_initiation.xlsx   | home                 | 167                         | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | RCU            | rcu_verification.xlsx | home                 | 62                          | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | RCU_REFERRAL   | rcu_referral.xlsx     | rcu_referral         | 63                          | RCU INITIATION | rcu_nonindiv_notinitiated_pl  |

  #FeatureID-ACAUTOCAS-520
  Scenario Outline: ACAUTOCAS-4820: Rejected non individual <Loan_Type> application of <Stage> stage is not shown in <Stage> search grid
    And user reads data from the excel file "<RCUVerification_WB>" under sheet "<RCUVerification_home>" and row <RCUVerification_home_rowNum>
    And user moves the application to "<Stage>" stage
    And user initiated the "<Loan_Type>" application for rejection
    And user rejected the application
    When user navigates to "<Stage>" screen
    And user searches the application using application id on "<Stage>" screen
    Then application is not displayed in search grid of "<Stage>" screen
    Examples:
      | Loan_Type     | Stage        | RCUVerification_WB    | RCUVerification_home | RCUVerification_home_rowNum | Var_Stage                     |
      | Home Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 64                          | rcu_nonindiv_notinitiated_hl  |
      | Home Loan     | RCU          | rcu_verification.xlsx | home                 | 63                          | rcu_nonindiv_notinitiated_hl  |
      | Personal Loan | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 65                          | rcu_nonindiv_notinitiated_pl  |
      | Personal Loan | RCU          | rcu_verification.xlsx | home                 | 64                          | rcu_nonindiv_notinitiated_pl  |
      | Auto Loan     | RCU_REFERRAL | rcu_referral.xlsx     | rcu_referral         | 66                          | rcu_nonindiv_notinitiated_mal |
      | Auto Loan     | RCU          | rcu_verification.xlsx | home                 | 65                          | rcu_nonindiv_notinitiated_mal |
