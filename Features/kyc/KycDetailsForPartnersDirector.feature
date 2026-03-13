@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-None
@ImplementedBy-ashutosh.kumar2
@Release3
@Conventional
@Islamic
Feature: Applicant Kyc check for Partner or Director in Kyc Details

  #FeatureID-ACAUTOCAS-4168
  Scenario Outline: ACAUTOCAS-4623:  Re-initiate <Field_Name> of dedupe summary for <Applicants_Type> in Kyc Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<SummaryAnalysisWB>" under sheet "<SummaryAnalysis_kycCheck>" and row <SummaryAnalysis_kycCheck_rowNum>
    When user Re-initiate "<Field_Name>" with rerun
    Then dedupe "<Field_Name>" execute successfully
    Examples:
      | Applicants_Type | Applicant      | Loan_Type     | Field_Name         | SourceDataFile       | SheetName | RowNumber | Var_Stage          | SummaryAnalysisWB     | SummaryAnalysis_kycCheck | SummaryAnalysis_kycCheck_rowNum |
      | Partner         | Non-Individual | Home Loan     | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_hl | summary_analysis.xlsx | kyc_check                | 0                               |
      | Partner         | Non-Individual | Home Loan     | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_hl | summary_analysis.xlsx | kyc_check                | 0                               |
      | Partner         | Non-Individual | Home Loan     | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_hl | summary_analysis.xlsx | kyc_check                | 0                               |
      | Partner         | Non-Individual | Personal Loan | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_pl | summary_analysis.xlsx | kyc_check                | 0                               |
      | Partner         | Non-Individual | Personal Loan | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_pl | summary_analysis.xlsx | kyc_check                | 0                               |
      | Partner         | Non-Individual | Personal Loan | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_pl | summary_analysis.xlsx | kyc_check                | 0                               |
      | Partner         | Non-Individual | Auto Loan     | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 0                               |
      | Partner         | Non-Individual | Auto Loan     | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 0                               |
      | Partner         | Non-Individual | Auto Loan     | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 0                               |
      | Director        | Non-Individual | Home Loan     | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_hl | summary_analysis.xlsx | kyc_check                | 0                               |
      | Director        | Non-Individual | Home Loan     | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_hl | summary_analysis.xlsx | kyc_check                | 0                               |
      | Director        | Non-Individual | Home Loan     | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_hl | summary_analysis.xlsx | kyc_check                | 0                               |
      | Director        | Non-Individual | Personal Loan | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_pl | summary_analysis.xlsx | kyc_check                | 0                               |
      | Director        | Non-Individual | Personal Loan | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_pl | summary_analysis.xlsx | kyc_check                | 0                               |
      | Director        | Non-Individual | Personal Loan | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_pl | summary_analysis.xlsx | kyc_check                | 0                               |
      | Director        | Non-Individual | Auto Loan     | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 0                               |
      | Director        | Non-Individual | Auto Loan     | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 0                               |
      | Director        | Non-Individual | Auto Loan     | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_mal | summary_analysis.xlsx | kyc_check                | 0                               |

  #FeatureID-ACAUTOCAS-4168
  Scenario Outline: ACAUTOCAS-4624:  Re-initiate Primary Applicant of dedupe summary for <Applicants_Type> in Kyc Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user Re-initiate Primary Applicant with rerun
    Then dedupe Primary Applicant execute successfully
    Examples:
      | Applicants_Type | Applicant      | Loan_Type     | SourceDataFile       | SheetName | RowNumber | Var_Stage          |
      | Partner         | Non-Individual | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_hl |
      | Partner         | Non-Individual | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_pl |
      | Partner         | Non-Individual | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_mal |
      | Director        | Non-Individual | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_hl |
      | Director        | Non-Individual | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_pl |
      | Director        | Non-Individual | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_mal |

     #FeatureID-ACAUTOCAS-4168
  Scenario Outline: ACAUTOCAS-4625: Re-initiate Applicant Information of dedupe summary for <Applicants_Type> in Kyc Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user Re-initiate Applicant Information with rerun
    Then dedupe Applicant Information execute successfully
    Examples:
      | Applicants_Type | Applicant      | Loan_Type     | SourceDataFile       | SheetName | RowNumber | Loan_Type     | SourceDataFile       | SheetName | RowNumber | Var_Stage          |
      | Partner         | Non-Individual | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 2         | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_hl |
      | Partner         | Non-Individual | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 2         | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_pl |
      | Partner         | Non-Individual | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 2         | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_mal |
      | Director        | Non-Individual | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 2         | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_hl |
      | Director        | Non-Individual | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 2         | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_pl |
      | Director        | Non-Individual | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 2         | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_pd_mal |

     #FeatureID-ACAUTOCAS-4167
  Scenario Outline: ACAUTOCAS-4626: Saving Kyc Check Details without <Field_Name> for <Applicants_Type> in Kyc Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user reads data from the excel file "<PersonalLoanPunchWB>" under sheet "<PersonalLoanPunch_kyc>" and row <PersonalLoanPunch_leadDetails_rowNum>
    When user fills the kyc details excluding field name
    Then Kyc Check Details is not saved with error message
    Examples:
      | Applicants_Type | Applicant      | Field_Name                  | Loan_Type     | SourceDataFile       | SheetName | RowNumber | Throws_notThrows                   | PersonalLoanPunchWB      | PersonalLoanPunch_kyc | PersonalLoanPunch_leadDetails_rowNum | Var_Stage          |
      | Customer        | Non-Individual | Identification Verification | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 0                                    | kyc_nonindiv_pd_hl |
      | Customer        | Non-Individual | Address Verification        | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 1                                    | kyc_nonindiv_pd_hl |
      | Customer        | Non-Individual | Central Bank Check          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 2                                    | kyc_nonindiv_pd_hl |
      | Customer        | Non-Individual | Customer Risk Category      | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 4                                    | kyc_nonindiv_pd_hl |
      | Customer        | Non-Individual | Decision                    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 6                                    | kyc_nonindiv_pd_hl |
      | Customer        | Non-Individual | Reason                      | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 7                                    | kyc_nonindiv_pd_hl |
      | Partner         | Non-Individual | Identification Verification | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 0                                    | kyc_nonindiv_pd_hl |
      | Partner         | Non-Individual | Address Verification        | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 1                                    | kyc_nonindiv_pd_hl |
      | Partner         | Non-Individual | Central Bank Check          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 2                                    | kyc_nonindiv_pd_hl |
      | Partner         | Non-Individual | Customer Risk Category      | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 4                                    | kyc_nonindiv_pd_hl |
      | Partner         | Non-Individual | Decision                    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 6                                    | kyc_nonindiv_pd_hl |
      | Partner         | Non-Individual | Reason                      | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 7                                    | kyc_nonindiv_pd_hl |
      | Director        | Non-Individual | Identification Verification | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 0                                    | kyc_nonindiv_pd_hl |
      | Director        | Non-Individual | Address Verification        | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 1                                    | kyc_nonindiv_pd_hl |
      | Director        | Non-Individual | Central Bank Check          | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 2                                    | kyc_nonindiv_pd_hl |
      | Director        | Non-Individual | Customer Risk Category      | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 4                                    | kyc_nonindiv_pd_hl |
      | Director        | Non-Individual | Decision                    | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 6                                    | kyc_nonindiv_pd_hl |
      | Director        | Non-Individual | Reason                      | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 7                                    | kyc_nonindiv_pd_hl |
      | Customer        | Non-Individual | Identification Verification | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 0                                    | kyc_nonindiv_pd_pl |
      | Customer        | Non-Individual | Address Verification        | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 1                                    | kyc_nonindiv_pd_pl |
      | Customer        | Non-Individual | Central Bank Check          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 2                                    | kyc_nonindiv_pd_pl |
      | Customer        | Non-Individual | Customer Risk Category      | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 4                                    | kyc_nonindiv_pd_pl |
      | Customer        | Non-Individual | Decision                    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 6                                    | kyc_nonindiv_pd_pl |
      | Customer        | Non-Individual | Reason                      | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 7                                    | kyc_nonindiv_pd_pl |
      | Partner         | Non-Individual | Identification Verification | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 0                                    | kyc_nonindiv_pd_pl |
      | Partner         | Non-Individual | Address Verification        | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 1                                    | kyc_nonindiv_pd_pl |
      | Partner         | Non-Individual | Central Bank Check          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 2                                    | kyc_nonindiv_pd_pl |
      | Partner         | Non-Individual | Customer Risk Category      | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 4                                    | kyc_nonindiv_pd_pl |
      | Partner         | Non-Individual | Decision                    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 6                                    | kyc_nonindiv_pd_pl |
      | Partner         | Non-Individual | Reason                      | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 7                                    | kyc_nonindiv_pd_pl |
      | Director        | Non-Individual | Identification Verification | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 0                                    | kyc_nonindiv_pd_pl |
      | Director        | Non-Individual | Address Verification        | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 1                                    | kyc_nonindiv_pd_pl |
      | Director        | Non-Individual | Central Bank Check          | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 2                                    | kyc_nonindiv_pd_pl |
      | Director        | Non-Individual | Customer Risk Category      | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 4                                    | kyc_nonindiv_pd_pl |
      | Director        | Non-Individual | Decision                    | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 6                                    | kyc_nonindiv_pd_pl |
      | Director        | Non-Individual | Reason                      | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 7                                    | kyc_nonindiv_pd_pl |
      | Customer        | Non-Individual | Identification Verification | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 0                                    | kyc_nonindiv_pd_pl |
      | Customer        | Non-Individual | Address Verification        | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 1                                    | kyc_nonindiv_pd_mal |
      | Customer        | Non-Individual | Central Bank Check          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 2                                    | kyc_nonindiv_pd_mal |
      | Customer        | Non-Individual | Customer Risk Category      | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 4                                    | kyc_nonindiv_pd_mal |
      | Customer        | Non-Individual | Decision                    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 6                                    | kyc_nonindiv_pd_mal |
      | Customer        | Non-Individual | Reason                      | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 7                                    | kyc_nonindiv_pd_mal |
      | Partner         | Non-Individual | Identification Verification | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 0                                    | kyc_nonindiv_pd_mal |
      | Partner         | Non-Individual | Address Verification        | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 1                                    | kyc_nonindiv_pd_mal |
      | Partner         | Non-Individual | Central Bank Check          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 2                                    | kyc_nonindiv_pd_mal |
      | Partner         | Non-Individual | Customer Risk Category      | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 4                                    | kyc_nonindiv_pd_mal |
      | Partner         | Non-Individual | Decision                    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 6                                    | kyc_nonindiv_pd_mal |
      | Partner         | Non-Individual | Reason                      | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 7                                    | kyc_nonindiv_pd_mal |
      | Director        | Non-Individual | Identification Verification | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 0                                    | kyc_nonindiv_pd_mal |
      | Director        | Non-Individual | Address Verification        | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 1                                    | kyc_nonindiv_pd_mal |
      | Director        | Non-Individual | Central Bank Check          | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 2                                    | kyc_nonindiv_pd_mal |
      | Director        | Non-Individual | Customer Risk Category      | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 4                                    | kyc_nonindiv_pd_mal |
      | Director        | Non-Individual | Decision                    | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 6                                    | kyc_nonindiv_pd_mal |
      | Director        | Non-Individual | Reason                      | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | personal_loan_punch.xlsx | kyc                   | 7                                    | kyc_nonindiv_pd_mal |

    #FeatureID-ACAUTOCAS-4167
  Scenario Outline: ACAUTOCAS-4627: No.of Matches in Dedupe summary for <Applicants_Type> in Kyc Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user open the partner Details
    Then No. of Matches should visible for "<Field_Name>"
    Examples:
      | Applicants_Type | Applicant      | Field_Name         | Loan_Type     | SourceDataFile       | SheetName | RowNumber | Var_Stage          |
      | Partner         | Non-Individual | Application Match  | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_hl |
      | Partner         | Non-Individual | Customer Match     | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_hl |
      | Partner         | Non-Individual | Negative Checklist | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_hl |
      | Partner         | Non-Individual | Application Match  | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_pl |
      | Partner         | Non-Individual | Customer Match     | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_pl |
      | Partner         | Non-Individual | Negative Checklist | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_pl |
      | Partner         | Non-Individual | Application Match  | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_mal |
      | Partner         | Non-Individual | Customer Match     | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_mal |
      | Partner         | Non-Individual | Negative Checklist | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_mal |
      | Director        | Non-Individual | Application Match  | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_hl |
      | Director        | Non-Individual | Customer Match     | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_hl |
      | Director        | Non-Individual | Negative Checklist | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_hl |
      | Director        | Non-Individual | Application Match  | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_pl |
      | Director        | Non-Individual | Customer Match     | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_pl |
      | Director        | Non-Individual | Negative Checklist | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_pl |
      | Director        | Non-Individual | Application Match  | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_mal |
      | Director        | Non-Individual | Customer Match     | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_mal |
      | Director        | Non-Individual | Negative Checklist | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_pd_mal |
