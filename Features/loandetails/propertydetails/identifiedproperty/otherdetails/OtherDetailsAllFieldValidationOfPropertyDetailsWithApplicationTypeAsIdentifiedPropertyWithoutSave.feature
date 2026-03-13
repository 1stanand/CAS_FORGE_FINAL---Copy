@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-harshprit.kumar
@ReviewedByDEV
@ReleaseLoanAppM5
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-173
Feature: Other Details All Field Validation Of Property Details With Application Type As Identified Property Without save

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  @ImplementedBy-harshprit.kumar
  @Release1
  Scenario Outline: ACAUTOCAS-4998  Entering <Validity> <Field_Name> <Validity_Reason> in other details without save
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_All>" fields for "<Application Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    When user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in other details  of property details
    Then application "<Throws_notThrows>" "<With_Error_Message>" around "<Field_Name>" in property details

    Examples:
      | Validity | Field_Name                | Validity_Reason              | Application Type    | Throws_notThrows                   | With_Error_Message                                                  | Loan_Type | Mandatory_All | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum |
      | invalid  | Market Value              | with_more_than_18_characters | Property Identified | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal. | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 1                                   |
      | invalid  | Market Value              | with_characters              | Property Identified | throws an error with error message | Invalid Amount.                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 2                                   |
      | invalid  | Market Value              | with_alphanumeric            | Property Identified | throws an error with error message | Invalid Amount.                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 3                                   |
      | invalid  | Market Value              | with_special_characters      | Property Identified | throws an error with error message | Invalid Amount.                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 4                                   |
      | invalid  | Market Value              | with_spaces                  | Property Identified | throws an error with error message | Invalid Amount.                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 5                                   |
      | invalid  | Built Up Area             | with_characters              | Property Identified | throws an error with error message | Please enter a valid number.                                        | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 6                                   |
      | invalid  | Built Up Area             | with_alphanumeric            | Property Identified | throws an error with error message | Please enter a valid number.                                        | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 7                                   |
      | invalid  | Built Up Area             | with_special_characters      | Property Identified | throws an error with error message | Please enter a valid number.                                        | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 8                                   |
      | invalid  | Built Up Area             | with_spaces                  | Property Identified | throws an error with error message | Please enter a valid number.                                        | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 9                                   |
      | valid    | Built Up Area             |                              | Property Identified | does_not_throw_any_error           |                                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   |
      | invalid  | Carpet Area               | with_characters              | Property Identified | throws an error with error message | Please enter a valid number.                                        | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 10                                  |
      | invalid  | Carpet Area               | with_alphanumeric            | Property Identified | throws an error with error message | Please enter a valid number.                                        | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 11                                  |
      | invalid  | Carpet Area               | with_special_characters      | Property Identified | throws an error with error message | Please enter a valid number.                                        | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 12                                  |
      | invalid  | Carpet Area               | with_spaces                  | Property Identified | throws an error with error message | Please enter a valid number.                                        | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 13                                  |
      | valid    | Carpet Area               |                              | Property Identified | does_not_throw_any_error           |                                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   |
      | invalid  | Age Of Property(In Years) | with_characters              | Property Identified | throws an error with error message | Please enter only Digits.                                           | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 14                                  |
      | invalid  | Age Of Property(In Years) | with_alphanumeric            | Property Identified | throws an error with error message | Please enter only Digits.                                           | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 15                                  |
      | invalid  | Age Of Property(In Years) | with_special_characters      | Property Identified | throws an error with error message | Please enter only Digits.                                           | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 16                                  |
      | invalid  | Age Of Property(In Years) | with_spaces                  | Property Identified | throws an error with error message | Please enter only Digits.                                           | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 17                                  |
      | valid    | Age Of Property(In Years) |                              | Property Identified | does_not_throw_any_error           |                                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   |
      | valid    | Age Of Property(In Years) | with_maximum_digits          | Property Identified | does_not_throw_any_error           |                                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   |
      | valid    | plan type                 |                              | Property Identified | does_not_throw_any_error           |                                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   |
      | valid    | plan type                 | with_maximum_digits          | Property Identified | does_not_throw_any_error           |                                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   |
      | valid    | Plan Number               |                              | Property Identified | does_not_throw_any_error           |                                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   |
      | valid    | Plan Number               | with_maximum_digits          | Property Identified | does_not_throw_any_error           |                                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   |
      | valid    | Property Lot Number       |                              | Property Identified | does_not_throw_any_error           |                                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   |
      | valid    | Property Lot Number       | with_maximum_digits          | Property Identified | does_not_throw_any_error           |                                                                     | Home Loan | mandatory     | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   |

  ###GWTType:FieldValidation
  ###exploration
  #FeatureID-ACAUTOCAS-173
  #${ProductType : ["HL"]}
  #${ApplicationStage:["Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","ICD"]}
  #${ApplicantType:["indiv"]}
  @ImplementedBy-pallavi.singh
  @Perishable
  Scenario Outline: ACAUTOCAS-11768: Entering <Validity> <Field_Name> <Validity_Reason> in other details without save at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens property details section at "<ApplicationStage>" stage
    And user de links the existing property details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 33
    And user fills property details home page with "mandatory" fields for "Property Identified"
    And user opens other details section
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row <PropertyDetails_otherDetails_rowNum>
    When user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in other details  of property details
    Then application "<Throws_notThrows>" "<With_Error_Message>" around "<Field_Name>" in property details
    Examples:
      | Validity | Field_Name                | Validity_Reason              | PropertyDetails_otherDetails_rowNum | Throws_notThrows                   | With_Error_Message                                                  | ApplicationStage   | ProductType   | ApplicantType   |
      | invalid  | Market Value              | with_more_than_18_characters | 1                                   | throws an error with error message | Only positive values and Upto 18 digits are allowed before decimal. | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Market Value              | with_characters              | 2                                   | throws an error with error message | Invalid Amount.                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Market Value              | with_alphanumeric            | 3                                   | throws an error with error message | Invalid Amount.                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Market Value              | with_special_characters      | 4                                   | throws an error with error message | Invalid Amount.                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Market Value              | with_spaces                  | 5                                   | throws an error with error message | Invalid Amount.                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Built Up Area             | with_characters              | 6                                   | throws an error with error message | Enter a positive number                                             | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Built Up Area             | with_alphanumeric            | 7                                   | throws an error with error message | Enter a positive number                                             | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Built Up Area             | with_special_characters      | 8                                   | throws an error with error message | Enter a positive number                                             | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Built Up Area             | with_spaces                  | 9                                   | throws an error with error message | Enter a positive number                                             | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | valid    | Built Up Area             |                              | 0                                   | does_not_throw_any_error           |                                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Carpet Area               | with_characters              | 10                                  | throws an error with error message | Enter a positive number                                             | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Carpet Area               | with_alphanumeric            | 11                                  | throws an error with error message | Enter a positive number                                             | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Carpet Area               | with_special_characters      | 12                                  | throws an error with error message | Enter a positive number                                             | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Carpet Area               | with_spaces                  | 13                                  | throws an error with error message | Enter a positive number                                             | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | valid    | Carpet Area               |                              | 0                                   | does_not_throw_any_error           |                                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Age Of Property(In Years) | with_characters              | 14                                  | throws an error with error message | Please enter only Digits.                                           | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Age Of Property(In Years) | with_alphanumeric            | 15                                  | throws an error with error message | Please enter only Digits.                                           | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Age Of Property(In Years) | with_special_characters      | 16                                  | throws an error with error message | Please enter only Digits.                                           | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | invalid  | Age Of Property(In Years) | with_spaces                  | 17                                  | throws an error with error message | Please enter only Digits.                                           | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | valid    | Age Of Property(In Years) |                              | 0                                   | does_not_throw_any_error           |                                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | valid    | Age Of Property(In Years) | with_maximum_digits          | 0                                   | does_not_throw_any_error           |                                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | valid    | plan type                 |                              | 0                                   | does_not_throw_any_error           |                                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | valid    | plan type                 | with_maximum_characters      | 0                                   | does_not_throw_any_error           |                                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | valid    | Plan Number               |                              | 0                                   | does_not_throw_any_error           |                                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | valid    | Plan Number               | with_maximum_digits          | 0                                   | does_not_throw_any_error           |                                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | valid    | Property Lot Number       |                              | 0                                   | does_not_throw_any_error           |                                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | valid    | Property Lot Number       | with_maximum_digits          | 0                                   | does_not_throw_any_error           |                                                                     | <ApplicationStage> | <ProductType> | <ApplicantType> |


  @Release1
  @ImplementedBy-harshprit.kumar
  Scenario Outline: ACAUTOCAS-4999: <Field_Name> is not editable in other details of Property Details
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_All>" fields for "<Application Type>"
    When user opens other details section
    Then "<Field_Name>" is not editable in other details of property details

    Examples:
      | Field_Name           | Mandatory_All | Application Type    | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Accepted Value (CIC) | mandatory     | Property Identified | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |
      | Reverification Date  | mandatory     | Property Identified | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |
      | Revaluation Date     | mandatory     | Property Identified | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |
      | Accepted Valuation   | mandatory     | Property Identified | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |

  #FeatureID-ACAUTOCAS-173
  #${ProductType : ["HL"]}
  #${ApplicationStage:["Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","ICD"]}
  #${ApplicantType:["indiv"]}
  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-11769: <Field_Name> is not editable in other details of Property Details at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user opens property details section at "<ApplicationStage>" stage
    When user opens other details section
    Then "<Field_Name>" is disabled in other details of property details
    Examples:
      | Field_Name           | ApplicationStage   | ProductType   | ApplicantType   |
      | Accepted Value (CIC) | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | Reverification Date  | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | Revaluation Date     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | Accepted Valuation   | <ApplicationStage> | <ProductType> | <ApplicantType> |
