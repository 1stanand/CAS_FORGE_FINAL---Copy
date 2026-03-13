@Epic-Recommendation
@AuthoredBy-harshita.nayak
@ReviewedBy-None
@ImplementedBy-bhanu.singh1
@Release3
@ReviewedByDEV
Feature: Loan information Sourcing Details Field Validation in Recommendation
  #FeatureID-ACAUTOCAS-575
  Scenario Outline: ACAUTOCAS-6243: Validating the <visibility> of <FieldName> in Sourcing Details in loan information for Individual Applicant Type at Recommendation in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Loan information sourcing details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                              | visibility   | SourceDataFile       | SheetName | RowNumber | Var_Stage      |
      | Branch                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Channel                                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Product                                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Scheme                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Amount Requested                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Tenure                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Application Purpose                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Sourcing RM Name                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Date of Receipt                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Application Form Number                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Lead Number-CRM                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Application Type                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Rate                                   | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Application Purpose Description        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Priority                               | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Distance From Sourcing Branch (in Kms) | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Credit Officer                         | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Application Creation Date              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Application ID                         | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Product Processor                      | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Branch Risk Category                   | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Product Type                           | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Tenure In                              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Reporting Supervisor Name              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | CRE                                    | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | DST                                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |

#FeatureID-ACAUTOCAS-575
  Scenario Outline: ACAUTOCAS-6244: Validating the <visibility> of <FieldName> in Sourcing Details in loan information for Individual Applicant Type at Recommendation in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Loan information sourcing details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                              | visibility   | SourceDataFile       | SheetName | RowNumber | Var_Stage                    |
      | Branch                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Amount Requested                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Tenure                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Application Purpose                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Sourcing RM Name                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Date of Receipt                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Application Form Number                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Lead Number-CRM                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Application Type                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Rate                                   | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Application Purpose Description        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Priority                               | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Distance From Sourcing Branch (in Kms) | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Credit Officer                         | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Application Creation Date              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Application ID                         | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Product Processor                      | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Branch Risk Category                   | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Product Type                           | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Tenure In                              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | Reporting Supervisor Name              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | CRE                                    | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | DST                                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |

    #FeatureID-ACAUTOCAS-575
  Scenario Outline: ACAUTOCAS-6245: Validating the <visibility> of <FieldName> in Sourcing Details in loan information for Individual Applicant Type at Recommendation in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Loan information sourcing details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                              | visibility   | SourceDataFile       | SheetName | RowNumber | Var_Stage                    |
      | Branch                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Channel                                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Product                                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Scheme                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Amount Requested                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Tenure                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Application Purpose                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Sourcing RM Name                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Date of Receipt                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Application Form Number                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Lead Number-CRM                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Application Type                       | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Rate                                   | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Application Purpose Description        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Priority                               | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Distance From Sourcing Branch (in Kms) | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Credit Officer                         | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Application Creation Date              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Application ID                         | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Product Processor                      | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Branch Risk Category                   | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Product Type                           | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Tenure In                              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Reporting Supervisor Name              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | CRE                                    | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | DST                                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |

    #FeatureID-ACAUTOCAS-575
  Scenario Outline: ACAUTOCAS-6246: Validating the <visibility> of <FieldName> in Sourcing Details in loan information for Non-Individual Applicant Type at Recommendation in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Loan information sourcing details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                              | visibility   | SourceDataFile       | SheetName | RowNumber | Var_Stage                       |
      | Branch                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Channel                                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Product                                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Scheme                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Amount Requested                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Tenure                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Application Purpose                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Sourcing RM Name                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Date of Receipt                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Application Form Number                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Lead Number-CRM                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Application Type                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Rate                                   | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Application Purpose Description        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Priority                               | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Distance From Sourcing Branch (in Kms) | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Credit Officer                         | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Application Creation Date              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Application ID                         | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Product Processor                      | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Branch Risk Category                   | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Product Type                           | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Tenure In                              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Reporting Supervisor Name              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | CRE                                    | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | DST                                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |

#FeatureID-ACAUTOCAS-575
  Scenario Outline: ACAUTOCAS-6247: Validating the <visibility> of <FieldName> in Sourcing Details in loan information for Non-Individual Applicant Type at Recommendation in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Loan information sourcing details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                              | visibility   | SourceDataFile       | SheetName | RowNumber | Var_Stage                       |
      | Branch                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Amount Requested                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Tenure                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Application Purpose                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Sourcing RM Name                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Date of Receipt                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Application Form Number                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Lead Number-CRM                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Application Type                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Rate                                   | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Application Purpose Description        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Priority                               | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Distance From Sourcing Branch (in Kms) | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Credit Officer                         | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Application Creation Date              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Application ID                         | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Product Processor                      | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Branch Risk Category                   | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Product Type                           | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Tenure In                              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Reporting Supervisor Name              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | CRE                                    | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | DST                                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |

    #FeatureID-ACAUTOCAS-575
  Scenario Outline: ACAUTOCAS-6248: Validating the <visibility> of <FieldName> in Sourcing Details in loan information for Non-Individual Applicant Type at Recommendation in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Loan information sourcing details
    Then "<FieldName>" field should be "<visibility>"

    Examples:
      | FieldName                              | visibility   | SourceDataFile       | SheetName | RowNumber | Var_Stage                       |
      | Branch                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Channel                                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Product                                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Scheme                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Amount Requested                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Tenure                                 | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Application Purpose                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Sourcing RM Name                       | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Date of Receipt                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Application Form Number                | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Lead Number-CRM                        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Application Type                       | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Rate                                   | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Application Purpose Description        | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Priority                               | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Distance From Sourcing Branch (in Kms) | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Credit Officer                         | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Application Creation Date              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Application ID                         | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Product Processor                      | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Branch Risk Category                   | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Product Type                           | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Tenure In                              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Reporting Supervisor Name              | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | CRE                                    | non-editable | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | DST                                    | editable     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
























