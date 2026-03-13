@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@ImplementedBy-aniket.tripathi
@Release3
@ReviewedByDEV

Feature:Kyc check Details for Guarantor in Summary Analysis

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

#FeatureID-ACAUTOCAS-6510
  Scenario Outline: ACAUTOCAS-10364: Saving Kyc Check Details without <Field_Name> for Guarantor in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_kycCheck>" and row <SummaryAnalysis_kycCheck_rowNum>
    When user fills the Kyc Check Details under summary analysis without "<Field_Name>" for "<Applicant_Type>"
    Then Kyc Check Details in summary analysis is not saved with error message
    Examples:
      | Field_Name             | var_stage               | Applicant_Type | SummaryAnalysisWB     | SummaryAnalysis_kycCheck | SummaryAnalysis_kycCheck_rowNum |
      | Customer Risk Category | dde_indiv_guarantor_hl  | Guarantor      | summary_analysis.xlsx | kyc_check                | 3                               |
      | Customer Risk Profile  | dde_indiv_guarantor_hl  | Guarantor      | summary_analysis.xlsx | kyc_check                | 4                               |
      | Customer Risk Category | dde_indiv_guarantor_pl  | Guarantor      | summary_analysis.xlsx | kyc_check                | 3                               |
      | Customer Risk Profile  | dde_indiv_guarantor_pl  | Guarantor      | summary_analysis.xlsx | kyc_check                | 4                               |
      | Customer Risk Category | dde_indiv_guarantor_mal | Guarantor      | summary_analysis.xlsx | kyc_check                | 3                               |
      | Customer Risk Profile  | dde_indiv_guarantor_mal | Guarantor      | summary_analysis.xlsx | kyc_check                | 4                               |

#FeatureID-ACAUTOCAS-6510
  Scenario Outline: ACAUTOCAS-10365: No of Matches in Dedupe summary for Guarantor
    And user opens an application at "<var_stage>" stage from application grid
    When user is on kyc check in summary Analysis
    Then No. of Matches should visible for "<Field_Name>"
    Examples:
      | Field_Name         | var_stage                  |
      | Application Match  | dde_indiv_guarantor_hl     |
      | Customer Match     | dde_indiv_guarantor_hl     |
      | Negative Checklist | dde_indiv_guarantor_hl     |
      | Application Match  | dde_indiv_guarantor_pl     |
      | Customer Match     | dde_indiv_guarantor_pl     |
      | Negative Checklist | dde_indiv_guarantor_pl     |
      | Application Match  | dde_indiv_guarantor_mal    |
      | Customer Match     | dde_indiv_guarantor_mal    |
      | Negative Checklist | dde_indiv_guarantor_mal    |
      | Application Match  | dde_nonindiv_guarantor_hl  |
      | Customer Match     | dde_nonindiv_guarantor_hl  |
      | Negative Checklist | dde_nonindiv_guarantor_hl  |
      | Application Match  | dde_nonindiv_guarantor_pl  |
      | Customer Match     | dde_nonindiv_guarantor_pl  |
      | Negative Checklist | dde_nonindiv_guarantor_pl  |
      | Application Match  | dde_nonindiv_guarantor_mal |
      | Customer Match     | dde_nonindiv_guarantor_mal |
      | Negative Checklist | dde_nonindiv_guarantor_mal |


