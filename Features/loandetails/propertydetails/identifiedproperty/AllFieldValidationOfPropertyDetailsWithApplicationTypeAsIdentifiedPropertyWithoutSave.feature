@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ImplementedBy-harshprit.kumar
@ReviewedByDEV
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-4169
Feature:All Field Validation Of Property Details With Application Type As Identified Property Without Save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @Release1
  Scenario Outline: ACAUTOCAS-4830: Entering <Validity> <Field_Name> <Validity_Reason> in property details without save
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user selects application type as identified property
    And user selects collateral sub type as ready property
    When user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in Property Details
    Then application "<Throws_notThrows>" "<With_Error_Message>" around "<Field_Name>" in property details

    Examples:
      | Validity | Field_Name                | Validity_Reason                       | Throws_notThrows                   | With_Error_Message                                                              | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | invalid  | Property Reference Number | with_special_characters_except_hyphen | throws an error with error message | Only alphanumeric characters, hyphen and spaces between characters are allowed. | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 1                           |
      | valid    | Property Reference Number | with_special_character_hyphen         | does_not_throw_any_error           |                                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 2                           |
      | valid    | Property Reference Number | with_spaces                           | does_not_throw_any_error           |                                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 3                           |
      | valid    | Property Reference Number | with_max_characters                   | does_not_throw_any_error           |                                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 4                           |
      | valid    | Property Reference Number | with_alphanumeric                     | does_not_throw_any_error           |                                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 5                           |
      | valid    | Property Description      | all_type_of_characters                | does_not_throw_any_error           |                                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 6                           |
      | valid    | Property Description      | with_max_characters                   | does_not_throw_any_error           |                                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 7                           |
      | invalid  | Property Cost             | with_more_than_18_characters          | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal.             | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 8                           |
      | invalid  | Property Cost             | with_characters                       | throws an error with error message | Invalid Amount.                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 9                           |
      | invalid  | Property Cost             | with_alphanumeric                     | throws an error with error message | Invalid Amount.                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 10                          |
      | invalid  | Property Cost             | with_special_characters               | throws an error with error message | Invalid Amount.                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 11                          |
      | invalid  | Property Cost             | with_spaces                           | throws an error with error message | Invalid Amount.                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 12                          |
      | valid    | Property Cost             |                                       | does_not_throw_any_error           |                                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |
      | invalid  | Approximate Property Cost | with_more_than_18_characters          | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal.             | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 14                          |
      | invalid  | Approximate Property Cost | with_characters                       | throws an error with error message | Invalid Amount.                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 15                          |
      | invalid  | Approximate Property Cost | with_alphanumeric                     | throws an error with error message | Invalid Amount.                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 16                          |
      | invalid  | Approximate Property Cost | with_special_characters               | throws an error with error message | Invalid Amount.                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 17                          |
      | invalid  | Approximate Property Cost | with_spaces                           | throws an error with error message | Invalid Amount.                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 18                          |
      | valid    | Approximate Property Cost |                                       | does_not_throw_any_error           |                                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |

  # field depends on construction on land subtype, plot plus self construction
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10020: Entering <Validity> <Field_Name> <Validity_Reason> in property details with <collateral_subtype> at lead details
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user opens Property Details page
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user selects application type
    And user selects collateral sub type
    When user enters "<Field_Name>"
    Then error message is "<displayed_not_displayed>"
    Examples:
      | Validity | Field_Name           | Validity_Reason              | displayed_not_displayed | collateral_subtype          | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Loan_Type | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | valid    | Contractor           |                              | not displayed           | construction on land        | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 40                          |
      | valid    | Architect            |                              | not displayed           | construction on land        | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 41                          |
      | valid    | Cost Of Construction |                              | not displayed           | construction on land        | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 42                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | construction on land        | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 43                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | construction on land        | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 44                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | construction on land        | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 45                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | construction on land        | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 46                          |
      | valid    | Contractor           |                              | not displayed           | plot plus self construction | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 47                          |
      | valid    | Architect            |                              | not displayed           | plot plus self construction | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 48                          |
      | valid    | Cost Of Construction |                              | not displayed           | plot plus self construction | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 49                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | plot plus self construction | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 50                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | plot plus self construction | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 51                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | plot plus self construction | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 52                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | plot plus self construction | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 53                          |
      | valid    | Cost Of Land         |                              | not displayed           | plot plus self construction | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 54                          |
      | invalid  | Cost Of Land         | with alphabetes              | displayed               | plot plus self construction | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 55                          |
      | invalid  | Cost Of Land         | with alphanumeric characters | displayed               | plot plus self construction | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 56                          |
      | invalid  | Cost Of Land         | with special characters      | displayed               | plot plus self construction | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 57                          |
      | invalid  | Cost Of Land         | with spaces                  | displayed               | plot plus self construction | sourcing_details.xlsx | home                 | 261                         | Home Loan | property_details.xlsx | home                 | 58                          |

  #approximate property cost is disabled after adding the collateral
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10021: Entering <Validity> approximate property cost <Validity_Reason> in property details at <Stage>
    When user opens an application at "<Stage>" stage from application grid
    And property details are not filled for the application
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user selects application type
    And user enters approximate property cost
    Then error message is "<displayed_not_displayed>"
    Examples:
      | Validity | Validity_Reason              | displayed_not_displayed | Stage                     | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | invalid  | with_more_than_18_characters | displayed               | login acceptance_indiv_hl | property_details.xlsx | home                 | 59                          |
      | invalid  | with_characters              | displayed               | login acceptance_indiv_hl | property_details.xlsx | home                 | 60                          |
      | invalid  | with_alphanumeric            | displayed               | login acceptance_indiv_hl | property_details.xlsx | home                 | 61                          |
      | invalid  | with_special_characters      | displayed               | login acceptance_indiv_hl | property_details.xlsx | home                 | 62                          |
      | invalid  | with_spaces                  | displayed               | login acceptance_indiv_hl | property_details.xlsx | home                 | 63                          |
      | valid    |                              | not displayed           | login acceptance_indiv_hl | property_details.xlsx | home                 | 64                          |
      | invalid  | with_more_than_18_characters | displayed               | dde_indiv_hl              | property_details.xlsx | home                 | 59                          |
      | invalid  | with_characters              | displayed               | dde_indiv_hl              | property_details.xlsx | home                 | 60                          |
      | invalid  | with_alphanumeric            | displayed               | dde_indiv_hl              | property_details.xlsx | home                 | 61                          |
      | invalid  | with_special_characters      | displayed               | dde_indiv_hl              | property_details.xlsx | home                 | 62                          |
      | invalid  | with_spaces                  | displayed               | dde_indiv_hl              | property_details.xlsx | home                 | 63                          |
      | valid    |                              | not displayed           | dde_indiv_hl              | property_details.xlsx | home                 | 64                          |

  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10022: Entering <Validity> <Field_Name> <Validity_Reason> in property details at <Stage>
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user selects application type
    And user enters "<Field_Name>"
    Then error message is "<displayed_not_displayed>"
    @Release3
    Examples:
      | Validity | Field_Name                | Validity_Reason                       | displayed_not_displayed | Stage            | Var_Stage                 | Grid_Name       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | invalid  | Property Reference Number | with_special_characters_except_hyphen | displayed               | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 65                          |
      | valid    | Property Reference Number | with_special_character_hyphen         | not displayed           | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 66                          |
      | valid    | Property Reference Number | with_spaces                           | not displayed           | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 67                          |
      | valid    | Property Reference Number | with_max_characters                   | not displayed           | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 68                          |
      | valid    | Property Reference Number | with_alphanumeric                     | not displayed           | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 69                          |
      | valid    | Property Description      | all_type_of_characters                | not displayed           | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 70                          |
      | valid    | Property Description      | with_max_characters                   | not displayed           | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 71                          |
      | invalid  | Property Cost             | with_more_than_18_characters          | displayed               | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 67                          |
      | invalid  | Property Cost             | with_characters                       | displayed               | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 68                          |
      | invalid  | Property Cost             | with_alphanumeric                     | displayed               | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 69                          |
      | invalid  | Property Cost             | with_special_characters               | displayed               | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 70                          |
      | invalid  | Property Cost             | with_spaces                           | displayed               | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 71                          |
      | valid    | Property Cost             |                                       | not displayed           | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 72                          |
      | invalid  | Property Reference Number | with_special_characters_except_hyphen | displayed               | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 65                          |
      | valid    | Property Reference Number | with_special_character_hyphen         | not displayed           | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 66                          |
      | valid    | Property Reference Number | with_spaces                           | not displayed           | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 67                          |
      | valid    | Property Reference Number | with_max_characters                   | not displayed           | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 68                          |
      | valid    | Property Reference Number | with_alphanumeric                     | not displayed           | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 69                          |
      | valid    | Property Description      | all_type_of_characters                | not displayed           | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 70                          |
      | valid    | Property Description      | with_max_characters                   | not displayed           | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 71                          |
      | invalid  | Property Cost             | with_more_than_18_characters          | displayed               | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 67                          |
      | invalid  | Property Cost             | with_characters                       | displayed               | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 68                          |
      | invalid  | Property Cost             | with_alphanumeric                     | displayed               | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 69                          |
      | invalid  | Property Cost             | with_special_characters               | displayed               | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 70                          |
      | invalid  | Property Cost             | with_spaces                           | displayed               | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 71                          |
      | valid    | Property Cost             |                                       | not displayed           | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 72                          |
      | invalid  | Property Reference Number | with_special_characters_except_hyphen | displayed               | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 65                          |
      | valid    | Property Reference Number | with_special_character_hyphen         | not displayed           | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 66                          |
      | valid    | Property Reference Number | with_spaces                           | not displayed           | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 67                          |
      | valid    | Property Reference Number | with_max_characters                   | not displayed           | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 68                          |
      | valid    | Property Reference Number | with_alphanumeric                     | not displayed           | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 69                          |
      | valid    | Property Description      | all_type_of_characters                | not displayed           | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 70                          |
      | valid    | Property Description      | with_max_characters                   | not displayed           | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 71                          |
      | invalid  | Property Cost             | with_more_than_18_characters          | displayed               | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 67                          |
      | invalid  | Property Cost             | with_characters                       | displayed               | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 68                          |
      | invalid  | Property Cost             | with_alphanumeric                     | displayed               | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 69                          |
      | invalid  | Property Cost             | with_special_characters               | displayed               | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 70                          |
      | invalid  | Property Cost             | with_spaces                           | displayed               | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 71                          |
      | valid    | Property Cost             |                                       | not displayed           | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 72                          |
      | invalid  | Property Reference Number | with_special_characters_except_hyphen | displayed               | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 65                          |
      | valid    | Property Reference Number | with_special_character_hyphen         | not displayed           | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 66                          |
      | valid    | Property Reference Number | with_spaces                           | not displayed           | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 67                          |
      | valid    | Property Reference Number | with_max_characters                   | not displayed           | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 68                          |
      | valid    | Property Reference Number | with_alphanumeric                     | not displayed           | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 69                          |
      | valid    | Property Description      | all_type_of_characters                | not displayed           | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 70                          |
      | valid    | Property Description      | with_max_characters                   | not displayed           | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 71                          |
      | invalid  | Property Cost             | with_more_than_18_characters          | displayed               | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 67                          |
      | invalid  | Property Cost             | with_characters                       | displayed               | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 68                          |
      | invalid  | Property Cost             | with_alphanumeric                     | displayed               | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 69                          |
      | invalid  | Property Cost             | with_special_characters               | displayed               | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 70                          |
      | invalid  | Property Cost             | with_spaces                           | displayed               | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 71                          |
      | valid    | Property Cost             |                                       | not displayed           | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 72                          |
      | invalid  | Property Reference Number | with_special_characters_except_hyphen | displayed               | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 65                          |
      | valid    | Property Reference Number | with_special_character_hyphen         | not displayed           | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 66                          |
      | valid    | Property Reference Number | with_spaces                           | not displayed           | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 67                          |
      | valid    | Property Reference Number | with_max_characters                   | not displayed           | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 68                          |
      | valid    | Property Reference Number | with_alphanumeric                     | not displayed           | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 69                          |
      | valid    | Property Description      | all_type_of_characters                | not displayed           | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 70                          |
      | valid    | Property Description      | with_max_characters                   | not displayed           | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 71                          |
      | invalid  | Property Cost             | with_more_than_18_characters          | displayed               | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 67                          |
      | invalid  | Property Cost             | with_characters                       | displayed               | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 68                          |
      | invalid  | Property Cost             | with_alphanumeric                     | displayed               | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 69                          |
      | invalid  | Property Cost             | with_special_characters               | displayed               | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 70                          |
      | invalid  | Property Cost             | with_spaces                           | displayed               | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 71                          |
      | valid    | Property Cost             |                                       | not displayed           | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 72                          |

    @NotImplemented
    @Deferred
    Examples:
      | Validity | Field_Name                | Validity_Reason                       | displayed_not_displayed | Stage | Var_Stage                 | Grid_Name   | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | invalid  | Property Reference Number | with_special_characters_except_hyphen | displayed               | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 65                          |
      | valid    | Property Reference Number | with_special_character_hyphen         | not displayed           | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 66                          |
      | valid    | Property Reference Number | with_spaces                           | not displayed           | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 67                          |
      | valid    | Property Reference Number | with_max_characters                   | not displayed           | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 68                          |
      | valid    | Property Reference Number | with_alphanumeric                     | not displayed           | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 69                          |
      | valid    | Property Description      | all_type_of_characters                | not displayed           | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 70                          |
      | valid    | Property Description      | with_max_characters                   | not displayed           | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 71                          |
      | invalid  | Property Cost             | with_more_than_18_characters          | displayed               | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 67                          |
      | invalid  | Property Cost             | with_characters                       | displayed               | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 68                          |
      | invalid  | Property Cost             | with_alphanumeric                     | displayed               | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 69                          |
      | invalid  | Property Cost             | with_special_characters               | displayed               | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 70                          |
      | invalid  | Property Cost             | with_spaces                           | displayed               | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 71                          |
      | valid    | Property Cost             |                                       | not displayed           | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 72                          |


  # field depends on construction on land subtype, plot plus self construction
  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10023: Entering <Validity> <Field_Name> <Validity_Reason> in property details with <collateral_subtype> at <Stage>
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user selects application type
    And user selects collateral sub type
    And user enters "<Field_Name>"
    Then error message is "<displayed_not_displayed>"
    @Release3
    Examples:
      | Validity | Field_Name           | Validity_Reason              | displayed_not_displayed | collateral_subtype       | Stage            | Var_Stage                 | Grid_Name       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | valid    | Contractor           |                              | not displayed           | Construction On Land     | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 73                          |
      | valid    | Architect            |                              | not displayed           | Construction On Land     | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 74                          |
      | valid    | Cost Of Construction |                              | not displayed           | Construction On Land     | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 75                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | Construction On Land     | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 76                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | Construction On Land     | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 77                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | Construction On Land     | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 78                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | Construction On Land     | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 79                          |
      | valid    | Contractor           |                              | not displayed           | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 80                          |
      | valid    | Architect            |                              | not displayed           | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 81                          |
      | valid    | Cost Of Construction |                              | not displayed           | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 82                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 83                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 84                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 85                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 86                          |
      | valid    | Cost Of Land         |                              | not displayed           | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 87                          |
      | invalid  | Cost Of Land         | with alphabetes              | displayed               | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 88                          |
      | invalid  | Cost Of Land         | with alphanumeric characters | displayed               | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 89                          |
      | invalid  | Cost Of Land         | with special characters      | displayed               | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 90                          |
      | invalid  | Cost Of Land         | with spaces                  | displayed               | Plot + Self Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 91                          |
      | valid    | Contractor           |                              | not displayed           | Construction On Land     | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 73                          |
      | valid    | Architect            |                              | not displayed           | Construction On Land     | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 74                          |
      | valid    | Cost Of Construction |                              | not displayed           | Construction On Land     | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 75                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | Construction On Land     | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 76                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | Construction On Land     | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 77                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | Construction On Land     | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 78                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | Construction On Land     | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 79                          |
      | valid    | Contractor           |                              | not displayed           | Plot + Self Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 80                          |
      | valid    | Architect            |                              | not displayed           | Plot + Self Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 81                          |
      | valid    | Cost Of Construction |                              | not displayed           | Plot + Self Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 82                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | Plot + Self Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 83                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | Plot + Self Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 84                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | Plot + Self Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 85                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | Plot + Self Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 86                          |
      | valid    | Cost Of Land         |                              | not displayed           | Plot + Self Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 87                          |
      | invalid  | Cost Of Land         | with alphabetes              | displayed               | Plot + Self Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 88                          |
      | invalid  | Cost Of Land         | with alphanumeric characters | displayed               | Plot + Self Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 89                          |
      | invalid  | Cost Of Land         | with special characters      | displayed               | Plot + Self Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 90                          |
      | invalid  | Cost Of Land         | with spaces                  | displayed               | Plot + Self Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 91                          |
      | valid    | Contractor           |                              | not displayed           | Construction On Land     | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 73                          |
      | valid    | Architect            |                              | not displayed           | Construction On Land     | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 74                          |
      | valid    | Cost Of Construction |                              | not displayed           | Construction On Land     | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 75                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | Construction On Land     | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 76                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | Construction On Land     | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 77                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | Construction On Land     | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 78                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | Construction On Land     | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 79                          |
      | valid    | Contractor           |                              | not displayed           | Plot + Self Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 80                          |
      | valid    | Architect            |                              | not displayed           | Plot + Self Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 81                          |
      | valid    | Cost Of Construction |                              | not displayed           | Plot + Self Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 82                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | Plot + Self Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 83                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | Plot + Self Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 84                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | Plot + Self Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 85                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | Plot + Self Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 86                          |
      | valid    | Cost Of Land         |                              | not displayed           | Plot + Self Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 87                          |
      | invalid  | Cost Of Land         | with alphabetes              | displayed               | Plot + Self Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 88                          |
      | invalid  | Cost Of Land         | with alphanumeric characters | displayed               | Plot + Self Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 89                          |
      | invalid  | Cost Of Land         | with special characters      | displayed               | Plot + Self Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 90                          |
      | invalid  | Cost Of Land         | with spaces                  | displayed               | Plot + Self Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 91                          |
      | valid    | Contractor           |                              | not displayed           | Construction On Land     | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 73                          |
      | valid    | Architect            |                              | not displayed           | Construction On Land     | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 74                          |
      | valid    | Cost Of Construction |                              | not displayed           | Construction On Land     | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 75                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | Construction On Land     | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 76                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | Construction On Land     | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 77                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | Construction On Land     | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 78                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | Construction On Land     | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 79                          |
      | valid    | Contractor           |                              | not displayed           | Plot + Self Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 80                          |
      | valid    | Architect            |                              | not displayed           | Plot + Self Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 81                          |
      | valid    | Cost Of Construction |                              | not displayed           | Plot + Self Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 82                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | Plot + Self Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 83                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | Plot + Self Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 84                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | Plot + Self Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 85                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | Plot + Self Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 86                          |
      | valid    | Cost Of Land         |                              | not displayed           | Plot + Self Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 87                          |
      | invalid  | Cost Of Land         | with alphabetes              | displayed               | Plot + Self Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 88                          |
      | invalid  | Cost Of Land         | with alphanumeric characters | displayed               | Plot + Self Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 89                          |
      | invalid  | Cost Of Land         | with special characters      | displayed               | Plot + Self Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 90                          |
      | invalid  | Cost Of Land         | with spaces                  | displayed               | Plot + Self Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 91                          |
      | valid    | Contractor           |                              | not displayed           | Construction On Land     | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 73                          |
      | valid    | Architect            |                              | not displayed           | Construction On Land     | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 74                          |
      | valid    | Cost Of Construction |                              | not displayed           | Construction On Land     | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 75                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | Construction On Land     | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 76                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | Construction On Land     | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 77                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | Construction On Land     | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 78                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | Construction On Land     | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 79                          |
      | valid    | Contractor           |                              | not displayed           | Plot + Self Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 80                          |
      | valid    | Architect            |                              | not displayed           | Plot + Self Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 81                          |
      | valid    | Cost Of Construction |                              | not displayed           | Plot + Self Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 82                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | Plot + Self Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 83                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | Plot + Self Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 84                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | Plot + Self Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 85                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | Plot + Self Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 86                          |
      | valid    | Cost Of Land         |                              | not displayed           | Plot + Self Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 87                          |
      | invalid  | Cost Of Land         | with alphabetes              | displayed               | Plot + Self Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 88                          |
      | invalid  | Cost Of Land         | with alphanumeric characters | displayed               | Plot + Self Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 89                          |
      | invalid  | Cost Of Land         | with special characters      | displayed               | Plot + Self Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 90                          |
      | invalid  | Cost Of Land         | with spaces                  | displayed               | Plot + Self Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 91                          |

    @NotImplemented
    @Deferred
    Examples:
      | Validity | Field_Name           | Validity_Reason              | displayed_not_displayed | collateral_subtype       | Stage | Var_Stage                | Grid_Name   | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | Construction On Land     | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 77                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | Construction On Land     | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 78                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | Construction On Land     | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 79                          |
      | valid    | Contractor           |                              | not displayed           | Plot + Self Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 80                          |
      | valid    | Architect            |                              | not displayed           | Plot + Self Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 81                          |
      | valid    | Cost Of Construction |                              | not displayed           | Plot + Self Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 82                          |
      | invalid  | Cost Of Construction | with alphabetes              | displayed               | Plot + Self Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 83                          |
      | invalid  | Cost Of Construction | with alphanumeric characters | displayed               | Plot + Self Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 84                          |
      | invalid  | Cost Of Construction | with special characters      | displayed               | Plot + Self Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 85                          |
      | invalid  | Cost Of Construction | with spaces                  | displayed               | Plot + Self Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 86                          |
      | valid    | Cost Of Land         |                              | not displayed           | Plot + Self Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 87                          |
      | invalid  | Cost Of Land         | with alphabetes              | displayed               | Plot + Self Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 88                          |
      | invalid  | Cost Of Land         | with alphanumeric characters | displayed               | Plot + Self Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 89                          |
      | invalid  | Cost Of Land         | with special characters      | displayed               | Plot + Self Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 90                          |
      | invalid  | Cost Of Land         | with spaces                  | displayed               | Plot + Self Construction | ICD   | reconsideration_indiv_hl | Application | property_details.xlsx | home                 | 91                          |


  #cancel button at lead details
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario: ACAUTOCAS-10024: Validate cancel button behaviour in property details at lead details
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user opens Property Details page
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user selects the cancel button
    And user press ok on warning pop up
    Then unsaved data is cleared

  #except lead all stages
  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10025: Validate cancel button behaviour in property details at <Stage>
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user selects the cancel button
    And user press ok on warning pop up
    Then unsaved data is cleared
    @Release3
    Examples:
      | Stage            | Var_Stage                 | Grid_Name       |
      | Login Acceptance | login acceptance_indiv_hl | Application     |
      | DDE              | dde_indiv_hl              | Application     |
      | Recommendation   | recommendation_indiv_hl   | Application     |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval |
      | Reconsideration  | reconsideration_indiv_hl  | Application     |

    @NotImplemented
    @Deferred
    Examples:
      | Stage | Var_Stage                | Grid_Name   |
      | ICD   | reconsideration_indiv_hl | Application |


  #close warning pop of cancel button  up at lead
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10026: Validation of close warning pop up with <var> of cancel button in property details at lead details stage
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user opens Property Details page
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user selects the cancel button
    And user close the warning pop up with "<var>"
    Then warning pop up is closed successfully
    Examples:
      | var          |
      | cross icon   |
      | close button |

  #minimize warning pop up of cancel button at lead
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario: ACAUTOCAS-10027: Validation of minimize warning pop up of cancel button in property details at lead details stage
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user opens Property Details page
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user selects the cancel button
    And user minimize the warning pop up
    Then warning pop up is minimized successfully

  #maximized warning pop up of cancel buttoon at lead
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario: ACAUTOCAS-10028: Validation of maximize warning pop up of cancel button in property details at lead details stage
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user opens Property Details page
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user selects the cancel button
    And user minimize the warning pop up
    And user maximize the warning pop up
    Then warning pop up is maximized successfully

  #close warning pop up of cancel button other than lead details
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10029: Validation of close warning pop up with <var> of cancel button in property details at <Stage> stage
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user selects the cancel button
    And user close the warning pop up with "<var>"
    Then warning pop up is closed successfully
    Examples:
      | Stage            | var          | Var_Stage                 | Grid_Name       |
      | Login Acceptance | cross icon   | login acceptance_indiv_hl | Application     |
      | Login Acceptance | close button | login acceptance_indiv_hl | Application     |
      | DDE              | cross icon   | dde_indiv_hl              | Application     |
      | DDE              | close button | dde_indiv_hl              | Application     |
      | Recommendation   | cross icon   | recommendation_indiv_hl   | Application     |
      | Recommendation   | close button | recommendation_indiv_hl   | Application     |
      | Credit Approval  | cross icon   | credit approval_indiv_hl  | Credit_Approval |
      | Credit Approval  | close button | credit approval_indiv_hl  | Credit_Approval |
      | Reconsideration  | cross icon   | reconsideration_indiv_hl  | Application     |
      | Reconsideration  | close button | reconsideration_indiv_hl  | Application     |

  #minimize warning pop up of cancel button other than lead details
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10030: Validation of minimize warning pop up of cancel button in property details at <Stage> stage
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user selects the cancel button
    And user minimize the warning pop up
    Then warning pop up is minimized successfully
    Examples:
      | Stage            | Var_Stage                 | Grid_Name       |
      | Login Acceptance | login acceptance_indiv_hl | Application     |
      | DDE              | dde_indiv_hl              | Application     |
      | Recommendation   | recommendation_indiv_hl   | Application     |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval |
      | Reconsideration  | reconsideration_indiv_hl  | Application     |

    Examples:
      | Stage | Var_Stage                | Grid_Name   |
      | ICD   | reconsideration_indiv_hl | Application |


