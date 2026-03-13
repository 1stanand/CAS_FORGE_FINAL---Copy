@Epic-Reconsideration
@AuthoredBy-harshita.nayak
@ReviewedBy-utkarsh.tiwari
@ReviewedBy-akash.bansal
@Reconciled
@ReviewedByDEV
Feature: Loan information validation in Reconsideration

  Scenario Outline: ACAUTOCAS-3571: Validating the <visibility> of <FieldName> in Sourcing Details in loan information for Individual Applicant Type at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information sourcing details
    Then "<FieldName>" field should be "<visibility>"
    @Release2
    @ImplementedBy-rishabh.garg
    Examples:
      | FieldName           | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Branch              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Channel             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Product             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Scheme              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Amount Requested    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Tenure(Sourcing)    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Application Purpose | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Sourcing RM Name    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Branch              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Channel             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Product             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Scheme              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Amount Requested    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Tenure(Sourcing)    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Application Purpose | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Sourcing RM Name    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
    @NotImplemented
    Examples:
      | FieldName                    | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Search Done                  | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | EC Search Done               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Status                       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Received Date                | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Search EC Check Findings     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Document Received            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Initial Status Query Stage   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Type Of Property             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Plan Type                    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Final Status                 | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Final Document Received Date | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Search Done                  | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | EC Search Done               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Status                       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Received Date                | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Search EC Check Findings     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Document Received            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Initial Status Query Stage   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Type Of Property             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Plan Type                    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Final Status                 | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Final Document Received Date | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |

  @Release2
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-5633: Validating the <visibility> of <FieldName> in Sourcing Details in loan information for Individual Applicant Type at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information sourcing details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName           | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                      |
      | Branch              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Channel             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Product             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Scheme              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Amount Requested    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Tenure(Sourcing)    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Application Purpose | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Sourcing RM Name    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Branch              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Channel             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Product             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Scheme              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Amount Requested    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Tenure(Sourcing)    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Application Purpose | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Sourcing RM Name    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |

  @Release2
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-5634: Validating the <visibility> of <FieldName> in Sourcing Details in loan information for Individual Applicant Type at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information sourcing details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName           | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Branch              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Channel             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Product             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Scheme              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Amount Requested    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Tenure(Sourcing)    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Application Purpose | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Sourcing RM Name    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Branch              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Channel             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Product             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Scheme              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Amount Requested    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Tenure(Sourcing)    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Application Purpose | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Sourcing RM Name    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |


  Scenario Outline: ACAUTOCAS-5635: Validating the <visibility> of <FieldName> in Sourcing Details in loan information for Non Individual Applicant Type at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information sourcing details
    Then "<FieldName>" field should be "<visibility>"
    @Release2
    @ImplementedBy-rishabh.garg
    Examples:
      | FieldName           | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | Branch              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Channel             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Product             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Scheme              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Amount Requested    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Tenure(Sourcing)    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Application Purpose | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Sourcing RM Name    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Branch              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Channel             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Product             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Scheme              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Amount Requested    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Tenure(Sourcing)    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Application Purpose | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Sourcing RM Name    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
    @NotImplemented
    Examples:
      | FieldName                    | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | Search Done                  | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | EC Search Done               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Status                       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Received Date                | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Search EC Check Findings     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Document Received            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Initial Status Query Stage   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Type Of Property             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Plan Type                    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Final Status                 | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Final Document Received Date | editable     | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Search Done                  | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | EC Search Done               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Status                       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Received Date                | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Search EC Check Findings     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Document Received            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Initial Status Query Stage   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Type Of Property             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Plan Type                    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Final Status                 | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Final Document Received Date | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |

  @Release2
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-5636: Validating the <visibility> of <FieldName> in Sourcing Details in loan information for Non Individual Applicant Type at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information sourcing details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName           | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                         |
      | Branch              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Channel             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Product             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Scheme              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Amount Requested    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Tenure(Sourcing)    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Application Purpose | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Sourcing RM Name    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Branch              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Channel             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Product             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Scheme              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Amount Requested    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Tenure(Sourcing)    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Application Purpose | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Sourcing RM Name    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |

  @Release2
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-5637: Validating the <visibility> of <FieldName> in Sourcing Details in loan information for Non Individual Applicant Type at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information sourcing details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName           | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | Branch              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Channel             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Product             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Scheme              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Amount Requested    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Tenure(Sourcing)    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Application Purpose | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Sourcing RM Name    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Branch              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Channel             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Product             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Scheme              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Amount Requested    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Tenure(Sourcing)    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Application Purpose | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Sourcing RM Name    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |

  @Release2
    @ImplementedBy-bhanu.singh1
  Scenario Outline: ACAUTOCAS-3572: Validating the <visibility> of <FieldName> in Repayment Parameters Details in loan information for Individual Applicant Type at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Repayment Parameters details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Application Amount       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Disbursal Type           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Disbursal To             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Repayment Frequency      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Repayment Type           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Tenure(Sourcing Details) | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Tenure_Type              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Installment Type         | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Installment Based On     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Anchor Type              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Interest Rate Type       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Interest Start Date      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Moratorium               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Application Amount       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Disbursal To             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Repayment Frequency      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Tenure(Sourcing Details) | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Tenure_Type              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Installment Type         | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Installment Based On     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Anchor Type              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Interest Start Date      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Moratorium               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |

  @Release2
    @ImplementedBy-bhanu.singh1
  Scenario Outline: ACAUTOCAS-5638: Validating the <visibility> of <FieldName> in Repayment Parameters Details in loan information for Individual Applicant Type at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Repayment Parameters details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Application Amount       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Disbursal Type           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Disbursal To             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Repayment Frequency      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Repayment Type           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Tenure(Sourcing Details) | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Tenure_Type              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Installment Type         | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Installment Based On     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Anchor Type              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Interest Charge Method   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Interest Rate Type       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Interest Start Date      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Moratorium               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Application Amount       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Disbursal Type           | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Disbursal To             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Repayment Frequency      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Repayment Type           | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Tenure(Sourcing Details) | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Tenure_Type              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Installment Type         | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Installment Based On     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Anchor Type              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Interest Charge Method   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Interest Rate Type       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Interest Start Date      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Moratorium               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |

  @Release2
    @ImplementedBy-bhanu.singh1
  Scenario Outline:ACAUTOCAS-5639: Validating the <visibility> of <FieldName> in Repayment Parameters Details in loan information for Individual Applicant Type at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Repayment Parameters details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                      |
      | Application Amount       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Disbursal Type           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Disbursal To             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Repayment Frequency      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Repayment Type           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Tenure(Sourcing Details) | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Tenure_Type              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Installment Type         | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Installment Based On     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Anchor Type              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Interest Charge Method   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Interest Rate Type       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Interest Start Date      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Moratorium               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Application Amount       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Disbursal Type           | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Disbursal To             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Repayment Frequency      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Repayment Type           | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Tenure(Sourcing Details) | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Tenure_Type              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Installment Type         | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Installment Based On     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Anchor Type              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Interest Charge Method   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Interest Rate Type       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Interest Start Date      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Moratorium               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |

  @Release2
    @ImplementedBy-bhanu.singh1
  Scenario Outline:ACAUTOCAS-5640: Validating the <visibility> of <FieldName> in Repayment Parameters Details in loan information for Non Individual Applicant Type at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Repayment Parameters details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | Application Amount       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Disbursal Type           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Disbursal To             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Repayment Frequency      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Repayment Type           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Tenure(Sourcing Details) | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Tenure_Type              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Installment Type         | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Installment Based On     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Anchor Type              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Interest Charge Method   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Interest Rate Type       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Interest Start Date      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Moratorium               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Application Amount       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Disbursal Type           | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Disbursal To             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Repayment Frequency      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Repayment Type           | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Tenure(Sourcing Details) | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Tenure_Type              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Installment Type         | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Installment Based On     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Anchor Type              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Interest Charge Method   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Interest Rate Type       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Interest Start Date      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Moratorium               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |

  @Release2
    @ImplementedBy-bhanu.singh1
    @NoApplication
  Scenario Outline: ACAUTOCAS-5641: Validating the <visibility> of <FieldName> in Repayment Parameters Details in loan information for Non Individual Applicant Type at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Repayment Parameters details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | Application Amount       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Disbursal Type           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Disbursal To             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Repayment Frequency      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Repayment Type           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Tenure(Sourcing Details) | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Tenure_Type              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Installment Type         | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Installment Based On     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Anchor Type              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Interest Charge Method   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Interest Rate Type       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Interest Start Date      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Moratorium               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Application Amount       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Disbursal Type           | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Disbursal To             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Repayment Frequency      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Repayment Type           | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Tenure(Sourcing Details) | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Tenure_Type              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Installment Type         | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Installment Based On     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Anchor Type              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Interest Charge Method   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Interest Rate Type       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Interest Start Date      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Moratorium               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |

  @Release2
    @ImplementedBy-bhanu.singh1
  Scenario Outline: ACAUTOCAS-5642: Validating the <visibility> of <FieldName> in Repayment Parameters Details in loan information for Non Individual Applicant Type at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Repayment Parameters details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                         |
      | Application Amount       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Disbursal Type           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Disbursal To             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Repayment Frequency      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Repayment Type           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Tenure(Sourcing Details) | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Tenure_Type              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Installment Type         | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Installment Based On     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Anchor Type              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Interest Charge Method   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Interest Rate Type       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Interest Start Date      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Moratorium               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Application Amount       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Disbursal Type           | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Disbursal To             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Repayment Frequency      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Repayment Type           | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Tenure                   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Tenure_Type              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Installment Type         | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Installment Based On     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Anchor Type              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Interest Charge Method   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Interest Rate Type       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Interest Start Date      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Moratorium               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |

  @Release2
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-3573: Validating the <visibility> of <FieldName> in Financial Summary Details in loan information for Individual Applicant Type at <Var_Stage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Financial Summary details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName                                  | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                         |
      | Individual Percentage To Be Considered     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl     |
      | Individual Percentage To Be Considered     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl     |
      | Individual Percentage To Be Considered     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl     |
      | Individual Percentage To Be Considered     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl     |
      | Individual Percentage To Be Considered     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal    |
      | Individual Percentage To Be Considered     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal    |
      | Non Individual Percentage To Be Considered | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl  |
      | Non Individual Percentage To Be Considered | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl  |
      | Non Individual Percentage To Be Considered | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl  |
      | Non Individual Percentage To Be Considered | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl  |
      | Non Individual Percentage To Be Considered | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Non Individual Percentage To Be Considered | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |


  @Release2
    @ImplementedBy-bhanu.singh1
  Scenario Outline:ACAUTOCAS-3574: Validating the <visibility> of <FieldName> in Property Details in loan information for Individual Applicant Type at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Property details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName                            | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Application Type(sourcing)           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Collateral Sub Type/Property Details | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Type Of Purchase                     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Property Type                        | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Nature of Property                   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Property Cost                        | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Application Type                     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Collateral Sub Type/Property Details | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Type Of Purchase                     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Property Type                        | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Nature of Property                   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Property Cost(sourcing)              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |

  @Release2
    @ImplementedBy-bhanu.singh1
  Scenario Outline:ACAUTOCAS-5643:Validating the <visibility> of <FieldName> in Property Details in loan information for Non Individual Applicant Type at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Property details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                            | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | Application Type(sourcing)           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Collateral Sub Type/Property Details | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Type Of Purchase                     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Property Type                        | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Nature of Property                   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Property Cost(sourcing)              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Application Type                     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Collateral Sub Type/Property Details | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Type Of Purchase                     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Property Type                        | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Nature of Property                   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Property Cost(sourcing)              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |

  @Release2
    @ImplementedBy-bhanu.singh1
  Scenario Outline: ACAUTOCAS-3575: Validating the <visibility> of <FieldName> in Asset Details in loan information for Individual at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Asset details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                      |
      | Collateral Number        | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Global Collateral Number | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Collateral Sub Type      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Type               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Finance Mode             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Manufacturer             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Reference Number   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Category           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Manufacturer Address     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Manufacturer GSTIN       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Model              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Description        | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Variant            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Level              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Usage              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Showroom Name            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Cost               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Revaluation Date         | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Reverification Date      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Dealer                   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Collateral Number        | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Global Collateral Number | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Collateral Sub Type      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Type               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Finance Mode             | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Manufacturer             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Reference Number   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Category           | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Manufacturer Address     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Manufacturer GSTIN       | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Model              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Description        | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Variant            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Level              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Usage              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Showroom Name            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Asset Cost               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Revaluation Date         | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Reverification Date      | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |

  @Release2
    @ImplementedBy-pallavi.singh
  Scenario Outline:ACAUTOCAS-5644: Validating the <visibility> of <FieldName> in Asset Details in loan information for Non Individual at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Asset details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                         |
      | Collateral Number        | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Global Collateral Number | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Collateral Sub Type      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Type               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Finance Mode             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Manufacturer             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Reference Number   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Category           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Manufacturer Address     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Manufacturer GSTIN       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Model              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Description        | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Variant            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Level              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Usage              | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Showroom Name            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Cost               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Revaluation Date         | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Reverification Date      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Dealer                   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Collateral Number        | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Global Collateral Number | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Collateral Sub Type      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Type               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Finance Mode             | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Manufacturer             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Reference Number   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Category           | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Manufacturer Address     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Manufacturer GSTIN       | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Model              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Description        | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Variant            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Level              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Usage              | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Showroom Name            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Asset Cost               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Revaluation Date         | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Reverification Date      | non-editable | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |

  @Release2
    @ImplementedBy-pallavi.singh
  Scenario Outline:ACAUTOCAS-3576:Validating the <visibility> of <FieldName> in Collateral Details in loan information for Individual at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Collateral details
    Then this particular "<FieldName>" field of collateral page should be "<visibility>"
    Examples:
      | FieldName          | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                      |
      | Collateral Type    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Collateral SubType | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Collateral Type    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Collateral SubType | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |

  @Release2
    @ImplementedBy-pallavi.singh
  Scenario Outline:ACAUTOCAS-5645:Validating the <visibility> of <FieldName> in Collateral Details in loan information for Individual at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Collateral details
    Then this particular "<FieldName>" field of collateral page should be "<visibility>"
    Examples:
      | FieldName          | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Collateral Type    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Collateral SubType | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Collateral Type    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Collateral SubType | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |

  @Release2
    @ImplementedBy-pallavi.singh
  Scenario Outline:ACAUTOCAS-5646:Validating the <visibility> of <FieldName> in Collateral Details in loan information for Individual at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Collateral details
    Then this particular "<FieldName>" field of collateral page should be "<visibility>"
    Examples:
      | FieldName          | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Collateral Type    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Collateral SubType | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Collateral Type    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Collateral SubType | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |

  @Release2
    @ImplementedBy-pallavi.singh
  Scenario Outline:ACAUTOCAS-5647:Validating the <visibility> of <FieldName> in Collateral Details in loan information for Non Individual at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Collateral details
    Then this particular "<FieldName>" field of collateral page should be "<visibility>"
    Examples:
      | FieldName          | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                         |
      | Collateral Type    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Collateral SubType | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Collateral Type    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Collateral SubType | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |

  @Release2
    @ImplementedBy-pallavi.singh
  Scenario Outline:ACAUTOCAS-5648:Validating the <visibility> of <FieldName> in Collateral Details in loan information for Non Individual at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Collateral details
    Then this particular "<FieldName>" field of collateral page should be "<visibility>"
    Examples:
      | FieldName          | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | Collateral Type    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Collateral SubType | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Collateral Type    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | Collateral SubType | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |

  @Release2
    @ImplementedBy-pallavi.singh
  Scenario Outline:ACAUTOCAS-5649:Validating the <visibility> of <FieldName> in Collateral Details in loan information for Non Individual at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Collateral details
    Then this particular "<FieldName>" field of collateral page should be "<visibility>"
    Examples:
      | FieldName          | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | Collateral Type    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Collateral SubType | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Collateral Type    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Collateral SubType | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |

  @Release2
    @ImplementedBy-pallavi.singh
  Scenario Outline:ACAUTOCAS-3577:Validating the <visibility> of <FieldName> in Receipt Details in loan information for Individual at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information receipt details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | collect   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | collect   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |

  @Release2
    @ImplementedBy-pallavi.singh
  Scenario Outline:ACAUTOCAS-5650:Validating the <visibility> of <FieldName> in Receipt Details in loan information for Individual at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information receipt details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | collect   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | collect   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |

  @Release2
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-5651: Validating the <visibility> of <FieldName> in Receipt Details in loan information for Individual at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information receipt details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                      |
      | collect   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | collect   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |

  @Release2
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-5652: Validating the <visibility> of <FieldName> in Receipt Details in loan information for Non Individual at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information receipt details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | collect   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | collect   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |

  @Release2
    @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-5653: Validating the <visibility> of <FieldName> in Receipt Details in loan information for Non Individual at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information receipt details
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | collect   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | collect   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |

  @Release2
  #split:ACAUTOCAS-3577 in non individual auto loan
    @ImplementedBy-ashutosh.kumar2
  Scenario Outline:ACAUTOCAS-5654:Validating the <visibility> of <FieldName> in Receipt Details in loan information for Non Individual at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information receipt details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                         |
      | collect   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | collect   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |

  @Release2
    #ACAUTOCAS-3578 split in Individual Home Loan
    @ImplementedBy-ashutosh.kumar2

  Scenario Outline: ACAUTOCAS-3578:Validating the <visibility> of <FieldName> in Personal Discussion for Individual Applicant Type in loan information at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Personal Discussion
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                      | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Name of Applicant/Organization | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Person Met                     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Designation                    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Brief Nature of Business       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Total Family Members           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Comment on Business Model      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Existing wealth details        | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Comment on Financials          | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Comment on Banking             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Name of Applicant/Organization | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Person Met                     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Designation                    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Brief Nature of Business       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Total Family Members           | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Comment on Business Model      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Existing wealth details        | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Comment on Financials          | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Comment on Banking             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |

  @Release2
    #ACAUTOCAS-3578 split in Individual Personal Loan
    @ImplementedBy-ashutosh.kumar2
    @NoApplication

  Scenario Outline: ACAUTOCAS-5655:Validating the <visibility> of <FieldName> in Personal Discussion for Individual Applicant Type in loan information at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Personal Discussion
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                      | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Applicant Type                 | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Person Met                     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Designation                    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Brief Nature of Business       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Name of Applicant/Organization | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Person Met                     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Designation                    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | Brief Nature of Business       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |

  @Release2
    #ACAUTOCAS-3578 split in Individual Auto Loan
    @ImplementedBy-ashutosh.kumar2

  Scenario Outline: ACAUTOCAS-5656:Validating the <visibility> of <FieldName> in Personal Discussion for Individual Applicant Type in loan information at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Personal Discussion
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName              | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                      |
      | Applicant Type         | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Applicant Name         | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Location               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Business Name          | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Constitution           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Landmark               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Total No. Of Employees | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | No of Seen Employees   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Office size            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Computers    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Printers     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Fax          | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Phone Lines  | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | HUB Name               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Business Background    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Applicant Type         | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Applicant Name         | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Location               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Business Name          | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Constitution           | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Landmark               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Total No. Of Employees | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | No of Seen Employees   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Office size            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Computers    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Printers     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Fax          | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Phone Lines  | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | HUB Name               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Business Background    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |

  @Release2
  #ACAUTOCAS-3578 split in Non-Individual Home Loan
    @ImplementedBy-ashutosh.kumar2

  Scenario Outline: ACAUTOCAS-5657:Validating the <visibility> of <FieldName> in Personal Discussion for Non Individual Applicant Type in loan information at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Personal Discussion
    Then "<FieldName>" field should be "<visibility>"
    Examples:
      | FieldName                      | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | Designation                    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Total Family Members           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Comment on Business Model      | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Existing wealth details        | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Comment on Financials          | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Comment on Banking             | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Name of Applicant/Organization | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Person Met                     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Designation                    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Brief Nature of Business       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Total Family Members           | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Comment on Business Model      | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Existing wealth details        | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Comment on Financials          | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | Comment on Banking             | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |

  @Release2
    #ACAUTOCAS-3578 split in non-Individual Personal Loan
    @ImplementedBy-ashutosh.kumar2
    @NoApplication
  Scenario Outline: ACAUTOCAS-5658:Validating the <visibility> of <FieldName> in Personal Discussion for Non Individual Applicant Type in loan information at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Personal Discussion
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                      | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | Applicant Type                 | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Person Met                     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Designation                    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Brief Nature of Business       | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Name of Applicant/Organization | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Person Met                     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Designation                    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | Brief Nature of Business       | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |

  @Release2
    #ACAUTOCAS-3578 split in non Individual Auto Loan
    @ImplementedBy-ashutosh.kumar2

  Scenario Outline: ACAUTOCAS-5659:Validating the <visibility> of <FieldName> in Personal Discussion for Non Individual Applicant Type in loan information at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user "<var>" update details
    And user is on Loan information Personal Discussion
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName              | visibility   | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                      |
      | Applicant Type         | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Applicant Name         | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Location               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Business Name          | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Constitution           | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Landmark               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Total No. Of Employees | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | No of Seen Employees   | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Office size            | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Computers    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Printers     | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Fax          | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Phone Lines  | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | HUB Name               | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Business Background    | non-editable | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Applicant Type         | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Applicant Name         | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Location               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Business Name          | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Constitution           | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Landmark               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Total No. Of Employees | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | No of Seen Employees   | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Office size            | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Computers    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Printers     | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Fax          | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Number of Phone Lines  | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | HUB Name               | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | Business Background    | editable     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |

  @Release2
    @ImplementedBy-ashutosh.kumar2

    # ACAUTOCAS-3580: split in individual home loan
  Scenario Outline:ACAUTOCAS-3580: Validating the <visibility> of hyperlink <field_name> in loan information for Individual Applicant Type at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user opens an application at "<Var_Stage>" stage from application grid
    Then "<field_name>" should be "<visibility>" in loan information for "<Loan_Type>"

    Examples:
      | visibility | Loan_Type | field_name           | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | visible    | Home Loan | Receipt Details      | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | visible    | Home Loan | Sourcing Details     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | visible    | Home Loan | Financial Summary    | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | visible    | Home Loan | Personal Discussion  | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | visible    | Home Loan | Repayment Parameters | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | visible    | Home Loan | Collateral Details   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |
      | visible    | Home Loan | Property Details     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl |

  @Release2
    @ImplementedBy-ashutosh.kumar2
    @NoApplication
    # ACAUTOCAS-3580: split in individual personal loan
  Scenario Outline:ACAUTOCAS-5660: Validating the <visibility> of hyperlink <field_name> in loan information for Individual Applicant Type at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user opens an application at "<Var_Stage>" stage from application grid
    Then "<field_name>" should be "<visibility>" in loan information for "<Loan_Type>"

    Examples:
      | visibility | Loan_Type     | field_name           | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | visible    | Personal Loan | Receipt Details      | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | visible    | Personal Loan | Sourcing Details     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | visible    | Personal Loan | Financial Summary    | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | visible    | Personal Loan | Personal Discussion  | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | visible    | Personal Loan | Repayment Parameters | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |
      | visible    | Personal Loan | VAP Details          | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl |

  @Release2
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-5661: Validating the <visibility> of hyperlink <field_name> in loan information for Individual Applicant Type at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user opens an application at "<Var_Stage>" stage from application grid
    Then "<field_name>" should be "<visibility>" in loan information for "<Loan_Type>"

    Examples:
      | visibility | Loan_Type | field_name           | SourceDataFile       | SheetName | RowNumber | Var_Stage                      |
      | visible    | Auto Loan | Receipt Details      | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | visible    | Auto Loan | Sourcing details     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | visible    | Auto Loan | Financial Summary    | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | visible    | Auto Loan | Personal Discussion  | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | visible    | Auto Loan | Repayment Parameters | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | visible    | Auto Loan | Asset Details        | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | visible    | Auto Loan | Collateral Details   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |
      | visible    | Auto Loan | VAP Details          | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal |

  @Release2
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-5662: Validating the <visibility> of hyperlink <field_name> in loan information for Non Individual Applicant Type at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user opens an application at "<Var_Stage>" stage from application grid
    Then "<field_name>" should be "<visibility>" in loan information for "<Loan_Type>"

    Examples:
      | visibility | Loan_Type | field_name           | SourceDataFile       | SheetName | RowNumber | Var_Stage                         |
      | visible    | Auto Loan | Receipt Details      | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | visible    | Auto Loan | Sourcing details     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | visible    | Auto Loan | Financial Summary    | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | visible    | Auto Loan | Personal Discussion  | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | visible    | Auto Loan | Repayment Parameters | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | visible    | Auto Loan | Asset Details        | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | visible    | Auto Loan | Collateral Details   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | visible    | Auto Loan | VAP Details          | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |

  @Release2
    @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-5663: Validating the <visibility> of hyperlink <field_name> in loan information for Non Individual Applicant Type at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user opens an application at "<Var_Stage>" stage from application grid
    Then "<field_name>" should be "<visibility>" in loan information for "<Loan_Type>"

    Examples:
      | visibility | Loan_Type | field_name           | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | visible    | Home Loan | Receipt Details      | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | visible    | Home Loan | Sourcing Details     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | visible    | Home Loan | Financial Summary    | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | visible    | Home Loan | Personal Discussion  | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | visible    | Home Loan | Repayment Parameters | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | visible    | Home Loan | Collateral Details   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |
      | visible    | Home Loan | Property Details     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl |

  @Release2
    @ImplementedBy-ashutosh.kumar2
    # ACAUTOCAS-3580: split in non individual personal loan
  Scenario Outline: ACAUTOCAS-5664: Validating the <visibility> of hyperlink <field_name> in loan information for Non Individual Applicant Type at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    When user opens an application at "<Var_Stage>" stage from application grid
    Then "<field_name>" should be "<visibility>" in loan information for "<Loan_Type>"
    Examples:
      | visibility | Loan_Type     | field_name           | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | visible    | Personal Loan | Receipt Details      | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | visible    | Personal Loan | Sourcing Details     | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | visible    | Personal Loan | Financial Summary    | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | visible    | Personal Loan | Personal Discussion  | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | visible    | Personal Loan | Repayment Parameters | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |
      | visible    | Personal Loan | VAP Details          | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl |

  @NotImplemented
  Scenario Outline: ACAUTOCAS-3579: Validating the <visibility> of VAP Details in loan information at Reconsideration
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at Reconsideration stage from application grid for "<Applicant>" with "<Loan_Type>" at "<Var_Stage>" stage
    And user is on Loan information VAP Details
    When user "<var>" update details
    Then mandatory field of "VAP Details in loan information" should be "<visibility>"

    Examples:
      | Applicant      | visibility   | Loan_Type     | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                         |
      | Individual     | non-editable | Home Loan     | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl     |
      | Individual     | editable     | Home Loan     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_hl     |
      | Individual     | non-editable | Personal Loan | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl     |
      | Individual     | editable     | Personal Loan | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_pl     |
      | Individual     | non-editable | Auto Loan     | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal    |
      | Individual     | editable     | Auto Loan     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_individual_mal    |
      | Non-Individual | non-editable | Home Loan     | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl  |
      | Non-Individual | editable     | Home Loan     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_hl  |
      | Non-Individual | non-editable | Personal Loan | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl  |
      | Non-Individual | editable     | Personal Loan | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_pl  |
      | Non-Individual | non-editable | Auto Loan     | unchecks | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
      | Non-Individual | editable     | Auto Loan     | checks   | LoginDetailsCAS.xlsx | LoginData | 0         | reconsideration_nonindividual_mal |
