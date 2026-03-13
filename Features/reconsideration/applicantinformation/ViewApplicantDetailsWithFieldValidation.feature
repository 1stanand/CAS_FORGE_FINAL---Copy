@Epic-Applicant_Information
@Epic-Reconsideration
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@Release3
@ReviewedByDEV
Feature: Applicant Information Field validation in Reconsideration

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @ImplementedBy-richa.singh
  Scenario Outline: ACAUTOCAS-3568: Validating the view details of Applicant Information is same as filled details in Personal Information
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Applicant Information Details
    And user reads data present in "<field_name>" at Applicant Information
    When user select view details of Applicant Information
    And user reads data present in "<field_name>" at Personal Information
    Then view Details "<field_name>" in Applicant information should be same as filled details in Personal Information

    Examples:
      | field_name         | Var_Stage                         |
      | Name               | reconsideration_individual_hl     |
      | Age                | reconsideration_individual_hl     |
      | Martial Status     | reconsideration_individual_hl     |
      | Name               | reconsideration_individual_pl     |
      | Age                | reconsideration_individual_pl     |
      | Martial Status     | reconsideration_individual_pl     |
      | Name               | reconsideration_individual_mal    |
      | Age                | reconsideration_individual_mal    |
      | Martial Status     | reconsideration_individual_mal    |
      | Institution Name   | reconsideration_nonindividual_hl  |
      | Incorporation Date | reconsideration_nonindividual_hl  |
      | Industry           | reconsideration_nonindividual_hl  |
      | Institution Name   | reconsideration_nonindividual_pl  |
      | Incorporation Date | reconsideration_nonindividual_pl  |
      | Industry           | reconsideration_nonindividual_pl  |
      | Institution Name   | reconsideration_nonindividual_mal |
      | Incorporation Date | reconsideration_nonindividual_mal |
      | Industry           | reconsideration_nonindividual_mal |

  @ImplementedBy-aniket.tripathi
  Scenario Outline: ACAUTOCAS-3568: Validating the applicant details of Applicant Information is same as filled details in Personal Information
    And user opens an application at "<Var_Stage>" stage from application grid
    And user is on Applicant Information Details
    And user reads data present in "<field_name>" at Applicant Information
    When user select view details of Applicant Information
    And user reads data present in "<field_name>" at Personal Information
    Then view Details "<field_name>" in Applicant information should be same as filled details in Personal Information

    Examples:
      | field_name       | Var_Stage                         |
      | Name             | reconsideration_individual_hl     |
      | Neo Cust ID      | reconsideration_individual_hl     |
      | Neo CIF Number   | reconsideration_individual_hl     |
      | Name             | reconsideration_individual_pl     |
      | Neo Cust ID      | reconsideration_individual_pl     |
      | Neo CIF Number   | reconsideration_individual_pl     |
      | Name             | reconsideration_individual_mal    |
      | Neo Cust ID      | reconsideration_individual_mal    |
      | Neo CIF Number   | reconsideration_individual_mal    |
      | Institution Name | reconsideration_nonindividual_hl  |
      | Neo Cust ID      | reconsideration_nonindividual_hl  |
      | Neo CIF Number   | reconsideration_nonindividual_hl  |
      | Institution Name | reconsideration_nonindividual_pl  |
      | Neo Cust ID      | reconsideration_nonindividual_pl  |
      | Neo CIF Number   | reconsideration_nonindividual_pl  |
      | Institution Name | reconsideration_nonindividual_mal |
      | Neo Cust ID      | reconsideration_nonindividual_mal |
      | Neo CIF Number   | reconsideration_nonindividual_mal |

