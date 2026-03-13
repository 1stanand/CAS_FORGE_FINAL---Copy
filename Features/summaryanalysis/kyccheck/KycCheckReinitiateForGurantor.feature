@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-
@ImplementedBy-aryan.jain
@Release3
@ReviewedByDEV

Feature:Kyc check Reinitiate for Guarantor in Summary Analysis

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-6511
  Scenario Outline: ACAUTOCAS-10386:  Re-initiate <Field_Name> of dedupe summary for Guarantor
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    When user Re-initiate "<Field_Name>" with rerun for Guarantor
    Then dedupe "<Field_Name>" execute successfully
    Examples:
      | Field_Name         | var_stage                 |
      | Application Match  | dde_indiv_guarantor_hl    |
      | Customer Match     | dde_indiv_guarantor_hl    |
      | Negative Checklist | dde_indiv_guarantor_hl    |
      | Application Match  | dde_nonindiv_guarantor_hl |
      | Customer Match     | dde_nonindiv_guarantor_hl |
      | Negative Checklist | dde_nonindiv_guarantor_hl |
      | Application Match  | dde_indiv_guarantor_pl    |
      | Customer Match     | dde_indiv_guarantor_pl    |
      | Negative Checklist | dde_indiv_guarantor_pl    |
      | Application Match  | dde_nonindiv_guarantor_pl |
      | Customer Match     | dde_nonindiv_guarantor_pl |
      | Negative Checklist | dde_nonindiv_guarantor_pl |
      | Application Match  | dde_indiv_guarantor_mal    |
      | Customer Match     | dde_indiv_guarantor_mal    |
      | Negative Checklist | dde_indiv_guarantor_mal    |
      | Application Match  | dde_nonindiv_guarantor_mal |
      | Customer Match     | dde_nonindiv_guarantor_mal |
      | Negative Checklist | dde_nonindiv_guarantor_mal |

#FeatureID-ACAUTOCAS-6511
  Scenario Outline: ACAUTOCAS-10387:  Re-initiate Primary Applicant of dedupe summary for Guarantor
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user Re-initiate Primary Applicant with rerun
    Then dedupe Primary Applicant execute successfully
    Examples:
      | var_stage                 |
      | dde_indiv_guarantor_hl    |
      | dde_nonindiv_guarantor_hl |
      | dde_indiv_guarantor_pl    |
      | dde_nonindiv_guarantor_pl |
      | dde_indiv_guarantor_mal    |
      | dde_nonindiv_guarantor_mal |

#FeatureID-ACAUTOCAS-6511
  Scenario Outline: ACAUTOCAS-10388: Re-initiate Applicant Information of dedupe summary for Guarantor
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user Re-initiate Applicant Information with rerun
    Then dedupe Applicant Information execute successfully
    Examples:
      | var_stage                 |
      | dde_indiv_guarantor_hl    |
      | dde_nonindiv_guarantor_hl |
      | dde_indiv_guarantor_pl    |
      | dde_nonindiv_guarantor_pl |
      | dde_indiv_guarantor_mal    |
      | dde_nonindiv_guarantor_mal |
