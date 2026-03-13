@Epic-Reconsideration
@AuthoredBy-harshita.nayak
@ReviewedByDEV
@ImplementedBy-tushar.chauhan
@Release2
Feature: Exposure Details Field Validation in Reconsideration
  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-742
  Scenario Outline: ACAUTOCAS-4740:Re-initiate Exposure Details in Reconsideration
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Exposure Details in Reconsideration
    When user Re-initiate Exposure Details with rerun in Reconsideration
    Then Exposure Details Re-initiate execute successfully in Reconsideration

    Examples:
      | Var_Stage                        |
      | reconsideration_individual_hl    |
      | reconsideration_individual_mal    |
      | reconsideration_nonindividual_hl |
      | reconsideration_nonindividual_mal |
      | reconsideration_individual_pl    |
      | reconsideration_nonindividual_pl |

   #FeatureID-ACAUTOCAS-742
  Scenario Outline: ACAUTOCAS-4741:Re-initiate ALL Exposure Details in Reconsideration
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Exposure Details in Reconsideration
    When user Re-initiate ALL Exposure Details with rerun in Reconsideration
    Then Exposure Details Re-initiate execute successfully in Reconsideration

    @LoggedBug
    Examples:
      | Var_Stage                        |
      | reconsideration_individual_pl    |
      | reconsideration_nonindividual_pl |

    Examples:
      | Var_Stage                        |
      | reconsideration_individual_hl    |
      | reconsideration_individual_mal    |
      | reconsideration_nonindividual_hl |
      | reconsideration_nonindividual_mal |

  #FeatureID-ACAUTOCAS-743
  Scenario Outline: ACAUTOCAS-4742:While Re-initiate Exposure Details able to View History <Field_Name> details for <Applicant> in Reconsideration
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Exposure Details in Reconsideration
    When user Re-initiate Exposure Details with rerun in Reconsideration
    Then able to View History <Field_Name> details in Reconsideration

    @LoggedBug
    Examples:
      | Applicant  | Field_Name                  | Var_Stage                     |
      | Individual | Initiated For All Party     | reconsideration_individual_pl |
      | Individual | Liability Exposure          | reconsideration_individual_pl |
      | Individual | Total Exposure Amount       | reconsideration_individual_pl |
      | Individual | Customer Name               | reconsideration_individual_pl |
      | Individual | Applicant Type              | reconsideration_individual_pl |
      | Individual | Party Level Exposure Amount | reconsideration_individual_pl |
      | Individual | Creation Timestamp          | reconsideration_individual_pl |

    Examples:
      | Applicant  | Field_Name                  | Var_Stage                     |
      | Individual | Initiated For All Party     | reconsideration_individual_hl |
      | Individual | Liability Exposure          | reconsideration_individual_hl |
      | Individual | Total Exposure Amount       | reconsideration_individual_hl |
      | Individual | Customer Name               | reconsideration_individual_hl |
      | Individual | Applicant Type              | reconsideration_individual_hl |
      | Individual | Party Level Exposure Amount | reconsideration_individual_hl |
      | Individual | Creation Timestamp          | reconsideration_individual_hl |
      | Individual | Initiated For All Party     | reconsideration_individual_mal |
      | Individual | Liability Exposure          | reconsideration_individual_mal |
      | Individual | Total Exposure Amount       | reconsideration_individual_mal |
      | Individual | Customer Name               | reconsideration_individual_mal |
      | Individual | Applicant Type              | reconsideration_individual_mal |
      | Individual | Party Level Exposure Amount | reconsideration_individual_mal |
      | Individual | Creation Timestamp          | reconsideration_individual_mal |

  #FeatureID-ACAUTOCAS-743
  Scenario Outline: ACAUTOCAS-4742:While Re-initiate Exposure Details able to View History <Field_Name> details for <Applicant> in Reconsideration
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Exposure Details in Reconsideration
    When user Re-initiate Exposure Details with rerun in Reconsideration
    Then able to View History <Field_Name> details in Reconsideration

    @LoggedBug
    Examples:
      | Applicant      | Field_Name                  | Var_Stage                        |
      | Non-Individual | Initiated For All Party     | reconsideration_nonindividual_pl |
      | Non-Individual | Liability Exposure          | reconsideration_nonindividual_pl |
      | Non-Individual | Total Exposure Amount       | reconsideration_nonindividual_pl |
      | Non-Individual | Customer Name               | reconsideration_nonindividual_pl |
      | Non-Individual | Applicant Type              | reconsideration_nonindividual_pl |
      | Non-Individual | Party Level Exposure Amount | reconsideration_nonindividual_pl |
      | Non-Individual | Creation Timestamp          | reconsideration_nonindividual_pl |

    Examples:
      | Applicant      | Field_Name                  | Var_Stage                        |
      | Non-Individual | Initiated For All Party     | reconsideration_nonindividual_hl |
      | Non-Individual | Liability Exposure          | reconsideration_nonindividual_hl |
      | Non-Individual | Total Exposure Amount       | reconsideration_nonindividual_hl |
      | Non-Individual | Customer Name               | reconsideration_nonindividual_hl |
      | Non-Individual | Applicant Type              | reconsideration_nonindividual_hl |
      | Non-Individual | Party Level Exposure Amount | reconsideration_nonindividual_hl |
      | Non-Individual | Creation Timestamp          | reconsideration_nonindividual_hl |
      | Non-Individual | Initiated For All Party     | reconsideration_nonindividual_mal |
      | Non-Individual | Liability Exposure          | reconsideration_nonindividual_mal |
      | Non-Individual | Total Exposure Amount       | reconsideration_nonindividual_mal |
      | Non-Individual | Customer Name               | reconsideration_nonindividual_mal |
      | Non-Individual | Applicant Type              | reconsideration_nonindividual_mal |
      | Non-Individual | Party Level Exposure Amount | reconsideration_nonindividual_mal |
      | Non-Individual | Creation Timestamp          | reconsideration_nonindividual_mal |

  Scenario Outline: ACAUTOCAS-4841:While Re-initiate ALL Exposure Details able to View History <Field_Name> details for Individual in Reconsideration
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Exposure Details in Reconsideration
    When user Re-initiate ALL Exposure Details with rerun in Reconsideration
    Then able to View History <Field_Name> details in Reconsideration

    @LoggedBug
    Examples:
      | Field_Name                  | Loan_Type     | Var_Stage                     |
      | Initiated For All Party     | Personal Loan | reconsideration_individual_pl |
      | Liability Exposure          | Personal Loan | reconsideration_individual_pl |
      | Total Exposure Amount       | Personal Loan | reconsideration_individual_pl |
      | Customer Name               | Personal Loan | reconsideration_individual_pl |
      | Applicant Type              | Personal Loan | reconsideration_individual_pl |
      | Party Level Exposure Amount | Personal Loan | reconsideration_individual_pl |
      | Creation Timestamp          | Personal Loan | reconsideration_individual_pl |

    Examples:
      | Field_Name                  | Loan_Type | Var_Stage                     |
      | Initiated For All Party     | Home Loan | reconsideration_individual_hl |
      | Liability Exposure          | Home Loan | reconsideration_individual_hl |
      | Total Exposure Amount       | Home Loan | reconsideration_individual_hl |
      | Customer Name               | Home Loan | reconsideration_individual_hl |
      | Applicant Type              | Home Loan | reconsideration_individual_hl |
      | Party Level Exposure Amount | Home Loan | reconsideration_individual_hl |
      | Creation Timestamp          | Home Loan | reconsideration_individual_hl |
      | Initiated For All Party     | Auto Loan | reconsideration_individual_mal |
      | Liability Exposure          | Auto Loan | reconsideration_individual_mal |
      | Total Exposure Amount       | Auto Loan | reconsideration_individual_mal |
      | Customer Name               | Auto Loan | reconsideration_individual_mal |
      | Applicant Type              | Auto Loan | reconsideration_individual_mal |
      | Party Level Exposure Amount | Auto Loan | reconsideration_individual_mal |
      | Creation Timestamp          | Auto Loan | reconsideration_individual_mal |


  Scenario Outline: ACAUTOCAS-4842:While Re-initiate ALL Exposure Details able to View History <Field_Name> details for Non-Individual in Reconsideration
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Exposure Details in Reconsideration
    When user Re-initiate ALL Exposure Details with rerun in Reconsideration
    Then able to View History <Field_Name> details in Reconsideration

    @LoggedBug
    Examples:
      | Field_Name                  | Loan_Type     | Var_Stage                        |
      | Initiated For All Party     | Personal Loan | reconsideration_nonindividual_pl |
      | Liability Exposure          | Personal Loan | reconsideration_nonindividual_pl |
      | Total Exposure Amount       | Personal Loan | reconsideration_nonindividual_pl |
      | Customer Name               | Personal Loan | reconsideration_nonindividual_pl |
      | Applicant Type              | Personal Loan | reconsideration_nonindividual_pl |
      | Party Level Exposure Amount | Personal Loan | reconsideration_nonindividual_pl |
      | Creation Timestamp          | Personal Loan | reconsideration_nonindividual_pl |

    Examples:
      | Field_Name                  | Loan_Type | Var_Stage                        |
      | Initiated For All Party     | Home Loan | reconsideration_nonindividual_hl |
      | Liability Exposure          | Home Loan | reconsideration_nonindividual_hl |
      | Total Exposure Amount       | Home Loan | reconsideration_nonindividual_hl |
      | Customer Name               | Home Loan | reconsideration_nonindividual_hl |
      | Applicant Type              | Home Loan | reconsideration_nonindividual_hl |
      | Party Level Exposure Amount | Home Loan | reconsideration_nonindividual_hl |
      | Creation Timestamp          | Home Loan | reconsideration_nonindividual_hl |
      | Initiated For All Party     | Auto Loan | reconsideration_nonindividual_mal |
      | Liability Exposure          | Auto Loan | reconsideration_nonindividual_mal |
      | Total Exposure Amount       | Auto Loan | reconsideration_nonindividual_mal |
      | Customer Name               | Auto Loan | reconsideration_nonindividual_mal |
      | Applicant Type              | Auto Loan | reconsideration_nonindividual_mal |
      | Party Level Exposure Amount | Auto Loan | reconsideration_nonindividual_mal |
      | Creation Timestamp          | Auto Loan | reconsideration_nonindividual_mal |

