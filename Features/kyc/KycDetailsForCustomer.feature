@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-aman.nagarkoti
@Release3

Feature: Applicant Kyc check in Kyc Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-3394: Re-initiate <Field_Name> of dedupe summary in Kyc Details
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in Kyc Details
    When user Re-initiate "<Field_Name>" with rerun for Applicant
    Then de dupe execute successfully
    Examples:
      | Field_Name         | Stage            |
      | Application Match  | kyc_hl           |
      | Customer Match     | kyc_hl           |
      | Negative Checklist | kyc_hl           |
      | Application Match  | kyc_nonindiv_hl  |
      | Customer Match     | kyc_nonindiv_hl  |
      | Negative Checklist | kyc_nonindiv_hl  |
      | Application Match  | kyc              |
      | Customer Match     | kyc              |
      | Negative Checklist | kyc              |
      | Application Match  | kyc_nonindiv_pl  |
      | Customer Match     | kyc_nonindiv_pl  |
      | Negative Checklist | kyc_nonindiv_pl  |
      | Application Match  | kyc_mal          |
      | Customer Match     | kyc_mal          |
      | Negative Checklist | kyc_mal          |
      | Application Match  | kyc_nonindiv_mal |
      | Customer Match     | kyc_nonindiv_mal |
      | Negative Checklist | kyc_nonindiv_mal |

  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-3395: Re-initiate Primary Applicant of dedupe summary in Kyc Details
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in Kyc Details
    When user Re-initiate Primary Applicant with rerun
    Then dedupe Primary Applicant execute successfully
    Examples:
      | Stage            |
      | kyc_hl           |
      | kyc_nonindiv_hl  |
      | kyc              |
      | kyc_nonindiv_pl  |
      | kyc_mal          |
      | kyc_nonindiv_mal |

  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-3396: Re-initiate Applicant Information of dedupe summary in Kyc Details
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in Kyc Details
    When user Re-initiate Applicant Information with rerun
    Then dedupe Applicant Information execute successfully
    Examples:
      | Stage            |
      | kyc_hl           |
      | kyc_nonindiv_hl  |
      | kyc              |
      | kyc_nonindiv_pl  |
      | kyc_mal          |
      | kyc_nonindiv_mal |

  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-3397:  Saving Kyc Check Details without <Field_Name> in Kyc Details
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in Kyc Details
    And user reads data from the excel file "<KycCheckWB>" under sheet "<KycCheck_decision>" and row <KycCheck_decision_rowNum>
    When user fills the Kyc Check Details without "<Field_Name>"
    Then Kyc Check Details will not save with "<Throws_notThrows>"
    Examples:
      | Field_Name                  | Stage   | Throws_notThrows                   | KycCheckWB     | KycCheck_decision | KycCheck_decision_rowNum |
      | Identification Verification | kyc_hl  | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Address Verification        | kyc_hl  | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Central Bank Check          | kyc_hl  | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Customer Risk Category      | kyc_hl  | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Decision                    | kyc_hl  | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Reason                      | kyc_hl  | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Identification Verification | kyc     | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Address Verification        | kyc     | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Central Bank Check          | kyc     | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Customer Risk Category      | kyc     | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Decision                    | kyc     | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Reason                      | kyc     | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Identification Verification | kyc_mal | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Address Verification        | kyc_mal | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Central Bank Check          | kyc_mal | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Customer Risk Category      | kyc_mal | throws an error with error message | kyc_check.xlsx | decision          | 0                        |
      | Decision                    | kyc_mal | throws an error with error message | kyc_check.xlsx | decision          | 0                        |

  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-3398:  No of Matches in Dedupe summary in Kyc Details
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in Kyc Details
    When user open the primary applicant
    Then No. of Matches should visible for "<Field_Name>"
    Examples:
      | Field_Name         | Stage            |
      | Application Match  | kyc_hl           |
      | Customer Match     | kyc_hl           |
      | Negative Checklist | kyc_hl           |
      | Application Match  | kyc              |
      | Customer Match     | kyc              |
      | Negative Checklist | kyc              |
      | Application Match  | kyc_mal          |
      | Customer Match     | kyc_mal          |
      | Negative Checklist | kyc_mal          |
      | Application Match  | kyc_nonindiv_hl  |
      | Customer Match     | kyc_nonindiv_hl  |
      | Negative Checklist | kyc_nonindiv_hl  |
      | Application Match  | kyc_nonindiv_pl  |
      | Customer Match     | kyc_nonindiv_pl  |
      | Negative Checklist | kyc_nonindiv_pl  |
      | Application Match  | kyc_nonindiv_mal |
      | Customer Match     | kyc_nonindiv_mal |
      | Negative Checklist | kyc_nonindiv_mal |

