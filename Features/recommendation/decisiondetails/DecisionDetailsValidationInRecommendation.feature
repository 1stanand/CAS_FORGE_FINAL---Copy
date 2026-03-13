@Epic-Recommendation
@AuthoredBy-harshita.nayak
@ReviewedByDEV
@ImplementedBy-tushar.chauhan
@Release2
Feature: Decision Details field validation in Recommendation


  Scenario Outline: ACAUTOCAS-4720:Validating the <visibility> of <field_name> in Decision Details at Recommendation for Individual applicant in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Decision Details at Recommendation stage
    Then decision details "<field_name>" should be "<visibility>" at Recommendation Stage

    Examples:
      | visibility   | field_name                          | SourceDataFile       | SheetName | RowNumber | Var_Stage                    |
      | editable     | Recommended Amount                  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | Recommended Tenure(Months)          | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | Maximum Recommended Amount          | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | Maximum Recommended Tenure (Months) | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | Special Conditions                  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | Applicable For                      | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | Approval Required                   | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | Special Condition Status Flag       | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | To be met till stage                | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | Decision                            | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | Reason                              | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | Decision Comments                   | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | non-editable | Recommended Interest                | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | non-editable | Policy Rate                         | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | Product Discount                    | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | non-editable | Total Discount                      | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | editable     | Package Discount                    | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |
      | non-editable | Description                         | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_hl |

  Scenario Outline: ACAUTOCAS-5920:Validating the <visibility> of <field_name> in Decision Details at Recommendation for Individual applicant in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Decision Details at Recommendation stage
    Then decision details "<field_name>" should be "<visibility>" at Recommendation Stage

    Examples:
      | visibility   | field_name                          | SourceDataFile       | SheetName | RowNumber | Var_Stage      |
      | editable     | Recommended Amount                  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | Recommended Tenure(Months)          | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | Maximum Recommended Amount          | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | Maximum Recommended Tenure (Months) | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | Special Conditions                  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | Applicable For                      | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | Approval Required                   | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | Special Condition Status Flag       | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | To be met till stage                | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | Decision                            | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | Reason                              | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | Decision Comments                   | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | non-editable | Recommended Interest                | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | non-editable | Policy Rate                         | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | Product Discount                    | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | non-editable | Total Discount                      | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | editable     | Package Discount                    | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | non-editable | Description                         | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |

  Scenario Outline: ACAUTOCAS-5921:Validating the <visibility> of <field_name> in Decision Details at Recommendation for Individual applicant in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Decision Details at Recommendation stage
    Then decision details "<field_name>" should be "<visibility>" at Recommendation Stage

    Examples:
      | visibility   | field_name                          | SourceDataFile       | SheetName | RowNumber | Var_Stage                    |
      | editable     | Recommended Amount                  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | Recommended Tenure(Months)          | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | Maximum Recommended Amount          | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | Maximum Recommended Tenure (Months) | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | Special Conditions                  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | Applicable For                      | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | Approval Required                   | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | Special Condition Status Flag       | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | To be met till stage                | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | Decision                            | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | Reason                              | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | Decision Comments                   | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | non-editable | Recommended Interest                | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | non-editable | Policy Rate                         | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | Product Discount                    | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | non-editable | Total Discount                      | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | editable     | Package Discount                    | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | non-editable | Description                         | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |

  Scenario Outline: ACAUTOCAS-5922:Validating the <visibility> of <field_name> in Decision Details at Recommendation for NonIndividual applicant in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Decision Details at Recommendation stage
    Then decision details "<field_name>" should be "<visibility>" at Recommendation Stage

    Examples:
      | visibility   | field_name                          | SourceDataFile       | SheetName | RowNumber | Var_Stage                       |
      | editable     | Recommended Amount                  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | Recommended Tenure(Months)          | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | Maximum Recommended Amount          | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | Maximum Recommended Tenure (Months) | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | Special Conditions                  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | Applicable For                      | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | Approval Required                   | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | Special Condition Status Flag       | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | To be met till stage                | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | Decision                            | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | Reason                              | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | Decision Comments                   | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | non-editable | Recommended Interest                | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | non-editable | Policy Rate                         | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | Product Discount                    | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | non-editable | Total Discount                      | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | editable     | Package Discount                    | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | non-editable | Description                         | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |

  Scenario Outline: ACAUTOCAS-5923:Validating the <visibility> of <field_name> in Decision Details at Recommendation for NonIndividual applicant in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Decision Details at Recommendation stage
    Then decision details "<field_name>" should be "<visibility>" at Recommendation Stage
    Examples:
      | visibility   | field_name                          | SourceDataFile       | SheetName | RowNumber | Var_Stage                       |
      | editable     | Recommended Amount                  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | Recommended Tenure(Months)          | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | Maximum Recommended Amount          | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | Maximum Recommended Tenure (Months) | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | Special Conditions                  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | Applicable For                      | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | Approval Required                   | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | Special Condition Status Flag       | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | To be met till stage                | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | Decision                            | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | Reason                              | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | Decision Comments                   | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | non-editable | Recommended Interest                | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | non-editable | Policy Rate                         | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | Product Discount                    | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | non-editable | Total Discount                      | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | editable     | Package Discount                    | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | non-editable | Description                         | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |

  Scenario Outline: ACAUTOCAS-5924:Validating the <visibility> of <field_name> in Decision Details at Recommendation for NonIndividual applicant in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Decision Details at Recommendation stage
    Then decision details "<field_name>" should be "<visibility>" at Recommendation Stage
    Examples:
      | visibility   | field_name                          | SourceDataFile       | SheetName | RowNumber | Var_Stage                       |
      | editable     | Recommended Amount                  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | Recommended Tenure(Months)          | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | Maximum Recommended Amount          | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | Maximum Recommended Tenure (Months) | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | Special Conditions                  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | Applicable For                      | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | Approval Required                   | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | Special Condition Status Flag       | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | To be met till stage                | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | Decision                            | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | Reason                              | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | Decision Comments                   | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | non-editable | Recommended Interest                | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | non-editable | Policy Rate                         | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | Product Discount                    | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | non-editable | Total Discount                      | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | editable     | Package Discount                    | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | non-editable | Description                         | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |

