@Epic-Reconsideration
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@ReviewedByDEV
@Release3
Feature: Decision Justification Field validation in Reconsideration

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-4732:Validating the <visibility> of Decision Justification in Intent Indicators at Reconsideration for individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    When user "<var>" update details
    Then Decision Justification details should be "<visibility>"
    Examples:
      | visibility   | Loan_Type     | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                     |
      | non-editable | Home Loan     | unchecks | LoginDetailsCAS.xlsx | LoginData | 2         | reconsideration_individual_hl |
      | editable     | Home Loan     | checks   | LoginDetailsCAS.xlsx | LoginData | 2         | reconsideration_individual_hl |
      | non-editable | Personal Loan | unchecks | LoginDetailsCAS.xlsx | LoginData | 2         | reconsideration_individual_pl |
      | editable     | Personal Loan | checks   | LoginDetailsCAS.xlsx | LoginData | 2         | reconsideration_individual_pl |
      | non-editable | Auto Loan     | unchecks | LoginDetailsCAS.xlsx | LoginData | 2         | reconsideration_individual_mal |
      | editable     | Auto Loan     | checks   | LoginDetailsCAS.xlsx | LoginData | 2         | reconsideration_individual_mal |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-7438:Validating the <visibility> of Decision Justification in Intent Indicators at Reconsideration for non individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    When user "<var>" update details
    Then Decision Justification details should be "<visibility>"
    Examples:
      | visibility   | Loan_Type     | var      | SourceDataFile       | SheetName | RowNumber | Var_Stage                        |
      | non-editable | Home Loan     | unchecks | LoginDetailsCAS.xlsx | LoginData | 2         | reconsideration_nonindividual_hl |
      | editable     | Home Loan     | checks   | LoginDetailsCAS.xlsx | LoginData | 2         | reconsideration_nonindividual_hl |
      | non-editable | Personal Loan | unchecks | LoginDetailsCAS.xlsx | LoginData | 2         | reconsideration_nonindividual_pl |
      | editable     | Personal Loan | checks   | LoginDetailsCAS.xlsx | LoginData | 2         | reconsideration_nonindividual_pl |
      | non-editable | Auto Loan     | unchecks | LoginDetailsCAS.xlsx | LoginData | 2         | reconsideration_nonindividual_mal |
      | editable     | Auto Loan     | checks   | LoginDetailsCAS.xlsx | LoginData | 2         | reconsideration_nonindividual_mal |


  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-4733:Validating Character Strength in Decision Justification Details <var> for Individual Applicant at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
#    And user checks update details
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_Decision_Justification_details>" and row <Reconsideration_Decision_Justification_rowNum>
    And user fills the Character Strength
    When user saves Decision Justification
    Then Character Strength field with "<var>" "<Throws_notThrows>" in Decision Justification Details

    Examples:
      | var                       | SourceDataFile       | SheetName | Throws_notThrows         | Var_Stage                     | ReconsiderationWB    | Reconsideration_Decision_Justification_details | Reconsideration_Decision_Justification_rowNum |
      | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_hl | reconsideration.xlsx | decision_justification                         | 0                                             |
      | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_hl | reconsideration.xlsx | decision_justification                         | 1                                             |
      | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_hl | reconsideration.xlsx | decision_justification                         | 2                                             |
      | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_hl | reconsideration.xlsx | decision_justification                         | 3                                             |
      | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_hl | reconsideration.xlsx | decision_justification                         | 4                                             |

  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-7439:Validating Character Strength in Decision Justification Details <var> for Individual Applicant at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
