@Epic-Reconsideration
@AuthoredBy-harshita.nayak
@ReviewedBy-utkarsh.tiwari
@ReviewedBy-akash.bansal
@ReviewedByDEV

Feature: Intent Indicators for Kyc Check field validation in Reconsideration

  @ImplementedBy-utkarsh.tiwari
    @Release2
  Scenario Outline: ACAUTOCAS-3567: Validating the <visibility> of "<FieldName>" in Kyc check in Intent Indicators for Individual Applicant Type at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Intent Indicators kyc check details
    And user expands kyc applicant details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName              | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Address Verification   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Central Bank Check     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Other Check            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Customer Risk Category | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Decision               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Reason                 | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Address Verification   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Central Bank Check     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Other Check            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Customer Risk Category | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Decision               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Reason                 | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |

  @ImplementedBy-utkarsh.tiwari
    @NoApplication
    @Release2
#  ACAUTOCAS-3568: split
  Scenario Outline: ACAUTOCAS-3568: Validating the <visibility> of "<FieldName>" in Kyc check in Intent Indicators for Individual Applicant Type at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Intent Indicators kyc check details
    And user expands kyc applicant details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName              | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Address Verification   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Central Bank Check     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Other Check            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Customer Risk Category | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Decision               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Reason                 | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Address Verification   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Central Bank Check     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Other Check            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Customer Risk Category | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Decision               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Reason                 | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |

  @ImplementedBy-akash.bansal
    @Release2
#  ACAUTOCAS-3568: split
  Scenario Outline:Validating the <visibility> of "<FieldName>" in Kyc check in Intent Indicators for Individual Applicant Type at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Intent Indicators kyc check details
    And user expands kyc applicant details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName              | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                 |
      | Address Verification   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Central Bank Check     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Other Check            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Customer Risk Category | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Decision               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Reason                 | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Address Verification   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Central Bank Check     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Other Check            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Customer Risk Category | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Decision               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Reason                 | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |

  @ImplementedBy-akash.bansal
    @Release2
#  ACAUTOCAS-3568: split
  Scenario Outline:Validating the <visibility> of "<FieldName>" in Kyc check in Intent Indicators for Non Individual Applicant Type at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Intent Indicators kyc check details
    And user expands kyc applicant details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName              | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                   |
      | Address Verification   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Central Bank Check     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Other Check            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Customer Risk Category | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Decision               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Reason                 | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Address Verification   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Central Bank Check     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Other Check            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Customer Risk Category | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Decision               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Reason                 | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |

  @ImplementedBy-akash.bansal
    @NoApplication
    @Release2
#  ACAUTOCAS-3568: split
  Scenario Outline:Validating the <visibility> of "<FieldName>" in Kyc check in Intent Indicators for Non Individual Applicant Type at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Intent Indicators kyc check details
    And user expands kyc applicant details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName              | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                   |
      | Address Verification   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Central Bank Check     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Other Check            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Customer Risk Category | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Decision               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Reason                 | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Address Verification   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Central Bank Check     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Other Check            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Customer Risk Category | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Decision               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Reason                 | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |

  @ImplementedBy-akash.bansal
    @Release2
#  ACAUTOCAS-3568: split
  Scenario Outline:Validating the <visibility> of "<FieldName>" in Kyc check in Intent Indicators for Non Individual Applicant Type at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Intent Indicators kyc check details
    And user expands kyc applicant details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName              | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                    |
      | Address Verification   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Central Bank Check     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Other Check            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Customer Risk Category | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Decision               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Reason                 | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Address Verification   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Central Bank Check     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Other Check            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Customer Risk Category | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Decision               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Reason                 | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |

  @ImplementedBy-akash.bansal
    @Release2
#  ACAUTOCAS-3568: split
  Scenario Outline:Validating the Kyc check Details in Intent Indicators same as filled details in kyc stage for Individual Applicant Type at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Intent Indicators kyc check
    Then Kyc check Details for field "<field_name>" in Intent Indicators should be same as filled details in kyc stage
    Examples:
      | field_name         | SourceDataFile       | SheetName | RowNumber | Var_Stage                |
      | Applicant Role     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_hl |
      | Applicant Name     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_hl |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_hl |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_hl |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_hl |
      | Decision           | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_hl |
      | Reason             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_hl |

  @ImplementedBy-akash.bansal
    @NoApplication
    @Release2
