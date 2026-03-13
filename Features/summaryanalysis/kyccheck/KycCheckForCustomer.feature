@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-None
@Release3
@ReviewedByDEV
Feature: Applicant Kyc check for Customer in Summary Analysis

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-3608: Re-initiate <Field_Name> of dedupe summary for Customer
    And user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    When user Re-initiate "<Field_Name>" with rerun
    Then dedupe "<Field_Name>" execute successfully

    Examples:
      | Field_Name         | Stage           |
      | Application Match  | dde_indiv_hl    |
      | Customer Match     | dde_indiv_hl    |
      | Negative Checklist | dde_indiv_hl    |
      | Application Match  | dde_nonindiv_hl |
      | Customer Match     | dde_nonindiv_hl |
      | Negative Checklist | dde_nonindiv_hl |
      | Application Match  | dde_indiv_pl    |
      | Customer Match     | dde_indiv_pl    |
      | Negative Checklist | dde_indiv_pl    |
      | Application Match  | dde_nonindiv_pl |
      | Customer Match     | dde_nonindiv_pl |
      | Negative Checklist | dde_nonindiv_pl |
      | Application Match  | dde_indiv_mal    |
      | Customer Match     | dde_indiv_mal    |
      | Negative Checklist | dde_indiv_mal    |
      | Application Match  | dde_nonindiv_mal |
      | Customer Match     | dde_nonindiv_mal |
      | Negative Checklist | dde_nonindiv_mal |

  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-3609: Re-initiate Primary Applicant of dedupe summary for Customer
    And user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    When user Re-initiate Primary Applicant with rerun
    Then dedupe Primary Applicant execute successfully

    Examples:
      | Stage           |
      | dde_indiv_hl    |
      | dde_nonindiv_hl |
      | dde_indiv_pl    |
      | dde_nonindiv_pl |
      | dde_indiv_mal    |
      | dde_nonindiv_mal |

  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-3610: Re-initiate Applicant Information of dedupe summary for Customer
    And user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    When user Re-initiate Applicant Information with rerun
    Then dedupe Applicant Information execute successfully
    Examples:
      | Stage           |
      | dde_indiv_hl    |
      | dde_nonindiv_hl |
      | dde_indiv_pl    |
      | dde_nonindiv_pl |
      | dde_indiv_mal    |
      | dde_nonindiv_mal |

  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-3611:  Saving Kyc Check Details without <Field_Name> for customer in Summary Analysis
    And user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_kycCheck>" and row <SummaryAnalysis_kycCheck_rowNum>
    When user fills the Kyc Check Details without "<Field_Name>"
    Then Kyc Check Details is not saved with "<Throws_notThrows>"

    Examples:
      | Field_Name                  | Throws_notThrows                   | SummaryAnalysisWB     | SummaryAnalysis_kycCheck | SummaryAnalysis_kycCheck_rowNum | Stage        |
      | Identification Verification | throws an error with error message | summary_analysis.xlsx | kyc_check                | 15                              | dde_indiv_hl  |
      | Address Verification        | throws an error with error message | summary_analysis.xlsx | kyc_check                | 16                              | dde_indiv_hl  |
      | Central Bank Check          | throws an error with error message | summary_analysis.xlsx | kyc_check                | 17                              | dde_indiv_hl  |
      | Customer Risk Category      | throws an error with error message | summary_analysis.xlsx | kyc_check                | 18                              | dde_indiv_hl  |
      | Identification Verification | throws an error with error message | summary_analysis.xlsx | kyc_check                | 15                              | dde_indiv_pl  |
      | Address Verification        | throws an error with error message | summary_analysis.xlsx | kyc_check                | 16                              | dde_indiv_pl  |
      | Central Bank Check          | throws an error with error message | summary_analysis.xlsx | kyc_check                | 17                              | dde_indiv_pl  |
      | Customer Risk Category      | throws an error with error message | summary_analysis.xlsx | kyc_check                | 18                              | dde_indiv_pl  |
      | Identification Verification | throws an error with error message | summary_analysis.xlsx | kyc_check                | 15                              | dde_indiv_mal |
      | Address Verification        | throws an error with error message | summary_analysis.xlsx | kyc_check                | 16                              | dde_indiv_mal |
      | Central Bank Check          | throws an error with error message | summary_analysis.xlsx | kyc_check                | 17                              | dde_indiv_mal |
      | Customer Risk Category      | throws an error with error message | summary_analysis.xlsx | kyc_check                | 18                              | dde_indiv_mal |

  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-3612:  No of Matches in Dedupe summary for customer
    And user opens an application of "<Stage>" stage variant from "APPLICATION" grid
    When user is on kyc check in summary Analysis
    Then No. of Matches should visible for "<Field_Name>"

    Examples:
      | Field_Name         | Stage            |
      | Application Match  | dde_indiv_hl     |
      | Customer Match     | dde_indiv_hl     |
      | Negative Checklist | dde_indiv_hl     |
      | Application Match  | dde_indiv_pl     |
      | Customer Match     | dde_indiv_pl     |
      | Negative Checklist | dde_indiv_pl     |
      | Application Match  | dde_indiv_mal    |
      | Customer Match     | dde_indiv_mal    |
      | Negative Checklist | dde_indiv_mal    |
      | Application Match  | dde_nonindiv_hl  |
      | Customer Match     | dde_nonindiv_hl  |
      | Negative Checklist | dde_nonindiv_hl  |
      | Application Match  | dde_nonindiv_pl  |
      | Customer Match     | dde_nonindiv_pl  |
      | Negative Checklist | dde_nonindiv_pl  |
      | Application Match  | dde_nonindiv_mal |
      | Customer Match     | dde_nonindiv_mal |
      | Negative Checklist | dde_nonindiv_mal |

