@Epic-Reconsideration
@AuthoredBy-harshita.nayak
@ReviewedBy-utkarsh.tiwari
@ImplementedBy-utkarsh.tiwari
@Release2
@ReviewedByDEV

Feature: Decision Details field validation in Reconsideration

  Scenario Outline:ACAUTOCAS-3562:Unable to edit the all fields without update details in Decision Details for Individual Applicant Type at Reconsideration in <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Decision Details
    Then decision details "field" should be "<editability>"

    Examples:
      | editability  | Loan_Type     | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | non-editable | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | non-editable | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_al |
  @NoApplication
    Examples:
      | editability  | Loan_Type     | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | non-editable | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |

  Scenario Outline:Unable to edit the all fields without update details in Decision Details for Non Individual Applicant Type at Reconsideration in <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Decision Details
    Then decision details "field" should be "<editability>"

    Examples:
      | editability  | Loan_Type     | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | non-editable | Home Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | non-editable | Auto Loan     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_al |
    @NoApplication
    Examples:
      | editability  | Loan_Type     | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | non-editable | Personal Loan | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |

  Scenario Outline:ACAUTOCAS-3563:Able to edit the <field_name> with update details in Decision Details at Reconsideration for Individual Applicant Type in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user checks update details
    And user is on Decision Details
    Then decision details "<field_name>" should be "<editability>"
    Examples:
      | editability | field_name                    | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | editable    | Sanctioned Interest           | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | editable    | Sanctioned Amount             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | editable    | Sanctioned Tenure             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | editable    | Maximum Sanctioned Amount     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | editable    | Maximum Sanctioned Tenure     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | editable    | Special Conditions            | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | editable    | Description                   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | editable    | Applicable For                | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | editable    | Approval Required             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | editable    | Special Condition Status Flag | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | editable    | To be met till stage          | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |

  @NoApplication
  Scenario Outline:ACAUTOCAS-3563:Able to edit the <field_name> with update details in Decision Details at Reconsideration for Individual Applicant Type in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user checks update details
    And user is on Decision Details
    Then decision details "<field_name>" should be "<editability>"
    Examples:
      | editability | field_name                    | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | editable    | Sanctioned Interest           | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | editable    | Sanctioned Amount             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | editable    | Sanctioned Tenure             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | editable    | Maximum Sanctioned Amount     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | editable    | Maximum Sanctioned Tenure     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | editable    | Special Conditions            | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | editable    | Package Discount              | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | editable    | Applicable For                | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | editable    | Approval Required             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | editable    | Special Condition Status Flag | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | editable    | To be met till stage          | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |

  Scenario Outline:Able to edit the <field_name> with update details in Decision Details at Reconsideration for Individual Applicant Type in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user checks update details
    And user is on Decision Details
    Then decision details "<field_name>" should be "<editability>"
    Examples:
      | editability | field_name                    | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | editable    | Sanctioned Interest           | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_al |
      | editable    | Sanctioned Amount             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_al |
      | editable    | Sanctioned Tenure             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_al |
      | editable    | Maximum Sanctioned Amount     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_al |
      | editable    | Maximum Sanctioned Tenure     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_al |
      | editable    | Special Conditions            | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_al |
      | editable    | Description                   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_al |
      | editable    | Applicable For                | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_al |
      | editable    | Approval Required             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_al |
      | editable    | Special Condition Status Flag | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_al |
      | editable    | To be met till stage          | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_al |

  Scenario Outline:Able to edit the <field_name> with update details in Decision Details at Reconsideration for Non Individual Applicant Type in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Details
    When user checks update details
    Then decision details "<field_name>" should be "<editability>"
    Examples:
      | editability | field_name                    | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | editable    | Sanctioned Interest           | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | editable    | Sanctioned Amount             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | editable    | Sanctioned Tenure             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | editable    | Maximum Sanctioned Amount     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | editable    | Maximum Sanctioned Tenure     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | editable    | Special Conditions            | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | editable    | Description                   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | editable    | Applicable For                | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | editable    | Approval Required             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | editable    | Special Condition Status Flag | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | editable    | To be met till stage          | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |

  @NoApplication
  Scenario Outline:Able to edit the <field_name> with update details in Decision Details at Reconsideration for Non Individual Applicant Type in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Details
    When user checks update details
    Then decision details "<field_name>" should be "<editability>"
    Examples:
      | editability | field_name                    | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | editable    | Sanctioned Interest           | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | editable    | Sanctioned Amount             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | editable    | Sanctioned Tenure             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | editable    | Maximum Sanctioned Amount     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | editable    | Maximum Sanctioned Tenure     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | editable    | Special Conditions            | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | editable    | Package Discount              | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | editable    | Applicable For                | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | editable    | Approval Required             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | editable    | Special Condition Status Flag | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | editable    | To be met till stage          | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |

  Scenario Outline:Able to edit the <field_name> with update details in Decision Details at Reconsideration for Non Individual Applicant Type in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Details
    When user checks update details
    Then decision details "<field_name>" should be "<editability>"
    Examples:
      | editability | field_name                    | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | editable    | Sanctioned Interest           | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_al |
      | editable    | Sanctioned Amount             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_al |
      | editable    | Sanctioned Tenure             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_al |
      | editable    | Maximum Sanctioned Amount     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_al |
      | editable    | Maximum Sanctioned Tenure     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_al |
      | editable    | Special Conditions            | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_al |
      | editable    | Description                   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_al |
      | editable    | Applicable For                | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_al |
      | editable    | Approval Required             | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_al |
      | editable    | Special Condition Status Flag | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_al |
      | editable    | To be met till stage          | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_al |
