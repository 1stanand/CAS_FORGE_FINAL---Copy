@Epic-Recommendation
@ReviewedBy-tushar.chauhan
@AuthoredBy-harshita.nayak
@Release3
@ImplementedBy-aniket.tripathi
@ReviewedByDEV

Feature: Exposure Details Field Validation in Recommendation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-600
  Scenario Outline: ACAUTOCAS-4728: Re-initiate Exposure Details in Recommendation
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Exposure details
    When user Re-initiate Exposure Details with rerun
    Then Exposure Details Re-initiate execute successfully

    Examples:
      | Var_Stage                        |
      | recommendation_individual_hl     |
      | recommendation                   |
      | recommendation_individual_mal    |
      | recommendation_nonindividual_hl  |
      | recommendation_nonindividual_mal |
      | recommendation_nonindividual_pl  |


   #FeatureID-ACAUTOCAS-600
  Scenario Outline: ACAUTOCAS-4729: Re-initiate ALL Exposure Details in Recommendation
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Exposure details
    When user Re-initiate ALL Exposure Details with rerun
    Then Exposure Details Re-initiate execute successfully

    Examples:
      | Var_Stage                        |
      | recommendation_individual_hl     |
      | recommendation_individual_mal    |
      | recommendation_nonindividual_hl  |
      | recommendation_nonindividual_mal |

    @LoggedBug
    Examples:
      | Var_Stage                       |
      | recommendation                  |
      | recommendation_nonindividual_pl |


  #FeatureID-ACAUTOCAS-601
  Scenario Outline: ACAUTOCAS-4730: While Re-initiate Exposure Details able to View History <Field_Name> details for Individual in Recommendation for <Loan_Type>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Exposure details
    When user Re-initiate Exposure Details with rerun
    Then able to View History <Field_Name> details

    Examples:
      | Field_Name                  | Loan_Type | Var_Stage                     |
      | Initiated For All Party     | Home Loan | recommendation_individual_hl  |
      | Liability Exposure          | Home Loan | recommendation_individual_hl  |
      | Total Exposure Amount       | Home Loan | recommendation_individual_hl  |
      | Customer Name               | Home Loan | recommendation_individual_hl  |
      | Applicant Type              | Home Loan | recommendation_individual_hl  |
      | Party Level Exposure Amount | Home Loan | recommendation_individual_hl  |
      | Creation Timestamp          | Home Loan | recommendation_individual_hl  |
      | Initiated For All Party     | Auto Loan | recommendation_individual_mal |
      | Liability Exposure          | Auto Loan | recommendation_individual_mal |
      | Total Exposure Amount       | Auto Loan | recommendation_individual_mal |
      | Customer Name               | Auto Loan | recommendation_individual_mal |
      | Applicant Type              | Auto Loan | recommendation_individual_mal |
      | Party Level Exposure Amount | Auto Loan | recommendation_individual_mal |
      | Creation Timestamp          | Auto Loan | recommendation_individual_mal |

    @LoggedBug
    Examples:
      | Field_Name                  | Loan_Type     | Var_Stage      |
      | Initiated For All Party     | Personal Loan | recommendation |
      | Liability Exposure          | Personal Loan | recommendation |
      | Total Exposure Amount       | Personal Loan | recommendation |
      | Customer Name               | Personal Loan | recommendation |
      | Applicant Type              | Personal Loan | recommendation |
      | Party Level Exposure Amount | Personal Loan | recommendation |
      | Creation Timestamp          | Personal Loan | recommendation |

  #FeatureID-ACAUTOCAS-601
  Scenario Outline: ACAUTOCAS-6255:  While Re-initiate Exposure Details able to View History <Field_Name> details for Non-Individual in Recommendation for <Loan_Type>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Exposure details
    When user Re-initiate Exposure Details with rerun
    Then able to View History <Field_Name> details

    Examples:
      | Field_Name                  | Loan_Type | Var_Stage                        |
      | Initiated For All Party     | Home Loan | recommendation_nonindividual_hl  |
      | Liability Exposure          | Home Loan | recommendation_nonindividual_hl  |
      | Total Exposure Amount       | Home Loan | recommendation_nonindividual_hl  |
      | Customer Name               | Home Loan | recommendation_nonindividual_hl  |
      | Applicant Type              | Home Loan | recommendation_nonindividual_hl  |
      | Party Level Exposure Amount | Home Loan | recommendation_nonindividual_hl  |
      | Creation Timestamp          | Home Loan | recommendation_nonindividual_hl  |
      | Initiated For All Party     | Auto Loan | recommendation_nonindividual_mal |
      | Liability Exposure          | Auto Loan | recommendation_nonindividual_mal |
      | Total Exposure Amount       | Auto Loan | recommendation_nonindividual_mal |
      | Customer Name               | Auto Loan | recommendation_nonindividual_mal |
      | Applicant Type              | Auto Loan | recommendation_nonindividual_mal |
      | Party Level Exposure Amount | Auto Loan | recommendation_nonindividual_mal |
      | Creation Timestamp          | Auto Loan | recommendation_nonindividual_mal |

    @LoggedBug
    Examples:
      | Field_Name                  | Loan_Type     | Var_Stage                       |
      | Initiated For All Party     | Personal Loan | recommendation_nonindividual_pl |
      | Liability Exposure          | Personal Loan | recommendation_nonindividual_pl |
      | Total Exposure Amount       | Personal Loan | recommendation_nonindividual_pl |
      | Customer Name               | Personal Loan | recommendation_nonindividual_pl |
      | Applicant Type              | Personal Loan | recommendation_nonindividual_pl |
      | Party Level Exposure Amount | Personal Loan | recommendation_nonindividual_pl |
      | Creation Timestamp          | Personal Loan | recommendation_nonindividual_pl |

  Scenario Outline: ACAUTOCAS-4843: While Re-initiate ALL Exposure Details able to View History <Field_Name> details for Individual in Recommendation for <Loan_Type>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Exposure details
    When user Re-initiate ALL Exposure Details with rerun
    Then able to View History <Field_Name> details

    Examples:
      | Field_Name                  | Loan_Type | Var_Stage                     |
      | Initiated For All Party     | Home Loan | recommendation_individual_hl  |
      | Liability Exposure          | Home Loan | recommendation_individual_hl  |
      | Total Exposure Amount       | Home Loan | recommendation_individual_hl  |
      | Customer Name               | Home Loan | recommendation_individual_hl  |
      | Applicant Type              | Home Loan | recommendation_individual_hl  |
      | Party Level Exposure Amount | Home Loan | recommendation_individual_hl  |
      | Creation Timestamp          | Home Loan | recommendation_individual_hl  |
      | Initiated For All Party     | Auto Loan | recommendation_individual_mal |
      | Liability Exposure          | Auto Loan | recommendation_individual_mal |
      | Total Exposure Amount       | Auto Loan | recommendation_individual_mal |
      | Customer Name               | Auto Loan | recommendation_individual_mal |
      | Applicant Type              | Auto Loan | recommendation_individual_mal |
      | Party Level Exposure Amount | Auto Loan | recommendation_individual_mal |
      | Creation Timestamp          | Auto Loan | recommendation_individual_mal |

    @LoggedBug
    Examples:
      | Field_Name                  | Loan_Type     | Var_Stage      |
      | Initiated For All Party     | Personal Loan | recommendation |
      | Liability Exposure          | Personal Loan | recommendation |
      | Total Exposure Amount       | Personal Loan | recommendation |
      | Customer Name               | Personal Loan | recommendation |
      | Applicant Type              | Personal Loan | recommendation |
      | Party Level Exposure Amount | Personal Loan | recommendation |
      | Creation Timestamp          | Personal Loan | recommendation |


  Scenario Outline: ACAUTOCAS-4844: While Re-initiate ALL Exposure Details able to View History <Field_Name> details for Non-Individual in Recommendation for <Loan_Type>
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Exposure details
    When user Re-initiate ALL Exposure Details with rerun
    Then able to View History <Field_Name> details

    Examples:
      | Field_Name                  | Loan_Type | Var_Stage                        |
      | Initiated For All Party     | Home Loan | recommendation_nonindividual_hl  |
      | Liability Exposure          | Home Loan | recommendation_nonindividual_hl  |
      | Total Exposure Amount       | Home Loan | recommendation_nonindividual_hl  |
      | Customer Name               | Home Loan | recommendation_nonindividual_hl  |
      | Applicant Type              | Home Loan | recommendation_nonindividual_hl  |
      | Party Level Exposure Amount | Home Loan | recommendation_nonindividual_hl  |
      | Creation Timestamp          | Home Loan | recommendation_nonindividual_hl  |
      | Initiated For All Party     | Auto Loan | recommendation_nonindividual_mal |
      | Liability Exposure          | Auto Loan | recommendation_nonindividual_mal |
      | Total Exposure Amount       | Auto Loan | recommendation_nonindividual_mal |
      | Customer Name               | Auto Loan | recommendation_nonindividual_mal |
      | Applicant Type              | Auto Loan | recommendation_nonindividual_mal |
      | Party Level Exposure Amount | Auto Loan | recommendation_nonindividual_mal |
      | Creation Timestamp          | Auto Loan | recommendation_nonindividual_mal |

    @LoggedBug
    Examples:
      | Field_Name                  | Loan_Type     | Var_Stage                       |
      | Initiated For All Party     | Personal Loan | recommendation_nonindividual_pl |
      | Liability Exposure          | Personal Loan | recommendation_nonindividual_pl |
      | Total Exposure Amount       | Personal Loan | recommendation_nonindividual_pl |
      | Customer Name               | Personal Loan | recommendation_nonindividual_pl |
      | Applicant Type              | Personal Loan | recommendation_nonindividual_pl |
      | Party Level Exposure Amount | Personal Loan | recommendation_nonindividual_pl |
      | Creation Timestamp          | Personal Loan | recommendation_nonindividual_pl |