#FeatureID-ACAUTOCAS-294
  @ImplementedBy-aryan.jain
  Scenario Outline:ACAUTOCAS-10378: Validating the <visibility> of <FieldName> in Kyc check for Customer in Summary Analysis with Home Loan for Individual Applicant
    And user opens an application of "<var_stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    When user check for primary applicant
    Then "<FieldName>" field should be "<visibility>" in summary analysis
    Examples:
      | FieldName                   | visibility   | var_stage    |
      | Identification Verification | editable     | dde_indiv_hl |
      | Address Verification        | editable     | dde_indiv_hl |
      | Central Bank Check          | editable     | dde_indiv_hl |
      | Other Check                 | editable     | dde_indiv_hl |
      | Customer Risk Category      | editable     | dde_indiv_hl |
      | Customer Risk Profile       | editable     | dde_indiv_hl |
      | Decision                    | non-editable | dde_indiv_hl |
      | Decision Comments           | non-editable | dde_indiv_hl |
      | Reason Description          | non-editable | dde_indiv_hl |
      | Reason                      | non-editable | dde_indiv_hl |

    #FeatureID-ACAUTOCAS-294
  @ImplementedBy-aryan.jain
  Scenario Outline:ACAUTOCAS-10379: Validating the <visibility> of <FieldName> in Kyc check for Customer in Summary Analysis with Personal Loan for Individual Applicant
    And user opens an application of "<var_stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    When user check for primary applicant
    Then "<FieldName>" field should be "<visibility>" in summary analysis
    Examples:
      | FieldName                   | visibility   | var_stage    |
      | Identification Verification | editable     | dde_indiv_pl |
      | Address Verification        | editable     | dde_indiv_pl |
      | Central Bank Check          | editable     | dde_indiv_pl |
      | Other Check                 | editable     | dde_indiv_pl |
      | Customer Risk Category      | editable     | dde_indiv_pl |
      | Customer Risk Profile       | editable     | dde_indiv_pl |
      | Decision                    | non-editable | dde_indiv_pl |
      | Decision Comments           | non-editable | dde_indiv_pl |
      | Reason Description          | non-editable | dde_indiv_pl |
      | Reason                      | non-editable | dde_indiv_pl |


    #FeatureID-ACAUTOCAS-294
  @ImplementedBy-aryan.jain
  Scenario Outline:ACAUTOCAS-10380: Validating the <visibility> of <FieldName> in Kyc check for Customer in Summary Analysis with Auto Loan for Individual Applicant
    And user opens an application of "<var_stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    When user check for primary applicant
    Then "<FieldName>" field should be "<visibility>" in summary analysis
    Examples:
      | FieldName                   | visibility   | var_stage    |
      | Identification Verification | editable     | dde_indiv_mal |
      | Address Verification        | editable     | dde_indiv_mal |
      | Central Bank Check          | editable     | dde_indiv_mal |
      | Other Check                 | editable     | dde_indiv_mal |
      | Customer Risk Category      | editable     | dde_indiv_mal |
      | Customer Risk Profile       | editable     | dde_indiv_mal |
      | Decision                    | non-editable | dde_indiv_mal |
      | Decision Comments           | non-editable | dde_indiv_mal |
      | Reason Description          | non-editable | dde_indiv_mal |
      | Reason                      | non-editable | dde_indiv_mal |

   #FeatureID-ACAUTOCAS-294
  @ImplementedBy-aryan.jain
  Scenario Outline:ACAUTOCAS-10381: Validating the <visibility> of <FieldName> in Kyc check for Customer in Summary Analysis with Home Loan for Non Individual Applicant
    And user opens an application of "<var_stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    When user check for primary applicant
    Then "<FieldName>" field should be "<visibility>" in summary analysis
    Examples:
      | FieldName                   | visibility   | var_stage     |
      | Identification Verification | editable     | dde_nonindiv_hl |
      | Address Verification        | editable     | dde_nonindiv_hl |
      | Central Bank Check          | editable     | dde_nonindiv_hl |
      | Other Check                 | editable     | dde_nonindiv_hl |
      | Customer Risk Category      | editable     | dde_nonindiv_hl |
      | Customer Risk Profile       | editable     | dde_nonindiv_hl |
      | Decision                    | non-editable | dde_nonindiv_hl |
      | Decision Comments           | non-editable | dde_nonindiv_hl |
      | Reason Description          | non-editable | dde_nonindiv_hl |
      | Reason                      | non-editable | dde_nonindiv_hl |


    #FeatureID-ACAUTOCAS-294
  @ImplementedBy-aryan.jain
  Scenario Outline:ACAUTOCAS-10382: Validating the <visibility> of <FieldName> in Kyc check for Customer in Summary Analysis with Personal Loan for Non Individual Applicant
    And user opens an application of "<var_stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    When user check for primary applicant
    Then "<FieldName>" field should be "<visibility>" in summary analysis
    Examples:
      | FieldName                   | visibility   | var_stage       |
      | Identification Verification | editable     | dde_nonindiv_pl |
      | Address Verification        | editable     | dde_nonindiv_pl |
      | Central Bank Check          | editable     | dde_nonindiv_pl |
      | Other Check                 | editable     | dde_nonindiv_pl |
      | Customer Risk Category      | editable     | dde_nonindiv_pl |
      | Customer Risk Profile       | editable     | dde_nonindiv_pl |
      | Decision                    | non-editable | dde_nonindiv_pl |
      | Decision Comments           | non-editable | dde_nonindiv_pl |
      | Reason Description          | non-editable | dde_nonindiv_pl |
      | Reason                      | non-editable | dde_nonindiv_pl |


    #FeatureID-ACAUTOCAS-294
  @ImplementedBy-aryan.jain
  Scenario Outline:ACAUTOCAS-10383: Validating the <visibility> of <FieldName> in Kyc check for Customer in Summary Analysis with Auto Loan for Non Individual Applicant
    And user opens an application of "<var_stage>" stage variant from "APPLICATION" grid
    And user is on kyc check in summary Analysis
    When user check for primary applicant
    Then "<FieldName>" field should be "<visibility>" in summary analysis
    Examples:
      | FieldName                   | visibility   | var_stage       |
      | Identification Verification | editable     | dde_nonindiv_mal |
      | Address Verification        | editable     | dde_nonindiv_mal |
      | Central Bank Check          | editable     | dde_nonindiv_mal |
      | Other Check                 | editable     | dde_nonindiv_mal |
      | Customer Risk Category      | editable     | dde_nonindiv_mal |
      | Customer Risk Profile       | editable     | dde_nonindiv_mal |
      | Decision                    | non-editable | dde_nonindiv_mal |
      | Decision Comments           | non-editable | dde_nonindiv_mal |
      | Reason Description          | non-editable | dde_nonindiv_mal |
      | Reason                      | non-editable | dde_nonindiv_mal |

      #FeatureID-ACAUTOCAS-294
  @ImplementedBy-aryan.jain
  Scenario Outline:ACAUTOCAS-10384: Applicant Name for Kyc Primary Customer must be same for Applicant Details with <Loan_Type> Individual in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user check the Applicant Name for Kyc Primary Customer
    Then Applicant Name for Kyc Primary Customer must be same for Applicant Details
    Examples:
      | Loan_Type     | var_stage    |
      | Home Loan     | dde_indiv_hl |
      | Personal Loan | dde_indiv_pl |
      | Auto Loan     | dde_indiv_mal |

     #FeatureID-ACAUTOCAS-294
  @ImplementedBy-aryan.jain
  Scenario Outline:ACAUTOCAS-10385: Applicant Name for Kyc Primary Customer must be same for Applicant Details with <Loan_Type> Non Individual in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user check the Applicant Name for Kyc Primary Customer
    Then Applicant Name for Kyc Primary Customer must be same for Applicant Details
    Examples:
      | Loan_Type     | var_stage       |
      | Home Loan     | dde_nonindiv_hl |
      | Personal Loan | dde_nonindiv_pl |
      | Auto Loan     | dde_nonindiv_mal |