#  ACAUTOCAS-3568: split
  Scenario Outline:Validating the Kyc check Details in Intent Indicators same as filled details in kyc stage for Individual Applicant Type at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Intent Indicators kyc check
    Then Kyc check Details for field "<field_name>" in Intent Indicators should be same as filled details in kyc stage
    Examples:
      | field_name         | SourceDataFile       | SheetName | RowNumber | Var_Stage                |
      | Applicant Role     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_pl |
      | Applicant Name     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_pl |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_pl |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_pl |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_pl |
      | Decision           | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_pl |
      | Reason             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_pl |

  @ImplementedBy-akash.bansal
    @Release2
#  ACAUTOCAS-3568: split
  Scenario Outline:Validating the Kyc check Details in Intent Indicators same as filled details in kyc stage for Individual Applicant Type at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Intent Indicators kyc check
    Then Kyc check Details for field "<field_name>" in Intent Indicators should be same as filled details in kyc stage
    Examples:
      | field_name         | SourceDataFile       | SheetName | RowNumber | Var_Stage                 |
      | Applicant Role     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Applicant Name     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Decision           | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |
      | Reason             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_indiv_mal |

  @ImplementedBy-akash.bansal
    @Release2
#  ACAUTOCAS-3568: split
  Scenario Outline:Validating the Kyc check Details in Intent Indicators same as filled details in kyc stage for Non Individual Applicant Type at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Intent Indicators kyc check
    Then Kyc check Details for field "<field_name>" in Intent Indicators should be same as filled details in kyc stage
    Examples:
      | field_name         | SourceDataFile       | SheetName | RowNumber | Var_Stage                   |
      | Applicant Role     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Applicant Name     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Decision           | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |
      | Reason             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_hl |

  @ImplementedBy-akash.bansal
    @NoApplication
    @Release2
#  ACAUTOCAS-3568: split
  Scenario Outline:Validating the Kyc check Details in Intent Indicators same as filled details in kyc stage for Non Individual Applicant Type at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Intent Indicators kyc check
    Then Kyc check Details for field "<field_name>" in Intent Indicators should be same as filled details in kyc stage
    Examples:
      | field_name         | SourceDataFile       | SheetName | RowNumber | Var_Stage                   |
      | Applicant Role     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Applicant Name     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Decision           | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |
      | Reason             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_pl |

  @ImplementedBy-akash.bansal
    @Release2
#  ACAUTOCAS-3568: split
  Scenario Outline:Validating the Kyc check Details in Intent Indicators same as filled details in kyc stage for Non Individual Applicant Type at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Intent Indicators kyc check
    Then Kyc check Details for field "<field_name>" in Intent Indicators should be same as filled details in kyc stage
    Examples:
      | field_name         | SourceDataFile       | SheetName | RowNumber | Var_Stage                    |
      | Applicant Role     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Applicant Name     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Decision           | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |
      | Reason             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindiv_mal |


  @NotImplemented
  Scenario Outline: ACAUTOCAS-3569: Update <field_name> as <var> for Kyc check Details in Intent Indicators at Reconsideration
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
#    And user opens an application at Reconsideration stage from application grid for "<Applicant>" with "<Loan_Type>"
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Intent Indicators kyc check details
    When user update "<field_name>" as "<var>" in kyc stage
    Then application moves to rejected application grid

    Examples:
      | Applicant      | field_name | var    | Loan_Type      | SourceDataFile       | SheetName | RowNumber | Var_Stage                         |
      | Individual     | Decision   | Reject | Home Loan      | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl     |
      | Individual     | Decision   | Reject | Personal  Loan | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl     |
      | Individual     | Decision   | Reject | Auto Loan      | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal    |
      | Non-Individual | Decision   | Reject | Home Loan      | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl  |
      | Non-Individual | Decision   | Reject | Personal  Loan | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl  |
      | Non-Individual | Decision   | Reject | Auto Loan      | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