#  maximized warning pop up of cancel button other than lead details
  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10031: Validation of maximize warning pop up of cancel button in property details at <Stage> stage
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user selects the cancel button
    And user minimize the warning pop up
    And user maximize the warning pop up
    Then warning pop up is maximized successfully
    @Release3
    Examples:
      | Stage            | Var_Stage                 | Grid_Name       |
      | Login Acceptance | login acceptance_indiv_hl | Application     |
      | DDE              | dde_indiv_hl              | Application     |
      | Recommendation   | recommendation_indiv_hl   | Application     |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval |
      | Reconsideration  | reconsideration_indiv_hl  | Application     |

    @NotImplemented
    @Deferred
    Examples:
      | Stage | Var_Stage                 | Grid_Name   |
      | ICD   | login acceptance_indiv_hl | Application |


  #close check for duplicates result pop up at lead
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10032: Validation of <close_minimize> check for duplicates result pop up in property details at lead details stage
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user opens Property Details page
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user check for duplicates
    And user "<close_minimize>" the check for duplicates result pop up
    Then check for duplicates result pop up is "<close_minimize>" successfully
    Examples:
      | close_minimize |
      | close          |
      | minimize       |

  #maximize  check for duplicates result pop up at lead
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario: ACAUTOCAS-10033: Validation of maximize check for duplicates result pop up in property details at lead details stage
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user opens Property Details page
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user check for duplicates
    And user minimize the check for duplicates result pop up
    And user maximize the check for duplicates result pop up
    Then check for duplicates result pop up is maximized successfully

  #other than lead details
  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10034: Validation of <close_minimize> check for dedupe result pop up in property details at <Stage> stage
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user check for duplicates
    And user "<close_minimize>" the check for duplicates result pop up
    Then check for duplicates result pop up is "<close_minimize>" successfully
    @Release3
    Examples:
      | Stage            | Var_Stage                 | close_minimize | Grid_Name       |
      | Login Acceptance | login acceptance_indiv_hl | close          | Application     |
      | Login Acceptance | login acceptance_indiv_hl | minimize       | Application     |
      | DDE              | dde_indiv_hl              | close          | Application     |
      | DDE              | dde_indiv_hl              | minimize       | Application     |
      | Recommendation   | recommendation_indiv_hl   | close          | Application     |
      | Recommendation   | recommendation_indiv_hl   | minimize       | Application     |
      | Credit Approval  | credit approval_indiv_hl  | close          | Credit_Approval |
      | Credit Approval  | credit approval_indiv_hl  | minimize       | Credit_Approval |
      | Reconsideration  | reconsideration_indiv_hl  | close          | Application     |
      | Reconsideration  | reconsideration_indiv_hl  | minimize       | Application     |

    @NotImplemented
    @Deferred
    Examples:
      | Stage | Var_Stage                 | close_minimize | Grid_Name   |
      | ICD   | login acceptance_indiv_hl | close          | Application |
      | ICD   | login acceptance_indiv_hl | minimize       | Application |


  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10035: Validation of maximize check for dedupe result pop up in property details at <Stage> stage
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 108
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 52
    And user fills the property address
    And user check for duplicates
    And user minimize the check for duplicates result pop up
    And user maximize the check for duplicates result pop up
    Then check for duplicates result pop up is maximized successfully
    @Release3
    Examples:
      | Stage            | Var_Stage                 | Grid_Name       |
      | Login Acceptance | login acceptance_indiv_hl | Application     |
      | DDE              | dde_indiv_hl              | Application     |
      | Recommendation   | recommendation_indiv_hl   | Application     |
      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval |
      | Reconsideration  | reconsideration_indiv_hl  | Application     |

    @NotImplemented
    @Deferred
    Examples:
      | Stage | Var_Stage                 | Grid_Name   |
      | ICD   | login acceptance_indiv_hl | Application |



  #review comments
  #dropdown validation at lead details stage
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10036: Validate <Value> is present in <Drop_Down> dropdown in property details at lead details stage
    When user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user opens Property Details page
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user opens the "<Drop_Down>"
    Then value is displayed in dropdown
    Examples:
      | Loan_Type | Drop_Down        | Value                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Home Loan | Application Type | Property Identified     | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 92                          |
      | Home Loan | Application Type | Property Non-Identified | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 93                          |
      | Home Loan | Current Usage    | Rented                  | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 94                          |
      | Home Loan | Current Usage    | Self occupied           | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 95                          |
      | Home Loan | Current Usage    | Vacant                  | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 96                          |
      | Home Loan | Type of Purchase | New                     | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 97                          |
      | Home Loan | Type of Purchase | Resale                  | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 98                          |
      | Home Loan | Property Type    | BUILDING                | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 99                          |
      | Home Loan | Property Type    | APRTMNT                 | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 100                         |
      | Home Loan | DownPayment Type | Lump sum                | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 101                         |
      | Home Loan | DownPayment Type | With every disbursal    | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 102                         |

   #collateral subtype configured in master at lead
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10037: Validate <Collateral_subtype> is present in collateral subtype dropdown in property details at lead details stage
    When user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user opens Property Details page
    And user opens the "Collateral Sub Type"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    Then value is displayed in dropdown
    Examples:
      | Collateral_subtype                  | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Builder Property Under Construction | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 103                         |
      | Construction On Land                | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 104                         |
      | Plot + Self Construction            | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 105                         |
      | Purchase a Plot                     | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 106                         |
      | Ready Property                      | Home Loan | sourcing_details.xlsx | home                 | 261                         | property_details.xlsx | home                 | 107                         |

  #nature of property at lead
  #FeatureID-ACAUTOCAS-5397
  @Release3
  Scenario Outline: ACAUTOCAS-10038: Validate nature of property is filled based on property type for <collateral_subtype> in property details at lead details stage with data <row_num>
    When user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 261
    And user fills sourcing details
    And user opens Property Details page
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the data
      | Application Type                     |
      | Collateral Sub Type/Property Details |
      | Type Of Purchase                     |
      | Property Type                        |
    Then nature of property is filled correctly
    Examples:
      | collateral_subtype                  | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Ready Property                      | property_details.xlsx | home                 | 109                         |
      | Ready Property                      | property_details.xlsx | home                 | 110                         |
      | Builder Property Under Construction | property_details.xlsx | home                 | 111                         |
      | Builder Property Under Construction | property_details.xlsx | home                 | 112                         |
      | Purchase a Plot                     | property_details.xlsx | home                 | 113                         |
      | Purchase a Plot                     | property_details.xlsx | home                 | 114                         |
      | Construction On Land                | property_details.xlsx | home                 | 115                         |
      | Construction On Land                | property_details.xlsx | home                 | 116                         |
      | Plot + Self Construction            | property_details.xlsx | home                 | 117                         |
      | Plot + Self Construction            | property_details.xlsx | home                 | 118                         |

  #at login acceptance, dde
