@Epic-Recommendation
@Epic-Applicant_Information
@AuthoredBy-harshita.nayak
@ReviewedByDEV
@ImplementedBy-tushar.chauhan
@Release3
Feature: Applicant Information Field validation in Recommendation

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #FeatureID-ACAUTOCAS-584
  Scenario Outline: ACAUTOCAS-10170: Validating the view details of Applicant Information is same as filled details in Personal Information with Home Loan for Individual
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Applicant Information Details
    And user reads data present in "<field_name>" at Applicant Information
    When user select view details of Applicant Information
    And user reads data present in "<field_name>" at Personal Information
    Then view Details "<field_name>" in Applicant information should be same as filled details in Personal Information

    Examples:
      | field_name     | Var_Stage                    |
      | Name           | recommendation_individual_hl |
      | Age            | recommendation_individual_hl |
      | Martial Status | recommendation_individual_hl |
 #FeatureID-ACAUTOCAS-584
  Scenario Outline: ACAUTOCAS-10171: Validating the view details of Applicant Information is same as filled details in Personal Information with Personal Loan for Individual
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Applicant Information Details
    And user reads data present in "<field_name>" at Applicant Information
    When user select view details of Applicant Information
    And user reads data present in "<field_name>" at Personal Information
    Then view Details "<field_name>" in Applicant information should be same as filled details in Personal Information

    Examples:
      | field_name     | Var_Stage                    |
      | Name           | recommendation_individual_pl |
      | Age            | recommendation_individual_pl |
      | Martial Status | recommendation_individual_pl |
 #FeatureID-ACAUTOCAS-584
  Scenario Outline: ACAUTOCAS-10172: Validating the view details of Applicant Information is same as filled details in Personal Information with Auto Loan for Individual
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Applicant Information Details
    And user reads data present in "<field_name>" at Applicant Information
    When user select view details of Applicant Information
    And user reads data present in "<field_name>" at Personal Information
    Then view Details "<field_name>" in Applicant information should be same as filled details in Personal Information

    Examples:
      | field_name     | Var_Stage                    |
      | Name           | recommendation_individual_mal |
      | Age            | recommendation_individual_mal |
      | Martial Status | recommendation_individual_mal |

 #FeatureID-ACAUTOCAS-584
  Scenario Outline: ACAUTOCAS-10173: Validating the applicant details of Applicant Information is same as filled details in Personal Information with Home Loan for Individual
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Applicant Information Details
    And user reads data present in "<field_name>" at Applicant Information
    When user select view details of Applicant Information
    And user reads data present in "<field_name>" at Personal Information
    Then view Details "<field_name>" in Applicant information should be same as filled details in Personal Information

    Examples:
      | field_name     | Var_Stage                    |
      | Name           | recommendation_individual_hl |
      | Neo Cust ID    | recommendation_individual_hl |
      | Neo CIF Number | recommendation_individual_hl |
 #FeatureID-ACAUTOCAS-584
  Scenario Outline: ACAUTOCAS-10174: Validating the applicant details of Applicant Information is same as filled details in Personal Information with Personal Loan for Individual
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Applicant Information Details
    And user reads data present in "<field_name>" at Applicant Information
    When user select view details of Applicant Information
    And user reads data present in "<field_name>" at Personal Information
    Then view Details "<field_name>" in Applicant information should be same as filled details in Personal Information

    Examples:
      | field_name     | Var_Stage                    |
      | Name           | recommendation_individual_pl |
      | Neo Cust ID    | recommendation_individual_pl |
      | Neo CIF Number | recommendation_individual_pl |
 #FeatureID-ACAUTOCAS-584
  Scenario Outline: ACAUTOCAS-10175: Validating the applicant details of Applicant Information is same as filled details in Personal Information with Auto Loan for Individual
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Applicant Information Details
    And user reads data present in "<field_name>" at Applicant Information
    When user select view details of Applicant Information
    And user reads data present in "<field_name>" at Personal Information
    Then view Details "<field_name>" in Applicant information should be same as filled details in Personal Information

    Examples:
      | field_name     | Var_Stage                    |
      | Name           | recommendation_individual_mal |
      | Neo Cust ID    | recommendation_individual_mal |
      | Neo CIF Number | recommendation_individual_mal |