#FeatureID-ACAUTOCAS-806
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-6266: Saving Kyc Check Details with <Field_Name> in Kyc Details
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in Kyc Details
    And user reads data from the excel file "<KycCheckWB>" under sheet "<KycCheck_decision>" and row <KycCheck_decision_rowNum>
    When user fills the Kyc Check Details with "<Field_Name>"
    Then Kyc Check Details is saved successfully
    Examples:
      | Field_Name                  | Stage   | KycCheckWB     | KycCheck_decision | KycCheck_decision_rowNum |
      | Identification Verification | kyc_hl  | kyc_check.xlsx | decision          | 0                        |
      | Address Verification        | kyc_hl  | kyc_check.xlsx | decision          | 0                        |
      | Central Bank Check          | kyc_hl  | kyc_check.xlsx | decision          | 0                        |
      | Customer Risk Category      | kyc_hl  | kyc_check.xlsx | decision          | 0                        |
      | Decision                    | kyc_hl  | kyc_check.xlsx | decision          | 0                        |
      | Reason                      | kyc_hl  | kyc_check.xlsx | decision          | 0                        |
      | Identification Verification | kyc     | kyc_check.xlsx | decision          | 0                        |
      | Address Verification        | kyc     | kyc_check.xlsx | decision          | 0                        |
      | Central Bank Check          | kyc     | kyc_check.xlsx | decision          | 0                        |
      | Customer Risk Category      | kyc     | kyc_check.xlsx | decision          | 0                        |
      | Decision                    | kyc     | kyc_check.xlsx | decision          | 0                        |
      | Reason                      | kyc     | kyc_check.xlsx | decision          | 0                        |
      | Identification Verification | kyc_mal | kyc_check.xlsx | decision          | 0                        |
      | Address Verification        | kyc_mal | kyc_check.xlsx | decision          | 0                        |
      | Central Bank Check          | kyc_mal | kyc_check.xlsx | decision          | 0                        |
      | Customer Risk Category      | kyc_mal | kyc_check.xlsx | decision          | 0                        |
      | Decision                    | kyc_mal | kyc_check.xlsx | decision          | 0                        |

#FeatureID-ACAUTOCAS-806
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-6267: While taking <Decision> with proper <Reason> data displayed in reason description detail with Home Loan in Kyc Details
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in Kyc Details
    And user reads data from the excel file "<KycCheckWB>" under sheet "<KycCheck_decision>" and row <KycCheck_decision_rowNum>
    When user take "<Decision>" with proper "<Reason>"
    Then "<Reason>" data displayed in reason description detail
    Examples:
      | Decision | Reason   | Stage  | KycCheckWB     | KycCheck_decision | KycCheck_decision_rowNum |
      | Approve  | Approved | kyc_hl | kyc_check.xlsx | decision          | 0                        |
      | Approve  | Other    | kyc_hl | kyc_check.xlsx | decision          | 1                        |
      | Reject   | Reject   | kyc_hl | kyc_check.xlsx | decision          | 2                        |
      | Reject   | Other    | kyc_hl | kyc_check.xlsx | decision          | 3                        |

    #FeatureID-ACAUTOCAS-806
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-6268: While taking <Decision> with proper <Reason> data displayed in reason description detail with Personal Loan in Kyc Details
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in Kyc Details
    And user reads data from the excel file "<KycCheckWB>" under sheet "<KycCheck_decision>" and row <KycCheck_decision_rowNum>
    When user take "<Decision>" with proper "<Reason>"
    Then "<Reason>" data displayed in reason description detail
    Examples:
      | Decision | Reason   | Stage | KycCheckWB     | KycCheck_decision | KycCheck_decision_rowNum |
      | Approve  | Approved | kyc   | kyc_check.xlsx | decision          | 0                        |
      | Approve  | Other    | kyc   | kyc_check.xlsx | decision          | 1                        |
      | Reject   | Reject   | kyc   | kyc_check.xlsx | decision          | 2                        |
      | Reject   | Other    | kyc   | kyc_check.xlsx | decision          | 3                        |

    #FeatureID-ACAUTOCAS-806
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-6269: While taking <Decision> with proper <Reason> data displayed in reason description detail with Auto Loan in Kyc Details
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in Kyc Details
    And user reads data from the excel file "<KycCheckWB>" under sheet "<KycCheck_decision>" and row <KycCheck_decision_rowNum>
    When user take "<Decision>" with proper "<Reason>"
    Then "<Reason>" data displayed in reason description detail
    Examples:
      | Decision | Reason   | Stage   | KycCheckWB     | KycCheck_decision | KycCheck_decision_rowNum |
      | Approve  | Approved | kyc_mal | kyc_check.xlsx | decision          | 0                        |
      | Approve  | Other    | kyc_mal | kyc_check.xlsx | decision          | 1                        |
      | Reject   | Reject   | kyc_mal | kyc_check.xlsx | decision          | 2                        |
      | Reject   | Other    | kyc_mal | kyc_check.xlsx | decision          | 3                        |

    #FeatureID-ACAUTOCAS-806
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-6270: While entering decision comment check the remaining character <Loan_Type> in Kyc Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Stage>" stage from application grid
    And user is on kyc check in Kyc Details
    And user reads data from the excel file "<KycCheckWB>" under sheet "<KycCheck_decision>" and row <KycCheck_decision_rowNum>
    When user enter the decision comment
    Then remaining character of decision comment displayed
    Examples:
      | Loan_Type     | SourceDataFile       | SheetName | RowNumber | Stage   | KycCheckWB     | KycCheck_decision | KycCheck_decision_rowNum |
      | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_hl  | kyc_check.xlsx | decision          | 0                        |
      | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_mal | kyc_check.xlsx | decision          | 0                        |
      | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | kyc_pl  | kyc_check.xlsx | decision          | 0                        |































