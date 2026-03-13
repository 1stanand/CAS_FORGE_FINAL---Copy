@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-None
@Release3
@Reconciled
@ReviewedByDEV

Feature: Applicant Kyc check for Customer with Co-applicant in Summary Analysis

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-3598: Re-initiate <Field_Name> of dedupe summary for Customer with Co-applicant
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user Re-initiate "<Field_Name>" with rerun for Co-applicant
    Then de dupe execute successfully

    Examples:
      | Field_Name         | Stage                  |
      | Application Match  | dde_indiv_coapp_hl     |
      | Customer Match     | dde_indiv_coapp_hl     |
      | Negative Checklist | dde_indiv_coapp_hl     |
      | Application Match  | dde_nonindiv_coapp_hl  |
      | Customer Match     | dde_nonindiv_coapp_hl  |
      | Negative Checklist | dde_nonindiv_coapp_hl  |
      | Application Match  | dde_indiv_coapp_pl     |
      | Customer Match     | dde_indiv_coapp_pl     |
      | Negative Checklist | dde_indiv_coapp_pl     |
      | Application Match  | dde_nonindiv_coapp_pl  |
      | Customer Match     | dde_nonindiv_coapp_pl  |
      | Negative Checklist | dde_nonindiv_coapp_pl  |
      | Application Match  | dde_indiv_coapp_mal    |
      | Customer Match     | dde_indiv_coapp_mal    |
      | Negative Checklist | dde_indiv_coapp_mal    |
      | Application Match  | dde_nonindiv_coapp_mal |
      | Customer Match     | dde_nonindiv_coapp_mal |
      | Negative Checklist | dde_nonindiv_coapp_mal |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-3599: Re-initiate Co-applicant of dedupe summary for Customer with Co-applicant
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user Re-initiate Primary Applicant with rerun for Co-applicant
    Then de dupe Primary Applicant execute successfully

    Examples:
      | Stage                  |
      | dde_indiv_coapp_hl     |
      | dde_nonindiv_coapp_hl  |
      | dde_indiv_coapp_pl     |
      | dde_nonindiv_coapp_pl  |
      | dde_indiv_coapp_mal    |
      | dde_nonindiv_coapp_mal |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-3600: Re-initiate Applicant Information of dedupe summary for Customer with Co-applicant
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user Re-initiate Applicant Information with rerun for Co-applicant
    Then dedupe Applicant Information execute successfully
    Examples:
      | Stage                  |
      | dde_indiv_coapp_hl     |
      | dde_nonindiv_coapp_hl  |
      | dde_indiv_coapp_pl     |
      | dde_nonindiv_coapp_pl  |
      | dde_indiv_coapp_mal    |
      | dde_nonindiv_coapp_mal |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-3601:  Saving Kyc Check Details without <Field_Name> for customer with Co-applicant in Summary Analysis
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in summary Analysis
    And user reads data from the excel file "<KycCheckWB>" under sheet "<KycCheck_decision>" and row <KycCheck_decision_rowNum>
    When user fills the Kyc Check Details without "<Field_Name>" for Co-applicant in Summary Analysis
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    Then Kyc Check Details in summary analysis is not saved with error message

    Examples:
      | Field_Name                  | Stage              | KycCheckWB     | KycCheck_decision | KycCheck_decision_rowNum |
      | Identification Verification | dde_indiv_coapp_hl | kyc_check.xlsx | decision          | 1                        |
      | Address Verification        | dde_indiv_coapp_hl | kyc_check.xlsx | decision          | 2                        |
      | Central Bank Check          | dde_indiv_coapp_hl | kyc_check.xlsx | decision          | 3                        |
      | Customer Risk Category      | dde_indiv_coapp_hl | kyc_check.xlsx | decision          | 4                        |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-3602:  No of Matches in Dedupe summary for customer with Co-applicant
    And user opens an application at "<Stage>" stage from application grid
    When user is on kyc check in summary Analysis
    Then No. of Matches should visible for "<Field_Name>"

    Examples:
      | Field_Name         | Stage                  |
      | Application Match  | dde_indiv_coapp_hl     |
      | Customer Match     | dde_indiv_coapp_hl     |
      | Negative Checklist | dde_indiv_coapp_hl     |
      | Application Match  | dde_indiv_coapp_pl     |
      | Customer Match     | dde_indiv_coapp_pl     |
      | Negative Checklist | dde_indiv_coapp_pl     |
      | Application Match  | dde_indiv_coapp_mal    |
      | Customer Match     | dde_indiv_coapp_mal    |
      | Negative Checklist | dde_indiv_coapp_mal    |
      | Application Match  | dde_nonindiv_coapp_hl  |
      | Customer Match     | dde_nonindiv_coapp_hl  |
      | Negative Checklist | dde_nonindiv_coapp_hl  |
      | Application Match  | dde_nonindiv_coapp_pl  |
      | Customer Match     | dde_nonindiv_coapp_pl  |
      | Negative Checklist | dde_nonindiv_coapp_pl  |
      | Application Match  | dde_nonindiv_coapp_mal |
      | Customer Match     | dde_nonindiv_coapp_mal |
      | Negative Checklist | dde_nonindiv_coapp_mal |

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-10374: Applicant Name for Kyc Coapplicant Customer must be same for Applicant Details with <Loan_Type> Individual in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user check the Applicant Name for Kyc Coapplicant Customer
    Then Applicant Name for Kyc Coapplicant Customer must be same for Applicant Details

    Examples:
      | Loan_Type     | var_stage           |
      | Home Loan     | dde_indiv_coapp_hl  |
      | Personal Loan | dde_indiv_coapp_pl  |
      | Auto Loan     | dde_indiv_coapp_mal |

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-10375: Applicant Name for Kyc Coapplicant Customer must be same for Applicant Details with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user check the Applicant Name for Kyc Coapplicant Customer
    Then Applicant Name for Kyc Coapplicant Customer must be same for Applicant Details

    Examples:
      | Loan_Type     | var_stage              |
      | Home Loan     | dde_nonindiv_coapp_hl  |
      | Personal Loan | dde_nonindiv_coapp_pl  |
      | Auto Loan     | dde_nonindiv_coapp_mal |



