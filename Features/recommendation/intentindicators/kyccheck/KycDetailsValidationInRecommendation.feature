@Epic-Recommendation
@AuthoredBy-harshita.nayak
@ReviewedByDEV
@ImplementedBy-tushar.chauhan
@Release2
Feature: Intent Indicators for Kyc Check field validation in Recommendation

  Scenario Outline: ACAUTOCAS-4731:Validating the Kyc check Details for <field_name> in Intent Indicators same as filled details in kyc stage for Individual Applicant at Recommendation in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Intent Indicators kyc check at recommendation stage
    Then Kyc check Details for field "<field_name>" in Intent Indicators at Recommendation should be same as filled details in kyc stage

    Examples:
      | field_name         | SourceDataFile       | SheetName | RowNumber | Var_Stage      |
      | Applicant Role     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Applicant Name     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Decision           | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |
      | Reason             | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation |

  Scenario Outline: ACAUTOCAS-5925:Validating the Kyc check Details for <field_name> in Intent Indicators same as filled details in kyc stage for Individual Applicant at Recommendation in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Intent Indicators kyc check at recommendation stage
    Then Kyc check Details for field "<field_name>" in Intent Indicators at Recommendation should be same as filled details in kyc stage

    Examples:
      | field_name         | SourceDataFile       | SheetName | RowNumber | Var_Stage                    |
      | Applicant Role     | LoginDetailsCAS.xlsx | LoginData | 2         | recommendation_individual_hl |
      | Applicant Name     | LoginDetailsCAS.xlsx | LoginData | 2         | recommendation_individual_hl |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 2         | recommendation_individual_hl |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 2         | recommendation_individual_hl |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 2         | recommendation_individual_hl |
      | Decision           | LoginDetailsCAS.xlsx | LoginData | 2         | recommendation_individual_hl |
      | Reason             | LoginDetailsCAS.xlsx | LoginData | 2         | recommendation_individual_hl |

  Scenario Outline: ACAUTOCAS-5926:Validating the Kyc check Details for <field_name> in Intent Indicators same as filled details in kyc stage for Individual Applicant at Recommendation in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Intent Indicators kyc check at recommendation stage
    Then Kyc check Details for field "<field_name>" in Intent Indicators at Recommendation should be same as filled details in kyc stage

    Examples:
      | field_name         | SourceDataFile       | SheetName | RowNumber | Var_Stage                    |
      | Applicant Role     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Applicant Name     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Decision           | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |
      | Reason             | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_individual_mal |


  Scenario Outline: ACAUTOCAS-5927:Validating the Kyc check Details for <field_name> in Intent Indicators same as filled details in kyc stage for Non Individual Applicant at Recommendation in Home Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Intent Indicators kyc check at recommendation stage
    Then Kyc check Details for field "<field_name>" in Intent Indicators at Recommendation should be same as filled details in kyc stage

    Examples:
      | field_name         | SourceDataFile       | SheetName | RowNumber | Var_Stage                       |
      | Applicant Role     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Applicant Name     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Decision           | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |
      | Reason             | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_hl |

  Scenario Outline: ACAUTOCAS-5928:Validating the Kyc check Details for <field_name> in Intent Indicators same as filled details in kyc stage for Non Individual Applicant at Recommendation in Personal Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Intent Indicators kyc check at recommendation stage
    Then Kyc check Details for field "<field_name>" in Intent Indicators at Recommendation should be same as filled details in kyc stage

    Examples:
      | field_name         | SourceDataFile       | SheetName | RowNumber | Var_Stage                       |
      | Applicant Role     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Applicant Name     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Decision           | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |
      | Reason             | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_pl |

  Scenario Outline: ACAUTOCAS-5929:Validating the Kyc check Details for <field_name> in Intent Indicators same as filled details in kyc stage for Non Individual Applicant at Recommendation in Auto Loan
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user opens an application at "<Var_Stage>" stage from application grid
    When user is on Intent Indicators kyc check at recommendation stage
    Then Kyc check Details for field "<field_name>" in Intent Indicators at Recommendation should be same as filled details in kyc stage

    Examples:
      | field_name         | SourceDataFile       | SheetName | RowNumber | Var_Stage                       |
      | Applicant Role     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Applicant Name     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Application Match  | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Customer Match     | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Negative Checklist | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Decision           | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
      | Reason             | LoginDetailsCAS.xlsx | LoginData | 0         | recommendation_nonindividual_mal |