#  dropdown validation
  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10039: Validate <Value> is present in <Drop_Down> dropdown in property details at <Stage> stage
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user opens the "<Drop_Down>"
    Then value is displayed in dropdown
    @Release3
    Examples:
      | Drop_Down        | Value                   | Stage            | Var_Stage                 | Grid_Name       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Application Type | Property Identified     | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 92                          |
      | Application Type | Property Non-Identified | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 93                          |
      | Current Usage    | Rented                  | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 94                          |
      | Current Usage    | Self occupied           | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 95                          |
      | Current Usage    | Vacant                  | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 96                          |
      | Type of Purchase | New                     | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 97                          |
      | Type of Purchase | Resale                  | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 98                          |
      | Property Type    | BUILDING                | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 99                          |
      | Property Type    | APRTMNT                 | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 100                         |
      | DownPayment Type | Lump sum                | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 101                         |
      | DownPayment Type | With every disbursal    | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 102                         |
      | Application Type | Property Identified     | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 92                          |
      | Application Type | Property Non-Identified | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 93                          |
      | Current Usage    | Rented                  | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 94                          |
      | Current Usage    | Self occupied           | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 95                          |
      | Current Usage    | Vacant                  | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 96                          |
      | Type of Purchase | New                     | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 97                          |
      | Type of Purchase | Resale                  | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 98                          |
      | Property Type    | BUILDING                | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 99                          |
      | Property Type    | APRTMNT                 | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 100                         |
      | DownPayment Type | Lump sum                | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 101                         |
      | DownPayment Type | With every disbursal    | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 102                         |
      | Application Type | Property Identified     | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 92                          |
      | Application Type | Property Non-Identified | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 93                          |
      | Current Usage    | Rented                  | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 94                          |
      | Current Usage    | Self occupied           | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 95                          |
      | Current Usage    | Vacant                  | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 96                          |
      | Type of Purchase | New                     | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 97                          |
      | Type of Purchase | Resale                  | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 98                          |
      | Property Type    | BUILDING                | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 99                          |
      | Property Type    | APRTMNT                 | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 100                         |
      | DownPayment Type | Lump sum                | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 101                         |
      | DownPayment Type | With every disbursal    | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 102                         |
      | Application Type | Property Identified     | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 92                          |
      | Application Type | Property Non-Identified | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 93                          |
      | Current Usage    | Rented                  | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 94                          |
      | Current Usage    | Self occupied           | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 95                          |
      | Current Usage    | Vacant                  | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 96                          |
      | Type of Purchase | New                     | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 97                          |
      | Type of Purchase | Resale                  | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 98                          |
      | Property Type    | BUILDING                | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 99                          |
      | Property Type    | APRTMNT                 | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 100                         |
      | DownPayment Type | Lump sum                | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 101                         |
      | DownPayment Type | With every disbursal    | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 102                         |
      | Application Type | Property Identified     | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 92                          |
      | Application Type | Property Non-Identified | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 93                          |
      | Current Usage    | Rented                  | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 94                          |
      | Current Usage    | Self occupied           | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 95                          |
      | Current Usage    | Vacant                  | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 96                          |
      | Type of Purchase | New                     | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 97                          |
      | Type of Purchase | Resale                  | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 98                          |
      | Property Type    | BUILDING                | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 99                          |
      | Property Type    | APRTMNT                 | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 100                         |
      | DownPayment Type | Lump sum                | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 101                         |
      | DownPayment Type | With every disbursal    | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 102                         |

    @NotImplemented
    @Deferred
    Examples:
      | Drop_Down        | Value                   | Stage | Var_Stage                 | Grid_Name   | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Application Type | Property Identified     | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 92                          |
      | Application Type | Property Non-Identified | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 93                          |
      | Current Usage    | Rented                  | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 94                          |
      | Current Usage    | Self occupied           | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 95                          |
      | Current Usage    | Vacant                  | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 96                          |
      | Type of Purchase | New                     | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 97                          |
      | Type of Purchase | Resale                  | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 98                          |
      | Property Type    | BUILDING                | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 99                          |
      | Property Type    | APRTMNT                 | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 100                         |
      | DownPayment Type | Lump sum                | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 101                         |
      | DownPayment Type | With every disbursal    | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 102                         |


  #collateral subtype configured in master at login acceptance,dde
  #FeatureID-ACAUTOCAS-5397
  # this scenario is written for the configured drop down values
  @Release3
  Scenario Outline: ACAUTOCAS-10040: Validate <collateral_subtype> is present in collateral subtype dropdown in property details at <Stage> stage
    When user opens an application at "<Var_Stage>" stage from application grid
    And user opens Property Details page in "<Stage>"
    And user opens the "<Drop_Down>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    Then value is displayed in dropdown
    Examples:
      | Drop_Down           | collateral_subtype                  | Stage            | Var_Stage                 | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Collateral Sub Type | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 103                         |
      | Collateral Sub Type | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 104                         |
      | Collateral Sub Type | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 105                         |
      | Collateral Sub Type | plot plus construction              | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 106                         |
      | Collateral Sub Type | construction on land                | Login Acceptance | login acceptance_indiv_hl | property_details.xlsx | home                 | 107                         |
      | Collateral Sub Type | Builder Property Under Construction | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 103                         |
      | Collateral Sub Type | Purchase a Plot                     | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 104                         |
      | Collateral Sub Type | Ready Property                      | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 105                         |
      | Collateral Sub Type | plot plus construction              | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 106                         |
      | Collateral Sub Type | construction on land                | DDE              | dde_indiv_hl              | property_details.xlsx | home                 | 107                         |

  #nature of property at lead
  #FeatureID-ACAUTOCAS-5397
  Scenario Outline: ACAUTOCAS-10041: Validate nature of property is filled based on property type for <collateral_subtype> in property details at <Stage> stage with data <row_num>
    When user opens an application of "<Var_Stage>" stage variant from "<Grid_Name>" grid
    And user opens Property Details page in "<Stage>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills the data
      | Application Type                     |
      | Collateral Sub Type/Property Details |
      | Type Of Purchase                     |
      | Property Type                        |
    Then nature of property is filled correctly
    @Release3
    Examples:
      | collateral_subtype                  | Stage            | Var_Stage                 | Grid_Name       | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 109                         |
      | Ready Property                      | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 110                         |
      | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 111                         |
      | Builder Property Under Construction | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 112                         |
      | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 113                         |
      | Purchase a Plot                     | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 114                         |
      | Construction On Land                | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 115                         |
      | Construction On Land                | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 116                         |
      | Plot + Self Construction            | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 117                         |
      | Plot + Self Construction            | Login Acceptance | login acceptance_indiv_hl | Application     | property_details.xlsx | home                 | 118                         |
      | Ready Property                      | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 109                         |
      | Ready Property                      | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 110                         |
      | Builder Property Under Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 111                         |
      | Builder Property Under Construction | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 112                         |
      | Purchase a Plot                     | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 113                         |
      | Purchase a Plot                     | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 114                         |
      | Construction On Land                | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 115                         |
      | Construction On Land                | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 116                         |
      | Plot + Self Construction            | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 117                         |
      | Plot + Self Construction            | DDE              | dde_indiv_hl              | Application     | property_details.xlsx | home                 | 118                         |
      | Ready Property                      | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 109                         |
      | Ready Property                      | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 110                         |
      | Builder Property Under Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 111                         |
      | Builder Property Under Construction | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 112                         |
      | Purchase a Plot                     | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 113                         |
      | Purchase a Plot                     | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 114                         |
      | Construction On Land                | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 115                         |
      | Construction On Land                | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 116                         |
      | Plot + Self Construction            | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 117                         |
      | Plot + Self Construction            | Recommendation   | recommendation_indiv_hl   | Application     | property_details.xlsx | home                 | 118                         |
      | Ready Property                      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 109                         |
      | Ready Property                      | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 110                         |
      | Builder Property Under Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 111                         |
      | Builder Property Under Construction | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 112                         |
      | Purchase a Plot                     | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 113                         |
      | Purchase a Plot                     | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 114                         |
      | Construction On Land                | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 115                         |
      | Construction On Land                | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 116                         |
      | Plot + Self Construction            | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 117                         |
      | Plot + Self Construction            | Credit Approval  | credit approval_indiv_hl  | Credit_Approval | property_details.xlsx | home                 | 118                         |
      | Ready Property                      | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 109                         |
      | Ready Property                      | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 110                         |
      | Builder Property Under Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 111                         |
      | Builder Property Under Construction | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 112                         |
      | Purchase a Plot                     | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 113                         |
      | Purchase a Plot                     | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 114                         |
      | Construction On Land                | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 115                         |
      | Construction On Land                | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 116                         |
      | Plot + Self Construction            | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 117                         |
      | Plot + Self Construction            | Reconsideration  | reconsideration_indiv_hl  | Application     | property_details.xlsx | home                 | 118                         |

    @NotImplemented
    @Deferred
    Examples:
      | collateral_subtype                  | Stage | Var_Stage                 | Grid_Name   | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Ready Property                      | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 109                         |
      | Ready Property                      | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 110                         |
      | Builder Property Under Construction | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 111                         |
      | Builder Property Under Construction | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 112                         |
      | Purchase a Plot                     | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 113                         |
      | Purchase a Plot                     | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 114                         |
      | Construction On Land                | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 115                         |
      | Construction On Land                | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 116                         |
      | Plot + Self Construction            | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 117                         |
      | Plot + Self Construction            | ICD   | login acceptance_indiv_hl | Application | property_details.xlsx | home                 | 118                         |

