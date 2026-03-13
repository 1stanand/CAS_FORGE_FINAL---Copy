@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-harshprit.kumar
@ReviewedByDEV
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-4169
Feature:All Field Validation Of Property Details With Application Type As  Non Identified Property Without Save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  @ReleaseLoanAppM5
  @Release1
  @ImplementedBy-harshprit.kumar
  Scenario Outline: ACAUTOCAS-4093:  Entering <Validity> <Field_Name> <Validity_Reason> with application as non identified property
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user selects application type as non identified property
    And user selects collateral sub type as ready property
    And user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in Property Details
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
      | invalid  | Approximate Property Cost | with_more_than_18_characters          | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal.             | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 14                          |
      | invalid  | Approximate Property Cost | with_characters                       | throws an error with error message | Invalid Amount.                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 15                          |
      | invalid  | Approximate Property Cost | with_alphanumeric                     | throws an error with error message | Invalid Amount.                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 16                          |
      | invalid  | Approximate Property Cost | with_special_characters               | throws an error with error message | Invalid Amount.                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 17                          |
      | invalid  | Approximate Property Cost | with_spaces                           | throws an error with error message | Invalid Amount.                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 18                          |
      | valid    | Approximate Property Cost |                                       | does_not_throw_any_error           |                                                                                 | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |

  #create subtask
  #validation
  #source from exploration
  #${ProductType : ["HL"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","disbursal initiation","ICD"]}
  #${ApplicantType:["indiv"]}
  @ReleaseLoanAppM5
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-4824:<var> number is <var1> for non identified property at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    And user de links the existing property details
    And user selects non identified property as a primary collateral
    When user saves the property details
    Then "<var>" is "<var1>" in property details
    Examples:
      | ApplicationStage   | var                      | var1          | ProductType   | ApplicantType   |
      | <ApplicationStage> | Global Collateral Number | not generated | <ProductType> | <ApplicantType> |
      | <ApplicationStage> | Collateral Number        | generated     | <ProductType> | <ApplicantType> |

  #validation
  ###source from squash-200023
  #FeatureID-ACAUTOCAS-4169
  @ReleaseLoanAppM5
  @ImplementedBy-pallavi.singh
  Scenario: ACAUTOCAS-11777: Error is not occur in built up area carpet area for property non identified at lead details
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 33
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    And user fills the property address
    And user selects non identified property as a primary collateral
    When user saves the property details
    Then property details saved successfully for non identified

  #validation
  #source from exploration
  #${ProductType : ["HL"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","disbursal initiation","ICD"]}
  #${ApplicantType:["indiv"]}
  @ReleaseLoanAppM5
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-11778: Error is not occur in built up area carpet area for property non identified at <Stage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user selects non identified property as a primary collateral
    When user saves the property details
    Then property details saved successfully for non identified
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |
