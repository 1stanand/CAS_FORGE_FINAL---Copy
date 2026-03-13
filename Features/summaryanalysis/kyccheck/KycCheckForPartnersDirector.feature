@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@Release3
@ReviewedByDEV

Feature: Applicant Kyc check for Partner or Director in Summary Analysis

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-3603: Re-initiate <Field_Name> of dedupe summary for <Applicant_Type>
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    And user open the Partner Details
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    When user Re-initiate "<Field_Name>" with rerun for applicant type "<Applicant_Type>"
    Then dedupe "<Field_Name>" execute successfully
    Examples:
      | Applicant_Type | Field_Name         | var_stage           |
      | Partner        | Application Match  | dde_nonindiv_pd_hl  |
      | Partner        | Customer Match     | dde_nonindiv_pd_hl  |
      | Partner        | Negative Checklist | dde_nonindiv_pd_hl  |
      | Partner        | Application Match  | dde_nonindiv_pd_mal |
      | Partner        | Customer Match     | dde_nonindiv_pd_mal |
      | Partner        | Negative Checklist | dde_nonindiv_pd_mal |
      | Partner        | Application Match  | dde_nonindiv_pd_pl  |
      | Partner        | Customer Match     | dde_nonindiv_pd_pl  |
      | Partner        | Negative Checklist | dde_nonindiv_pd_pl  |
      | Director       | Application Match  | dde_nonindiv_pd_hl  |
      | Director       | Customer Match     | dde_nonindiv_pd_hl  |
      | Director       | Negative Checklist | dde_nonindiv_pd_hl  |
      | Director       | Application Match  | dde_nonindiv_pd_mal |
      | Director       | Customer Match     | dde_nonindiv_pd_mal |
      | Director       | Negative Checklist | dde_nonindiv_pd_mal |
      | Director       | Application Match  | dde_nonindiv_pd_pl  |
      | Director       | Customer Match     | dde_nonindiv_pd_pl  |
      | Director       | Negative Checklist | dde_nonindiv_pd_pl  |

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-3604: Re-initiate Primary Applicant of dedupe summary for <Applicant_Type>
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    And user open the Partner Details
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    When user Re-initiate "<Applicant_Type>" Applicant with rerun
    Then dedupe Primary Applicant execute successfully
    Examples:
      | Applicant_Type | var_stage           |
      | Partner        | dde_nonindiv_pd_hl  |
      | Partner        | dde_nonindiv_pd_mal |
      | Partner        | dde_nonindiv_pd_pl  |
      | Director       | dde_nonindiv_pd_hl  |
      | Director       | dde_nonindiv_pd_mal |
      | Director       | dde_nonindiv_pd_pl  |

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-3605: Re-initiate Applicant Information of dedupe summary for <Applicant_Type>
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    And user open the Partner Details
    And user reads data from the excel file "summary_analysis.xlsx" under sheet "kyc_check" and row 0
    When user Re-initiate Applicant Information for partner director with rerun
    Then dedupe Applicant Information execute successfully
    Examples:
      | Applicant_Type | var_stage           |
      | Partner        | dde_nonindiv_pd_hl  |
      | Partner        | dde_nonindiv_pd_mal |
      | Partner        | dde_nonindiv_pd_pl  |
      | Director       | dde_nonindiv_pd_hl  |
      | Director       | dde_nonindiv_pd_mal |
      | Director       | dde_nonindiv_pd_pl  |

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-3606:  Saving Kyc Check Details without <Field_Name> for <Applicant_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_kycCheck>" and row <SummaryAnalysis_kycCheck_rowNum>
    When user fills the Kyc Check Details under summary analysis without "<Field_Name>" for "<Applicant_Type>"
    Then Kyc Check Details in summary analysis is not saved with error message

    Examples:
      | Applicant_Type | Field_Name                  | var_stage           | SummaryAnalysisWB     | SummaryAnalysis_kycCheck | SummaryAnalysis_kycCheck_rowNum |
      | Customer       | Identification Verification | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 0                               |
      | Customer       | Address Verification        | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 1                               |
      | Customer       | Central Bank Check          | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 2                               |
      | Customer       | Customer Risk Category      | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 3                               |
      | Customer       | Customer Risk Profile       | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 4                               |
      | Customer       | Other Check                 | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 5                               |
      | Partner        | Identification Verification | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 0                               |
      | Partner        | Address Verification        | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 1                               |
      | Partner        | Central Bank Check          | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 2                               |
      | Partner        | Customer Risk Category      | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 3                               |
      | Partner        | Customer Risk Profile       | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 4                               |
      | Partner        | Other Check                 | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 5                               |
      | Director       | Identification Verification | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 0                               |
      | Director       | Address Verification        | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 1                               |
      | Director       | Central Bank Check          | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 2                               |
      | Director       | Customer Risk Category      | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 3                               |
      | Director       | Customer Risk Profile       | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 4                               |
      | Director       | Other Check                 | dde_nonindiv_pd_hl  | summary_analysis.xlsx | kyc_check                | 5                               |
      | Customer       | Identification Verification | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 0                               |
      | Customer       | Address Verification        | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 1                               |
      | Customer       | Central Bank Check          | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 2                               |
      | Customer       | Customer Risk Category      | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 3                               |
      | Customer       | Customer Risk Profile       | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 4                               |
      | Customer       | Other Check                 | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 5                               |
      | Partner        | Identification Verification | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 0                               |
      | Partner        | Address Verification        | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 1                               |
      | Partner        | Central Bank Check          | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 2                               |
      | Partner        | Customer Risk Category      | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 3                               |
      | Partner        | Customer Risk Profile       | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 4                               |
      | Partner        | Other Check                 | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 5                               |
      | Director       | Identification Verification | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 0                               |
      | Director       | Address Verification        | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 1                               |
      | Director       | Central Bank Check          | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 2                               |
      | Director       | Customer Risk Category      | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 3                               |
      | Director       | Customer Risk Profile       | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 4                               |
      | Director       | Other Check                 | dde_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 5                               |
      | Customer       | Identification Verification | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 0                               |
      | Customer       | Address Verification        | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 1                               |
      | Customer       | Central Bank Check          | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 2                               |
      | Customer       | Customer Risk Category      | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 3                               |
      | Customer       | Customer Risk Profile       | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 4                               |
      | Customer       | Other Check                 | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 5                               |
      | Partner        | Identification Verification | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 0                               |
      | Partner        | Address Verification        | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 1                               |
      | Partner        | Central Bank Check          | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 2                               |
      | Partner        | Customer Risk Category      | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 3                               |
      | Partner        | Customer Risk Profile       | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 4                               |
      | Partner        | Other Check                 | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 5                               |
      | Director       | Identification Verification | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 0                               |
      | Director       | Address Verification        | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 1                               |
      | Director       | Central Bank Check          | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 2                               |
      | Director       | Customer Risk Category      | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 3                               |
      | Director       | Customer Risk Profile       | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 4                               |
      | Director       | Other Check                 | dde_nonindiv_pd_pl  | summary_analysis.xlsx | kyc_check                | 5                               |

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-3607:  Number of Matches in Dedupe summary for <Applicant_Type>
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    When user open the Partner Details
    Then No. of Matches should visible for "<Field_Name>"
    Examples:
      | Applicant_Type | Field_Name         | var_stage           |
      | Partner        | Application Match  | dde_nonindiv_pd_hl  |
      | Partner        | Customer Match     | dde_nonindiv_pd_hl  |
      | Partner        | Negative Checklist | dde_nonindiv_pd_hl  |
      | Partner        | Application Match  | dde_nonindiv_pd_mal |
      | Partner        | Customer Match     | dde_nonindiv_pd_mal |
      | Partner        | Negative Checklist | dde_nonindiv_pd_mal |
      | Partner        | Application Match  | dde_nonindiv_pd_pl  |
      | Partner        | Customer Match     | dde_nonindiv_pd_pl  |
      | Partner        | Negative Checklist | dde_nonindiv_pd_pl  |
      | Director       | Application Match  | dde_nonindiv_pd_hl  |
      | Director       | Customer Match     | dde_nonindiv_pd_hl  |
      | Director       | Negative Checklist | dde_nonindiv_pd_hl  |
      | Director       | Application Match  | dde_nonindiv_pd_mal |
      | Director       | Customer Match     | dde_nonindiv_pd_mal |
      | Director       | Negative Checklist | dde_nonindiv_pd_mal |
      | Director       | Application Match  | dde_nonindiv_pd_pl  |
      | Director       | Customer Match     | dde_nonindiv_pd_pl  |
      | Director       | Negative Checklist | dde_nonindiv_pd_pl  |

#FeatureID-ACAUTOCAS-296
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-10376: Applicant Name for Kyc Partner must be same for Applicant Details with <Loan_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    And user open the Partner Details
    When user check the Applicant Name for Kyc Partner
    Then Applicant Name for Kyc Partner must be same for Applicant Details
    Examples:
      | Loan_Type     | var_stage           |
      | Home Loan     | dde_nonindiv_pd_hl  |
      | Personal Loan | dde_nonindiv_pd_pl  |
      | Auto Loan     | dde_nonindiv_pd_mal |

    #FeatureID-ACAUTOCAS-296
  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-10377: Applicant Name for Kyc Director must be same for Applicant Details with <Loan_Type> in Summary Analysis
    And user opens an application at "<var_stage>" stage from application grid
    And user is on kyc check in summary Analysis
    And user open the Partner Details
    When user check the Applicant Name for Kyc Director
    Then Applicant Name for Kyc Director must be same for Applicant Details
    Examples:
      | Loan_Type     | var_stage           |
      | Home Loan     | dde_nonindiv_pd_hl  |
      | Personal Loan | dde_nonindiv_pd_pl  |
      | Auto Loan     | dde_nonindiv_pd_mal |





