@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-None
@ImplementedBy-pallavi.singh
@Release3
@Reconciled
@Conventional
@Islamic
Feature: Applicant Kyc check for Customer with Co-applicant in Kyc Details

  #FeatureID-ACAUTOCAS-4170
  Scenario Outline: ACAUTOCAS-4618: Re-initiate <Field_Name> of dedupe summary for Customer with Co-applicant in Kyc Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Stage>" stage from application grid
    And user is on Kyc Details for Co-applicant
    When user Re-initiate "<Field_Name>" with rerun for Co-applicant
    Then de dupe execute successfully
    Examples:
      | Field_Name         | SourceDataFile       | SheetName | RowNumber | Stage                  |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_hl     |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_hl     |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_hl     |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_hl  |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_hl  |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_hl  |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_pl     |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_pl     |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_pl     |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_pl  |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_pl  |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_pl  |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_mal    |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_mal    |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_mal    |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_mal |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_mal |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_mal |

  #FeatureID-ACAUTOCAS-4170
  Scenario Outline: ACAUTOCAS-4619: Re-initiate Co-applicant of dedupe summary for Customer with Co-applicant in Kyc Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Stage>" stage from application grid
    And user is on Kyc Details for Co-applicant
    When user Re-initiate Primary Applicant with rerun for Co-applicant
    Then de dupe Primary Applicant execute successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Stage                  |
      | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_hl     |
      | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_hl  |
      | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_pl     |
      | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_pl  |
      | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_mal    |
      | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_mal |

  #FeatureID-ACAUTOCAS-4170
  Scenario Outline: ACAUTOCAS-4620: Re-initiate Applicant Information of dedupe summary for Customer with Co-applicant
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Stage>" stage from application grid
    And user is on Kyc Details for Co-applicant
    When user Re-initiate Applicant Information with rerun for Co-applicant
    Then de dupe Applicant Information execute successfully
    Examples:
      | SourceDataFile       | SheetName | RowNumber | Stage                  |
      | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_hl     |
      | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_hl  |
      | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_pl     |
      | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_pl  |
      | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_indiv_coapp_mal    |
      | LoginDetailsCAS.xlsx | LoginData | 2         | kyc_nonindiv_coapp_mal |

  #FeatureID-ACAUTOCAS-4171
  Scenario Outline: ACAUTOCAS-4621: Saving Kyc Check Details without <Field_Name> for customer with Co-applicant in Kyc Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Stage>" stage from application grid
    And user is on Kyc Details for Co-applicant
    And user reads data from the excel file "<KycCheckWB>" under sheet "<KycCheck_decision>" and row <KycCheck_decision_rowNum>
    And user fills the Kyc check details for primary applicant
    When user fills the Kyc Check Details without "<Field_Name>" for Co-applicant
    Then Kyc Check Details is not saved
    Examples:
      | Field_Name                  | SourceDataFile       | SheetName | RowNumber | Stage              | KycCheckWB     | KycCheck_decision | KycCheck_decision_rowNum |
      | Identification Verification | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_hl | kyc_check.xlsx | decision          | 4                        |
      | Address Verification        | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_hl | kyc_check.xlsx | decision          | 5                        |
      | Central Bank Check          | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_hl | kyc_check.xlsx | decision          | 6                        |
      | Customer Risk Category      | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_hl | kyc_check.xlsx | decision          | 7                        |

  #FeatureID-ACAUTOCAS-4171
  Scenario Outline: ACAUTOCAS-4622: Number of Matches in Dedupe summary for customer with Co-applicant in Kyc Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Stage>" stage from application grid
    When user is on Kyc Details for Co-applicant
    Then No. of Matches for Co-applicant should be visible for "<Field_Name>"
    Examples:
      | Field_Name         | SourceDataFile       | SheetName | RowNumber | Stage                  |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_hl     |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_hl     |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_hl     |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_pl     |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_pl     |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_pl     |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_mal    |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_mal    |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_indiv_coapp_mal    |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_coapp_hl  |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_coapp_hl  |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_coapp_hl  |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_coapp_pl  |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_coapp_pl  |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_coapp_pl  |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_coapp_mal |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_coapp_mal |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_nonindiv_coapp_mal |