#FeatureID-ACAUTOCAS-6510
  Scenario Outline: ACAUTOCAS-10366: Validating the <visibility> of <FieldName> in Kyc check for Guarantor in Summary Analysis with Home Loan for Individual Applicant
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user check for Guarantor on summary analysis
    Then "<FieldName>" field should be "<visibility>" in Kyc Check
    Examples:
      | FieldName              | visibility   | var_stage              |
      | Customer Risk Category | editable     | dde_indiv_guarantor_hl |
      | Customer Risk Profile  | editable     | dde_indiv_guarantor_hl |
      | Decision               | non-editable | dde_indiv_guarantor_hl |
      | Decision Comments      | non-editable | dde_indiv_guarantor_hl |
      | Reason Description     | non-editable | dde_indiv_guarantor_hl |
      | Reason                 | non-editable | dde_indiv_guarantor_hl |

    #FeatureID-ACAUTOCAS-6510
  Scenario Outline: ACAUTOCAS-10367: Validating the <visibility> of <FieldName> in Kyc check for Guarantor in Summary Analysis with Personal Loan for Individual Applicant
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user check for Guarantor on summary analysis
    Then "<FieldName>" field should be "<visibility>" in Kyc Check
    Examples:
      | FieldName              | visibility   | var_stage              |
      | Customer Risk Category | editable     | dde_indiv_guarantor_pl |
      | Customer Risk Profile  | editable     | dde_indiv_guarantor_pl |
      | Decision               | non-editable | dde_indiv_guarantor_pl |
      | Decision Comments      | non-editable | dde_indiv_guarantor_pl |
      | Reason Description     | non-editable | dde_indiv_guarantor_pl |
      | Reason                 | non-editable | dde_indiv_guarantor_pl |

    #FeatureID-ACAUTOCAS-6510
  Scenario Outline: ACAUTOCAS-10368: Validating the <visibility> of <FieldName> in Kyc check for Guarantor in Summary Analysis with Auto Loan for Individual Applicant
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user check for Guarantor on summary analysis
    Then "<FieldName>" field should be "<visibility>" in Kyc Check
    Examples:
      | FieldName              | visibility   | var_stage               |
      | Customer Risk Category | editable     | dde_indiv_guarantor_mal |
      | Customer Risk Profile  | editable     | dde_indiv_guarantor_mal |
      | Decision               | non-editable | dde_indiv_guarantor_mal |
      | Decision Comments      | non-editable | dde_indiv_guarantor_mal |
      | Reason Description     | non-editable | dde_indiv_guarantor_mal |
      | Reason                 | non-editable | dde_indiv_guarantor_mal |

     #FeatureID-ACAUTOCAS-6510
  Scenario Outline: ACAUTOCAS-10369: Validating the <visibility> of <FieldName> in Kyc check for Guarantor in Summary Analysis with Home Loan for Non Individual Applicant
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user check for Guarantor on summary analysis
    Then "<FieldName>" field should be "<visibility>" in Kyc Check
    Examples:
      | FieldName              | visibility   | var_stage                 |
      | Customer Risk Category | editable     | dde_nonindiv_guarantor_hl |
      | Customer Risk Profile  | editable     | dde_nonindiv_guarantor_hl |
      | Decision               | non-editable | dde_nonindiv_guarantor_hl |
      | Decision Comments      | non-editable | dde_nonindiv_guarantor_hl |
      | Reason Description     | non-editable | dde_nonindiv_guarantor_hl |
      | Reason                 | non-editable | dde_nonindiv_guarantor_hl |

    #FeatureID-ACAUTOCAS-6510
  Scenario Outline: ACAUTOCAS-10370: Validating the <visibility> of <FieldName> in Kyc check for Guarantor in Summary Analysis with Personal Loan for Non Individual Applicant
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user check for Guarantor on summary analysis
    Then "<FieldName>" field should be "<visibility>" in Kyc Check
    Examples:
      | FieldName              | visibility   | var_stage                 |
      | Customer Risk Category | editable     | dde_nonindiv_guarantor_pl |
      | Customer Risk Profile  | editable     | dde_nonindiv_guarantor_pl |
      | Decision               | non-editable | dde_nonindiv_guarantor_pl |
      | Decision Comments      | non-editable | dde_nonindiv_guarantor_pl |
      | Reason Description     | non-editable | dde_nonindiv_guarantor_pl |
      | Reason                 | non-editable | dde_nonindiv_guarantor_pl |


    #FeatureID-ACAUTOCAS-6510
  Scenario Outline: ACAUTOCAS-10371: Validating the <visibility> of <FieldName> in Kyc check for Guarantor in Summary Analysis with Auto Loan for Non Individual Applicant
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user check for Guarantor on summary analysis
    Then "<FieldName>" field should be "<visibility>" in Kyc Check
    Examples:
      | FieldName              | visibility   | var_stage                  |
      | Customer Risk Category | editable     | dde_nonindiv_guarantor_mal |
      | Customer Risk Profile  | editable     | dde_nonindiv_guarantor_mal |
      | Decision               | non-editable | dde_nonindiv_guarantor_mal |
      | Decision Comments      | non-editable | dde_nonindiv_guarantor_mal |
      | Reason Description     | non-editable | dde_nonindiv_guarantor_mal |
      | Reason                 | non-editable | dde_nonindiv_guarantor_mal |

     #FeatureID-ACAUTOCAS-6510
  Scenario Outline: ACAUTOCAS-10372: Applicant Name for Kyc Primary Guarantor must be same for Applicant Details with <Loan_Type> Individual in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user check the Applicant Name for Kyc Primary Guarantor
    Then Applicant Name for Kyc Primary Guarantor must be same for Applicant Details
    Examples:
      | Loan_Type     | var_stage               |
      | Home Loan     | dde_indiv_guarantor_hl  |
      | Personal Loan | dde_indiv_guarantor_pl  |
      | Auto Loan     | dde_indiv_guarantor_mal |

     #FeatureID-ACAUTOCAS-6510
  Scenario Outline: ACAUTOCAS-10373: Applicant Name for Kyc Primary Guarantor must be same for Applicant Details with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user check the Applicant Name for Kyc Primary Guarantor
    Then Applicant Name for Kyc Primary Guarantor must be same for Applicant Details
    Examples:
      | Loan_Type     | var_stage                  |
      | Home Loan     | dde_nonindiv_guarantor_hl  |
      | Personal Loan | dde_nonindiv_guarantor_pl  |
      | Auto Loan     | dde_nonindiv_guarantor_mal |