#    And user checks update details
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_Decision_Justification_details>" and row <Reconsideration_Decision_Justification_rowNum>
    And user fills the Character Strength
    When user saves Decision Justification
    Then Character Strength field with "<var>" "<Throws_notThrows>" in Decision Justification Details

    Examples:
      | var                       | SourceDataFile       | SheetName | Throws_notThrows         | Var_Stage                     | ReconsiderationWB    | Reconsideration_Decision_Justification_details | Reconsideration_Decision_Justification_rowNum |
      | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_pl | reconsideration.xlsx | decision_justification                         | 0                                             |
      | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_pl | reconsideration.xlsx | decision_justification                         | 1                                             |
      | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_pl | reconsideration.xlsx | decision_justification                         | 2                                             |
      | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_pl | reconsideration.xlsx | decision_justification                         | 3                                             |
      | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_pl | reconsideration.xlsx | decision_justification                         | 4                                             |

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-7440:Validating Character Strength in Decision Justification Details <var> for Individual Applicant at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_Decision_Justification_details>" and row <Reconsideration_Decision_Justification_rowNum>
    And user fills the Character Strength
    When user saves Decision Justification
    Then Character Strength field with "<var>" "<Throws_notThrows>" in Decision Justification Details

    Examples:
      | var                       | SourceDataFile       | SheetName | Throws_notThrows         | Var_Stage                     | ReconsiderationWB    | Reconsideration_Decision_Justification_details | Reconsideration_Decision_Justification_rowNum |
      | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_mal | reconsideration.xlsx | decision_justification                         | 0                                             |
      | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_mal | reconsideration.xlsx | decision_justification                         | 1                                             |
      | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_mal | reconsideration.xlsx | decision_justification                         | 2                                             |
      | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_mal | reconsideration.xlsx | decision_justification                         | 3                                             |
      | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_individual_mal | reconsideration.xlsx | decision_justification                         | 4                                             |

  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-7441:Validating Character Strength in Decision Justification Details <var> for Non Individual Applicant at Reconsideration in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_Decision_Justification_details>" and row <Reconsideration_Decision_Justification_rowNum>
    And user fills the Character Strength
    When user saves Decision Justification
    Then Character Strength field with "<var>" "<Throws_notThrows>" in Decision Justification Details

    Examples:
      | var                       | SourceDataFile       | SheetName | Throws_notThrows         | Var_Stage                        | ReconsiderationWB    | Reconsideration_Decision_Justification_details | Reconsideration_Decision_Justification_rowNum |
      | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification                         | 0                                             |
      | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification                         | 1                                             |
      | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification                         | 2                                             |
      | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification                         | 3                                             |
      | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification                         | 4                                             |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-7442:Validating Character Strength in Decision Justification Details <var> for Non Individual Applicant at Reconsideration in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_Decision_Justification_details>" and row <Reconsideration_Decision_Justification_rowNum>
    And user fills the Character Strength
    When user saves Decision Justification
    Then Character Strength field with "<var>" "<Throws_notThrows>" in Decision Justification Details

    Examples:
      | var                       | SourceDataFile       | SheetName | Throws_notThrows         | Var_Stage                        | ReconsiderationWB    | Reconsideration_Decision_Justification_details | Reconsideration_Decision_Justification_rowNum |
      | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification                         | 0                                             |
      | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification                         | 1                                             |
      | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification                         | 2                                             |
      | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification                         | 3                                             |
      | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification                         | 4                                             |

  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-7443:Validating Character Strength in Decision Justification Details <var> for Non Individual Applicant at Reconsideration in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_Decision_Justification_details>" and row <Reconsideration_Decision_Justification_rowNum>
    And user fills the Character Strength
    When user saves Decision Justification
    Then Character Strength field with "<var>" "<Throws_notThrows>" in Decision Justification Details
    Examples:
      | var                       | SourceDataFile       | SheetName | Throws_notThrows         | Var_Stage                        | ReconsiderationWB    | Reconsideration_Decision_Justification_details | Reconsideration_Decision_Justification_rowNum |
      | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification                         | 0                                             |
      | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification                         | 1                                             |
      | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification                         | 2                                             |
      | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification                         | 3                                             |
      | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification                         | 4                                             |

  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-4734:Validating Character Weakness in Decision Justification Details <var> at Reconsideration for individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_default>" and row <Reconsideration_default_rowNum>
    When user enters "<FieldName>" "<var>" in Decision Justification Details
    Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details
    Examples:
      | FieldName          | Loan_Type     | var                       | SourceDataFile       | SheetName | Throws_notThrows         | ErrorMessage | Var_Stage                     | ReconsiderationWB    | Reconsideration_default | Reconsideration_default_rowNum |
      | Character Weakness | Home Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 0                              |
      | Character Weakness | Home Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 1                              |
      | Character Weakness | Home Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 2                              |
      | Character Weakness | Home Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 3                              |
      | Character Weakness | Home Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 4                              |
      | Character Weakness | Home Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 5                              |
      | Character Weakness | Home Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 6                              |
      | Character Weakness | Personal Loan | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 0                              |
      | Character Weakness | Personal Loan | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 1                              |
      | Character Weakness | Personal Loan | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 2                              |
      | Character Weakness | Personal Loan | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 3                              |
      | Character Weakness | Personal Loan | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 4                              |
      | Character Weakness | Personal Loan | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 5                              |
      | Character Weakness | Personal Loan | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 6                              |
      | Character Weakness | Auto Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 0                              |
      | Character Weakness | Auto Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 1                              |
      | Character Weakness | Auto Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 2                              |
      | Character Weakness | Auto Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 3                              |
      | Character Weakness | Auto Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 4                              |
      | Character Weakness | Auto Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 5                              |
      | Character Weakness | Auto Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 6                              |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-7444:Validating Character Weakness in Decision Justification Details <var> at Reconsideration for non individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_default>" and row <Reconsideration_default_rowNum>
    When user enters "<FieldName>" "<var>" in Decision Justification Details
    Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details
    Examples:
      | FieldName          | Loan_Type     | var                       | SourceDataFile       | SheetName | Throws_notThrows         | ErrorMessage | Var_Stage                        | ReconsiderationWB    | Reconsideration_default | Reconsideration_default_rowNum |
      | Character Weakness | Home Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 0                              |
      | Character Weakness | Home Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 1                              |
      | Character Weakness | Home Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 2                              |
      | Character Weakness | Home Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 3                              |
      | Character Weakness | Home Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 4                              |
      | Character Weakness | Home Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 5                              |
      | Character Weakness | Home Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 6                              |
      | Character Weakness | Personal Loan | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 0                              |
      | Character Weakness | Personal Loan | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 1                              |
      | Character Weakness | Personal Loan | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 2                              |
      | Character Weakness | Personal Loan | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 3                              |
      | Character Weakness | Personal Loan | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 4                              |
      | Character Weakness | Personal Loan | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 5                              |
      | Character Weakness | Personal Loan | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 6                              |
      | Character Weakness | Auto Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 0                              |
      | Character Weakness | Auto Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 1                              |
      | Character Weakness | Auto Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 2                              |
      | Character Weakness | Auto Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 3                              |
      | Character Weakness | Auto Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 4                              |
      | Character Weakness | Auto Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 5                              |
      | Character Weakness | Auto Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 6                              |


  @ImplementedBy-piyush.agnihotri
  Scenario Outline: ACAUTOCAS-4735: Validating Capability Strength in Decision Justification Details <var> at Reconsideration for individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_default>" and row <Reconsideration_default_rowNum>
    When user enters "<FieldName>" "<var>" in Decision Justification Details
    Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details
    Examples:
      | FieldName           | Loan_Type     | var                       | SourceDataFile       | SheetName | Throws_notThrows         | ErrorMessage | Var_Stage                     | ReconsiderationWB    | Reconsideration_default | Reconsideration_default_rowNum |
      | Capability Strength | Home Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 0                              |
      | Capability Strength | Home Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 1                              |
      | Capability Strength | Home Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 2                              |
      | Capability Strength | Home Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 3                              |
      | Capability Strength | Home Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 4                              |
      | Capability Strength | Home Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 5                              |
      | Capability Strength | Home Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 6                              |
      | Capability Strength | Personal Loan | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 0                              |
      | Capability Strength | Personal Loan | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 1                              |
      | Capability Strength | Personal Loan | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 2                              |
      | Capability Strength | Personal Loan | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 3                              |
      | Capability Strength | Personal Loan | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 4                              |
      | Capability Strength | Personal Loan | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 5                              |
      | Capability Strength | Personal Loan | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 6                              |
      | Capability Strength | Auto Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 0                              |
      | Capability Strength | Auto Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 1                              |
      | Capability Strength | Auto Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 2                              |
      | Capability Strength | Auto Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 3                              |
      | Capability Strength | Auto Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 4                              |
      | Capability Strength | Auto Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 5                              |
      | Capability Strength | Auto Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 6                              |

  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-7445: Validating Capability Strength in Decision Justification Details <var> at Reconsideration for non individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_default>" and row <Reconsideration_default_rowNum>
    When user enters "<FieldName>" "<var>" in Decision Justification Details
    Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details
    Examples:
      | FieldName           | Loan_Type     | var                       | SourceDataFile       | SheetName | Throws_notThrows         | ErrorMessage | Var_Stage                        | ReconsiderationWB    | Reconsideration_default | Reconsideration_default_rowNum |
      | Capability Strength | Home Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 0                              |
      | Capability Strength | Home Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 1                              |
      | Capability Strength | Home Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 2                              |
      | Capability Strength | Home Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 3                              |
      | Capability Strength | Home Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 4                              |
      | Capability Strength | Home Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 5                              |
      | Capability Strength | Home Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 6                              |
      | Capability Strength | Personal Loan | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 0                              |
      | Capability Strength | Personal Loan | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 1                              |
      | Capability Strength | Personal Loan | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 2                              |
      | Capability Strength | Personal Loan | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 3                              |
      | Capability Strength | Personal Loan | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 4                              |
      | Capability Strength | Personal Loan | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 5                              |
      | Capability Strength | Personal Loan | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 6                              |
      | Capability Strength | Auto Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 0                              |
      | Capability Strength | Auto Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 1                              |
      | Capability Strength | Auto Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 2                              |
      | Capability Strength | Auto Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 3                              |
      | Capability Strength | Auto Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 4                              |
      | Capability Strength | Auto Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 5                              |
      | Capability Strength | Auto Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 6                              |

  @ImplementedBy-atul.mishra
  Scenario Outline: ACAUTOCAS-4736:Validating Capability Weakness in Decision Justification Details <var> at Reconsideration for individual at <Var_Stage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_default>" and row <Reconsideration_default_rowNum>
    When user enters "<FieldName>" "<var>" in Decision Justification Details
    Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details
    Examples:
      | FieldName           | var                       | SourceDataFile       | SheetName | Throws_notThrows         | ErrorMessage | Var_Stage                     | ReconsiderationWB    | Reconsideration_default | Reconsideration_default_rowNum |
      | Capability Weakness | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 0                              |
      | Capability Weakness | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 1                              |
      | Capability Weakness | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 2                              |
      | Capability Weakness | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 3                              |
      | Capability Weakness | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 4                              |
      | Capability Weakness | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 5                              |
      | Capability Weakness | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 6                              |
      | Capability Weakness | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 0                              |
      | Capability Weakness | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 1                              |
      | Capability Weakness | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 2                              |
      | Capability Weakness | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 3                              |
      | Capability Weakness | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 4                              |
      | Capability Weakness | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 5                              |
      | Capability Weakness | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 6                              |
      | Capability Weakness | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 0                              |
      | Capability Weakness | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 1                              |
      | Capability Weakness | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 2                              |
      | Capability Weakness | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 3                              |
      | Capability Weakness | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 4                              |
      | Capability Weakness | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 5                              |
      | Capability Weakness | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 6                              |

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-7446: Validating Capability Weakness in Decision Justification Details <var> at Reconsideration for non individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_default>" and row <Reconsideration_default_rowNum>
    When user enters "<FieldName>" "<var>" in Decision Justification Details
    Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details
    Examples:
      | FieldName           | Loan_Type     | var                       | SourceDataFile       | SheetName | Throws_notThrows         | ErrorMessage | Var_Stage                        | ReconsiderationWB    | Reconsideration_default | Reconsideration_default_rowNum |
      | Capability Weakness | Home Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 0                              |
      | Capability Weakness | Home Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 1                              |
      | Capability Weakness | Home Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 2                              |
      | Capability Weakness | Home Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 3                              |
      | Capability Weakness | Home Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 4                              |
      | Capability Weakness | Home Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 5                              |
      | Capability Weakness | Home Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 6                              |
      | Capability Weakness | Personal Loan | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 0                              |
      | Capability Weakness | Personal Loan | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 1                              |
      | Capability Weakness | Personal Loan | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 2                              |
      | Capability Weakness | Personal Loan | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 3                              |
      | Capability Weakness | Personal Loan | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 4                              |
      | Capability Weakness | Personal Loan | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 5                              |
      | Capability Weakness | Personal Loan | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 6                              |
      | Capability Weakness | Auto Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 0                              |
      | Capability Weakness | Auto Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 1                              |
      | Capability Weakness | Auto Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 2                              |
      | Capability Weakness | Auto Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 3                              |
      | Capability Weakness | Auto Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 4                              |
      | Capability Weakness | Auto Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 5                              |
      | Capability Weakness | Auto Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 6                              |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-4737:Validating Collateral Strength in Decision Justification Details <var> at Reconsideration for individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_default>" and row <Reconsideration_default_rowNum>
    When user enters "<FieldName>" "<var>" in Decision Justification Details
    Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details
    Examples:
      | FieldName           | Loan_Type     | var                       | SourceDataFile       | SheetName | Throws_notThrows         | ErrorMessage | Var_Stage                     | ReconsiderationWB    | Reconsideration_default | Reconsideration_default_rowNum |
      | Collateral Strength | Home Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 0                              |
      | Collateral Strength | Home Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 1                              |
      | Collateral Strength | Home Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 2                              |
      | Collateral Strength | Home Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 3                              |
      | Collateral Strength | Home Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 4                              |
      | Collateral Strength | Home Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 5                              |
      | Collateral Strength | Home Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 6                              |
      | Collateral Strength | Personal Loan | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 0                              |
      | Collateral Strength | Personal Loan | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 1                              |
      | Collateral Strength | Personal Loan | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 2                              |
      | Collateral Strength | Personal Loan | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 3                              |
      | Collateral Strength | Personal Loan | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 4                              |
      | Collateral Strength | Personal Loan | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 5                              |
      | Collateral Strength | Personal Loan | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 6                              |
      | Collateral Strength | Auto Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 0                              |
      | Collateral Strength | Auto Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 1                              |
      | Collateral Strength | Auto Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 2                              |
      | Collateral Strength | Auto Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 3                              |
      | Collateral Strength | Auto Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 4                              |
      | Collateral Strength | Auto Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 5                              |
      | Collateral Strength | Auto Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 6                              |

  @ImplementedBy-tushar.chauhan
  Scenario Outline: ACAUTOCAS-7447:Validating Collateral Strength in Decision Justification Details <var> at Reconsideration for non individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_default>" and row <Reconsideration_default_rowNum>
    When user enters "<FieldName>" "<var>" in Decision Justification Details
    Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details
    Examples:
      | FieldName           | Loan_Type     | var                       | SourceDataFile       | SheetName | Throws_notThrows         | ErrorMessage | Var_Stage                        | ReconsiderationWB    | Reconsideration_default | Reconsideration_default_rowNum |
      | Collateral Strength | Home Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 0                              |
      | Collateral Strength | Home Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 1                              |
      | Collateral Strength | Home Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 2                              |
      | Collateral Strength | Home Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 3                              |
      | Collateral Strength | Home Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 4                              |
      | Collateral Strength | Home Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 5                              |
      | Collateral Strength | Home Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 6                              |
      | Collateral Strength | Personal Loan | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 0                              |
      | Collateral Strength | Personal Loan | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 1                              |
      | Collateral Strength | Personal Loan | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 2                              |
      | Collateral Strength | Personal Loan | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 3                              |
      | Collateral Strength | Personal Loan | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 4                              |
      | Collateral Strength | Personal Loan | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 5                              |
      | Collateral Strength | Personal Loan | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 6                              |
      | Collateral Strength | Auto Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 0                              |
      | Collateral Strength | Auto Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 1                              |
      | Collateral Strength | Auto Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 2                              |
      | Collateral Strength | Auto Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 3                              |
      | Collateral Strength | Auto Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 4                              |
      | Collateral Strength | Auto Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 5                              |
      | Collateral Strength | Auto Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 6                              |

  @ImplementedBy-aryan.jain
  Scenario Outline:ACAUTOCAS-4738: Validating Collateral Weakness in Decision Justification Details <var> at Reconsideration for individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_default>" and row <Reconsideration_default_rowNum>
    When user enters "<FieldName>" "<var>" in Decision Justification Details
    Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details
    Examples:
      | FieldName           | Loan_Type     | var                       | SourceDataFile       | SheetName | Throws_notThrows         | ErrorMessage | Var_Stage                     | ReconsiderationWB    | Reconsideration_default | Reconsideration_default_rowNum |
      | Collateral Weakness | Home Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 0                              |
      | Collateral Weakness | Home Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 1                              |
      | Collateral Weakness | Home Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 2                              |
      | Collateral Weakness | Home Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 3                              |
      | Collateral Weakness | Home Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 4                              |
      | Collateral Weakness | Home Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 5                              |
      | Collateral Weakness | Home Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 6                              |
      | Collateral Weakness | Personal Loan | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 0                              |
      | Collateral Weakness | Personal Loan | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 1                              |
      | Collateral Weakness | Personal Loan | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 2                              |
      | Collateral Weakness | Personal Loan | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 3                              |
      | Collateral Weakness | Personal Loan | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 4                              |
      | Collateral Weakness | Personal Loan | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 5                              |
      | Collateral Weakness | Personal Loan | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 6                              |
      | Collateral Weakness | Auto Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 0                              |
      | Collateral Weakness | Auto Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 1                              |
      | Collateral Weakness | Auto Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 2                              |
      | Collateral Weakness | Auto Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 3                              |
      | Collateral Weakness | Auto Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 4                              |
      | Collateral Weakness | Auto Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 5                              |
      | Collateral Weakness | Auto Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 6                              |

  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-7448: Validating Collateral Weakness in Decision Justification Details <var> at Reconsideration for non individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_default>" and row <Reconsideration_default_rowNum>
    When user enters "<FieldName>" "<var>" in Decision Justification Details
    Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details
    Examples:
      | FieldName           | Loan_Type     | var                       | SourceDataFile       | SheetName | Throws_notThrows         | ErrorMessage | Var_Stage                        | ReconsiderationWB    | Reconsideration_default | Reconsideration_default_rowNum |
      | Collateral Weakness | Home Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 0                              |
      | Collateral Weakness | Home Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 1                              |
      | Collateral Weakness | Home Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 2                              |
      | Collateral Weakness | Home Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 3                              |
      | Collateral Weakness | Home Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 4                              |
      | Collateral Weakness | Home Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 5                              |
      | Collateral Weakness | Home Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 6                              |
      | Collateral Weakness | Personal Loan | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 0                              |
      | Collateral Weakness | Personal Loan | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 1                              |
      | Collateral Weakness | Personal Loan | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 2                              |
      | Collateral Weakness | Personal Loan | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 3                              |
      | Collateral Weakness | Personal Loan | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 4                              |
      | Collateral Weakness | Personal Loan | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 5                              |
      | Collateral Weakness | Personal Loan | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 6                              |
      | Collateral Weakness | Auto Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 0                              |
      | Collateral Weakness | Auto Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 1                              |
      | Collateral Weakness | Auto Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 2                              |
      | Collateral Weakness | Auto Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 3                              |
      | Collateral Weakness | Auto Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 4                              |
      | Collateral Weakness | Auto Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 5                              |
      | Collateral Weakness | Auto Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 6                              |

  @ImplementedBy-aryan.jain
  Scenario Outline:ACAUTOCAS-4739:Validating Executive Summary in Decision Justification Details <var> at Reconsideration for individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_default>" and row <Reconsideration_default_rowNum>
    When user enters "<FieldName>" "<var>" in Decision Justification Details
    Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details
    Examples:
      | FieldName         | Loan_Type     | var                       | SourceDataFile       | SheetName | Throws_notThrows         | ErrorMessage | Var_Stage                     | ReconsiderationWB    | Reconsideration_default | Reconsideration_default_rowNum |
      | Executive Summary | Home Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 0                              |
      | Executive Summary | Home Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 1                              |
      | Executive Summary | Home Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 2                              |
      | Executive Summary | Home Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 3                              |
      | Executive Summary | Home Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 4                              |
      | Executive Summary | Home Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 5                              |
      | Executive Summary | Home Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_hl | reconsideration.xlsx | decision_justification  | 6                              |
      | Executive Summary | Personal Loan | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 0                              |
      | Executive Summary | Personal Loan | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 1                              |
      | Executive Summary | Personal Loan | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 2                              |
      | Executive Summary | Personal Loan | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 3                              |
      | Executive Summary | Personal Loan | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 4                              |
      | Executive Summary | Personal Loan | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 5                              |
      | Executive Summary | Personal Loan | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_pl | reconsideration.xlsx | decision_justification  | 6                              |
      | Executive Summary | Auto Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 0                              |
      | Executive Summary | Auto Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 1                              |
      | Executive Summary | Auto Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 2                              |
      | Executive Summary | Auto Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 3                              |
      | Executive Summary | Auto Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 4                              |
      | Executive Summary | Auto Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 5                              |
      | Executive Summary | Auto Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_individual_mal | reconsideration.xlsx | decision_justification  | 6                              |

  @ImplementedBy-aryan.jain
  Scenario Outline: ACAUTOCAS-7449: Validating Executive Summary in Decision Justification Details <var> at Reconsideration for non individual at <Loan_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user logout from CAS
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Decision Justification details
    And user reads data from the excel file "<ReconsiderationWB>" under sheet "<Reconsideration_default>" and row <Reconsideration_default_rowNum>
    When user enters "<FieldName>" "<var>" in Decision Justification Details
    Then "<FieldName>" field with "<Throws_notThrows>" "<ErrorMessage>" in Decision Justification Details
    Examples:
      | FieldName         | Loan_Type     | var                       | SourceDataFile       | SheetName | Throws_notThrows         | ErrorMessage | Var_Stage                        | ReconsiderationWB    | Reconsideration_default | Reconsideration_default_rowNum |
      | Executive Summary | Home Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 0                              |
      | Executive Summary | Home Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 1                              |
      | Executive Summary | Home Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 2                              |
      | Executive Summary | Home Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 3                              |
      | Executive Summary | Home Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 4                              |
      | Executive Summary | Home Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 5                              |
      | Executive Summary | Home Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_hl | reconsideration.xlsx | decision_justification  | 6                              |
      | Executive Summary | Personal Loan | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 0                              |
      | Executive Summary | Personal Loan | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 1                              |
      | Executive Summary | Personal Loan | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 2                              |
      | Executive Summary | Personal Loan | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 3                              |
      | Executive Summary | Personal Loan | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 4                              |
      | Executive Summary | Personal Loan | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 5                              |
      | Executive Summary | Personal Loan | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_pl | reconsideration.xlsx | decision_justification  | 6                              |
      | Executive Summary | Auto Loan     | valid value               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 0                              |
      | Executive Summary | Auto Loan     | with characters           | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 1                              |
      | Executive Summary | Auto Loan     | with special character    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 2                              |
      | Executive Summary | Auto Loan     | with characters and digit | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 3                              |
      | Executive Summary | Auto Loan     | with spaces               | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 4                              |
      | Executive Summary | Auto Loan     | negative                  | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 5                              |
      | Executive Summary | Auto Loan     | hyphen                    | LoginDetailsCAS.xlsx | LoginData | does not throw any error |              | reconsideration_nonindividual_mal | reconsideration.xlsx | decision_justification  | 6                              |
