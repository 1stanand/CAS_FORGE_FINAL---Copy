@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@Conventional
@Islamic
@Perishable

Feature: Insurance Details Validation under Collateral Details for Multi Asset


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13960: Required list of field validation for Insurance Details in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens Insurance Details section under collateral details page
    And user select Required Fields in Insurance Details
    Then list of field should be present for Insurance Details in collateral details as required field
      | Insurance Company |
      | Coverage Amount   |
      | Coverage Type     |
      | Loss Payee        |
      | Premium Amount    |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13961: Fields validation in All Fields for Insurance Details in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens Insurance Details section under collateral details page
    And user select All Fields in Insurance Details
    Then list of field should be present for in Insurance Details
      | Insurance Company        |
      | Coverage Amount          |
      | Coverage Type            |
      | Loss Payee               |
      | Premium Amount           |
      | Policy Number            |
      | Cover Note Number        |
      | Cover Note Creation Date |
      | Start Date               |
      | Maturity Date            |
      | Insurance Term Years     |
      | Insurance Term Months    |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13962: Validation of <Field_Name> for Insurance Details with <InputType> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row <AssetDetails_insuranceDetails_rowNum>
    When user fills "<Field_Name>" field with "<InputType>" for asset requested insurance details
    Then "<Field_Name>" field "<Throws_notThrows>" with "<InputType>" with proper message asset requested insurance details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Field_Name               | InputType                                | Throws_notThrows                   | AssetDetails_insuranceDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Coverage Amount          | valid value                              | does not throw any error           | 35                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Coverage Amount          | up to 18 digits                          | does not throw any error           | 36                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Coverage Amount          | both digits and characters               | throws an error with error message | 37                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Coverage Amount          | special characters                       | throws an error with error message | 38                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Coverage Amount          | space                                    | throws an error with error message | 39                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Coverage Amount          | paise format                             | does not throw any error           | 40                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Coverage Amount          | zero value                               | does not throw any error           | 41                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Coverage Amount          | equal to Premium Amount                  | throws an error with error message | 42                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Coverage Amount          | negative value                           | throws an error with error message | 43                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Coverage Amount          | less than Premium Amount                 | throws an error with error message | 44                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Coverage Amount          | more than 18 digits                      | throws an error with error message | 45                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Premium Amount           | valid value                              | does not throw any error           | 46                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Premium Amount           | up to 18 digits                          | does not throw any error           | 47                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Premium Amount           | both digits and characters               | throws an error with error message | 48                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Premium Amount           | special characters                       | throws an error with error message | 49                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Premium Amount           | space                                    | throws an error with error message | 50                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Premium Amount           | paise format                             | does not throw any error           | 51                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Premium Amount           | zero value                               | does not throw any error           | 52                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Premium Amount           | negative value                           | throws an error with error message | 53                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Premium Amount           | equal to Coverage Amount                 | throws an error with error message | 54                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Premium Amount           | more than Coverage Amount                | throws an error with error message | 55                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Premium Amount           | more than 18 digits                      | throws an error with error message | 56                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | valid value                              | does not throw any error           | 57                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | both digits and characters               | does not throw any error           | 58                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | special characters with hyphen           | does not throw any error           | 59                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | space                                    | does not throw any error           | 60                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | negative value                           | does not throw any error           | 61                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | special characters                       | throws an error with error message | 62                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | special characters with open brackets    | does not throw any error           | 63                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | special characters with close brackets   | does not throw any error           | 64                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | special characters with exclamation mark | does not throw any error           | 65                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | special characters with comma            | does not throw any error           | 66                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | special characters with and operator     | does not throw any error           | 67                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | special characters with dollar sign      | does not throw any error           | 68                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Loss Payee               | special characters with forward sign     | does not throw any error           | 69                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | valid value                              | does not throw any error           | 70                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | both digits and characters               | does not throw any error           | 71                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | space                                    | throws an error with error message | 72                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | negative value                           | throws an error with error message | 73                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | digit with hyphen                        | does not throw any error           | 74                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | special character with hyphen            | throws an error with error message | 75                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | special character with underscore        | throws an error with error message | 76                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | digit with underscore                    | does not throw any error           | 77                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | special character with forward slash     | throws an error with error message | 78                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | digit with forward slash                 | does not throw any error           | 79                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | special character with backward slash    | throws an error with error message | 80                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | digit with backward slash                | does not throw any error           | 81                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Number        | special character                        | throws an error with error message | 82                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Creation Date | valid date                               | does not throw any error           | 83                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Creation Date | more than current date                   | throws an error with error message | 84                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Creation Date | before 1942                              | throws an error with error message | 85                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Cover Note Creation Date | equal to Start Date                      | does not throw any error           | 86                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Start Date               | valid date                               | does not throw any error           | 87                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Start Date               | before 1942                              | throws an error with error message | 88                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Maturity Date            | valid date                               | does not throw any error           | 89                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Maturity Date            | more than current date                   | does not throw any error           | 90                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Maturity Date            | before 1942                              | throws an error with error message | 91                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Maturity Date            | less than Start Date                     | throws an error with error message | 92                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Maturity Date            | more than Start Date                     | does not throw any error           | 93                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Maturity Date            | equal to Start Date                      | does not throw any error           | 94                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Policy Number            | positive digits                          | does not throw any error           | 95                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Policy Number            | characters                               | does not throw any error           | 96                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Policy Number            | both digits and characters               | does not throw any error           | 97                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Policy Number            | negative                                 | throws an error with error message | 98                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Policy Number            | space                                    | throws an error with error message | 99                                   |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Policy Number            | first character as special symbols       | throws an error with error message | 100                                  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Policy Number            | last character as special symbols        | throws an error with error message | 101                                  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Policy Number            | consecutive special characters           | throws an error with error message | 102                                  |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Policy Number            | non-consecutive special characters       | does not throw any error           | 103                                  |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @Sanity
    @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13963: Saving Insurance details in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row 104
    When user fills insurance details with "<Mandatory_All>"
    Then Insurance details save successfully
    Examples:
      | Mandatory_All | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | Mandatory     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | All           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13964: <Edit_Delete> existing Insurace details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row 104
    And user fills insurance details with "Mandatory"
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row 0
    When user "<Edit_Delete>" Insurance details
    Then Insurance details "<Edit_Delete>" should be added
    Examples:
      | Edit_Delete | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | Edit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Delete      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13965: Add multiple Insurance details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    When user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row 104
    And user add "<insurance>" Insurance details
    Then "<insurance>" Insurance details should be added successfully
    Examples:
      | insurance   | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | one another | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | multiple    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  ###Nominee Detail
  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13966: Required list of field validation for Alternate Business Address in Nominee Details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 23
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Alternate Business Address"
    When user select Required tab in Nominee address details
    Then list of field should be present for "Alternate Business Address" in Nominee Address
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  #Bug for full address
  @ImplementedBy-rishabh.sachan
    @Release
    @LoggedBug
  Scenario Outline: ACAUTOCAS-13967: Fields validation in All Fields for Alternate Business Address in Nominee Details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 23
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Alternate Business Address"
    When user select All Fields in Nominee Address
    Then list of field should be present for "Alternate Business Address" in Nominee Address
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Duration at this Address |
      | Duration at this City    |
      | Primary Phone            |
      | Mobile Phone             |
      | Current Address checkbox |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13968: Field type validation of all field for Alternate Business Address in Nominee Details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 23
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "Alternate Business Address"
    Then list of field with respective field type should be present for "Alternate Business Address" in Nominee Address
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13969: Required list of field validation for Office Business Address in Nominee Details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 24
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Office Business Address"
    When user select Required tab in Nominee address details
    Then list of field should be present for "Office Business Address" in Nominee Address
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  #Bug for full address
  @ImplementedBy-rishabh.sachan
    @Release
    @LoggedBug
  Scenario Outline: ACAUTOCAS-13970: Fields validation in All Fields for Office Business Address in Nominee Details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 24
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Office Business Address"
    When user select All Fields in Nominee Address
    Then list of field should be present for "Office Business Address" in Nominee Address
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Duration at this Address |
      | Duration at this City    |
      | Primary Phone            |
      | Mobile Phone             |
      | Current Address checkbox |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13971: Field type validation of all field for Office Business Address in Nominee Details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 24
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "Office Business Address"
    Then list of field with respective field type should be present for "Office Business Address" in Nominee Address
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13972: Required list of field validation for Permanent Address in Nominee Details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 25
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Permanent Address"
    When user select Required tab in Nominee address details
    Then list of field should be present for "Permanent Address" in Nominee Address
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  #Bug for full address
  @ImplementedBy-rishabh.sachan
    @Release
    @LoggedBug
  Scenario Outline: ACAUTOCAS-13973: Fields validation in All Fields for Permanent Address in Nominee Details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 25
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Permanent Address"
    When user select All Fields in Nominee Address
    Then list of field should be present for "Permanent Address" in Nominee Address
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Duration at this Address |
      | Duration at this City    |
      | Primary Phone            |
      | Mobile Phone             |
      | Current Address checkbox |
      | Residence Status         |
      | Residence Type           |
      | Address In Document      |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13974: Field type validation of all field for Permanent Address in Nominee Details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 24
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "Permanent Address"
    Then list of field with respective field type should be present for "Alternate Business Address" in Nominee Address
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Residence Status              | dropdown       |
      | Residence Type                | dropdown       |
      | Address In Document           | dropdown       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13975: Required list of field validation for Residential Address in Nominee Details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 26
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Residential Address"
    When user select Required tab in Nominee address details
    Then list of field should be present for "Residential Address" in Nominee Address
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  #Bug for full address
  @ImplementedBy-rishabh.sachan
    @Release
    @LoggedBug
  Scenario Outline: ACAUTOCAS-13976: Fields validation in All Fields for Residential Address in Nominee Details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 26
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "Residential Address"
    When user select All Fields in Nominee Address
    Then list of field should be present for "Residential Address" in Nominee Address
      | Address Type             |
      | Full Address             |
      | Country                  |
      | Flat/Plot Number         |
      | Address Line 2           |
      | Address Line 3           |
      | PinCode                  |
      | Region                   |
      | State                    |
      | City                     |
      | District                 |
      | Taluka                   |
      | Village                  |
      | Duration at this Address |
      | Duration at this City    |
      | Primary Phone            |
      | Mobile Phone             |
      | Current Address checkbox |
      | Residence Status         |
      | Residence Type           |
      | Address In Document      |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13977: Field type validation of all field for Residential Address in Nominee Details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 26
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "Residential Address"
    Then list of field with respective field type should be present for "Residential Address" in Nominee Address
      | Field                         | Field_Type     |
      | Address Type                  | dropdown       |
      | Full Address                  | input          |
      | Country                       | dropdown       |
      | Flat/Plot Number              | input          |
      | Address Line 2                | input          |
      | Address Line 3                | input          |
      | PinCode                       | list of values |
      | Region                        | dropdown       |
      | State                         | dropdown       |
      | City                          | dropdown       |
      | District                      | dropdown       |
      | Taluka                        | list of values |
      | Village                       | list of values |
      | Duration at this Address from | input          |
      | Duration at this Address to   | input          |
      | Duration at this City from    | input          |
      | Duration at this City to      | input          |
      | Primary Phone                 | input          |
      | Mobile Phone                  | input          |
      | Current Address checkbox      | checkbox       |
      | Residence Status              | dropdown       |
      | Residence Type                | dropdown       |
      | Address In Document           | dropdown       |
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13978: <Field> field validation for <Address_City> in <Address_Type> for nominee address under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row <AssetDetails_nomineeAddressDetails_rowNum>
    And user click on Add Address Details in Nominee Details
    When user selects nominee address type as "<Address_Type>"
    Then "<Field>" field for "<Address_City>" should be display as Calendar field in nominee address details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Field     | Address_City             | Address_Type               | AssetDetails_nomineeAddressDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | From Date | Duration at this Address | Alternate Business Address | 23                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | To Date   | Duration at this Address | Alternate Business Address | 23                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | From Date | Duration at this City    | Alternate Business Address | 23                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | To Date   | Duration at this City    | Alternate Business Address | 23                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | From Date | Duration at this Address | Office/ Business Address   | 24                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | To Date   | Duration at this Address | Office/ Business Address   | 24                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | From Date | Duration at this City    | Office/ Business Address   | 24                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | To Date   | Duration at this City    | Office/ Business Address   | 24                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | From Date | Duration at this Address | Permanent Address          | 25                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | To Date   | Duration at this Address | Permanent Address          | 25                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | From Date | Duration at this City    | Permanent Address          | 25                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | To Date   | Duration at this City    | Permanent Address          | 25                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | From Date | Duration at this Address | Residential Address        | 26                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | To Date   | Duration at this Address | Residential Address        | 26                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | From Date | Duration at this City    | Residential Address        | 26                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | To Date   | Duration at this City    | Residential Address        | 26                                        |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13979: <Field> validation for <Address_City> in <Address_Type> for nominee address under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row <AssetDetails_nomineeAddressDetails_rowNum>
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "<Address_Type>"
    When user fills From Date field for "<Address_City>" in nominee address details
    And user fills To Date field for "<Address_City>" in nominee address details
    Then "<Field>" field should be display in two separate block for "<Address_City>" in nominee address
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Field           | Address_City             | Address_Type               | AssetDetails_nomineeAddressDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this address | Alternate Business Address | 23                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Alternate Business Address | 23                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this address | Office/ Business Address   | 24                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Office/ Business Address   | 24                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this address | Permanent Address          | 25                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Permanent Address          | 25                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this address | Residential Address        | 26                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Residential Address        | 26                                        |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13980: <Field> calculation for <Address_City> in <Address_Type> for nominee address under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row <AssetDetails_nomineeAddressDetails_rowNum>
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "<Address_Type>"
    When user fills From Date field for "<Address_City>" in nominee address details
    And user fills To Date field for "<Address_City>" in nominee address details
    Then "<Field>" field should be calculated correctly for "<Address_City>" in nominee address details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Field           | Address_City             | Address_Type               | AssetDetails_nomineeAddressDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this address | Alternate Business Address | 23                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Alternate Business Address | 23                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this address | Office/ Business Address   | 24                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Office/ Business Address   | 24                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this address | Permanent  Address         | 25                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Permanent  Address         | 25                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this address | Residential Address        | 26                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Residential Address        | 26                                        |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13981: <Field> calculation for <Address_City> in <Address_Type> if Current Address checkbox for nominee address is checked under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row <AssetDetails_nomineeAddressDetails_rowNum>
    And user click on Add Address Details in Nominee Details
    And user selects nominee address type as "<Address_Type>"
    And user checked Current Address checkbox in nominee address
    When user fills From Date field for "<Address_City>" in nominee address details
    Then "<Field>" field should be calculated correctly as per current system date for "<Address_City>" in nominee address
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Field           | Address_City             | Address_Type               | AssetDetails_nomineeAddressDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this address | Alternate Business Address | 23                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Alternate Business Address | 23                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this address | Office/ Business Address   | 24                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Office/ Business Address   | 24                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this address | Permanent Address          | 25                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Permanent Address          | 25                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this address | Residential Address        | 26                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Residential Address        | 26                                        |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13982: Edit the added <Address> for nominee address is checked under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row <AssetDetails_nomineeAddressDetails_rowNum>
    And user click on Add Address Details in Nominee Details
    When user add "<Address>" in nominee address
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 27
    And user edits "<Address>" details in nominee address
    Then "<Address>" should be edited successfully in nominee address
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Address                    | AssetDetails_nomineeAddressDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Alternate Business Address | 23                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Office/ Business Address   | 24                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Permanent Address          | 25                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Residential Address        | 26                                        |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13983: Validation of <Field_Name> for Nominee Details with <InputType> in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row <AssetDetails_nomineeAddressDetails_rowNum>
    When user fills "<Field_Name>" field with "<InputType>" in nominee details
    Then "<Field_Name>" field "<Throws_notThrows>" with proper message in nominee details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | Field_Name                | InputType                  | Throws_notThrows                   | AssetDetails_nomineeAddressDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nominee Name              | valid value                | does not throw any error           | 28                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nominee Name              | both digits and characters | does not throw any error           | 29                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nominee Name              | space                      | does not throw any error           | 30                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nominee Name              | negative value             | throws an error with error message | 31                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nominee Name              | special character with dot | does not throw any error           | 32                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Nominee Name              | special characters         | throws an error with error message | 33                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Percentage of Entitlement | valid value                | does not throw any error           | 34                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Percentage of Entitlement | both digits and characters | throws an error with error message | 35                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Percentage of Entitlement | more than 2 decimal places | throws an error with error message | 36                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Percentage of Entitlement | space                      | throws an error with error message | 37                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Percentage of Entitlement | negative value             | throws an error with error message | 38                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Percentage of Entitlement | special characters         | throws an error with error message | 39                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Percentage of Entitlement | more than 100 digits       | throws an error with error message | 40                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Appointee Name            | valid value                | does not throw any error           | 41                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Appointee Name            | both digits and characters | does not throw any error           | 42                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Appointee Name            | space                      | does not throw any error           | 43                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Appointee Name            | negative value             | throws an error with error message | 44                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Appointee Name            | special characters         | throws an error with error message | 45                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Appointee DOB             | valid date                 | does not throw any error           | 46                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Appointee DOB             | more than current date     | throws an error with error message | 47                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Appointee DOB             | before 1942                | throws an error with error message | 48                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Date of Birth             | valid date                 | does not throw any error           | 49                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Date of Birth             | more than current date     | throws an error with error message | 50                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | Date of Birth             | before 1942                | throws an error with error message | 51                                        |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13984: Saving Nominee Details in Insurance details in collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row 104
    And user fills mandatory insurance details
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row <AssetDetails_nomineeAddressDetails_rowNum>
    When user fills "<Mandatory_All>" Nominee details in insurance details
    Then Nominee details should be added successfully
    Examples:
      | Mandatory_All | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | AssetDetails_nomineeAddressDetails_rowNum |
      | Mandatory     | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | 26                                        |
      | All           | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | 27                                        |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13985: <Edit_Delete> existing Nominee details in Insurance details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row 104
    And user fills mandatory insurance details
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 26
    And user fills "Mandatory" Nominee details in insurance details
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 56
    When user "<Edit_Delete>" Nominee details
    Then Nominee details "<Edit_Delete>" should be added
    Examples:
      | Edit_Delete | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | Edit        | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | Delete      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13986: Add multiple Nominee Detail in Insurance details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "multi_asset_details" and row 50
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row 104
    And user fills mandatory insurance details
    When user fills "<nominee>" Nominee details in insurance details from below dataTable
      | asset_details.xlsx | nominee_address_details | 54 |
      | asset_details.xlsx | nominee_address_details | 55 |
      | asset_details.xlsx | nominee_address_details | 56 |
      | asset_details.xlsx | nominee_address_details | 57 |
    Then "<nominee>" nominee details should be added successfully
    Examples:
      | nominee     | ProductType   | ApplicationStage   | ApplicantType   | Category | Key |
      | one another | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |
      | multiple    | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #${Mandatory_All:["Mandatory","All"]}
  #${FinanceMode:["Purchase","Refinance"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline:Save the nominee address with address type as <Address> in insurance details under collateral details for multi Asset at <ApplicationStage> in <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads asset details excel for finance mode as "<FinanceMode>"
      | asset_details.xlsx | multi_asset_details | 51 | Purchase  |
      | asset_details.xlsx | multi_asset_details | 52 | Refinance |
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row <AssetDetails_nomineeAddressDetails_rowNum>
    And user click on Add Address Details in Nominee Details
    When user add "<Address>" in nominee address with "<Mandatory_All>"
    Then Nominee address details save successfully
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | Category | Key | FinanceMode   | Mandatory_All   | Address                    | AssetDetails_nomineeAddressDetails_rowNum |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <FinanceMode> | <Mandatory_All> | Alternate Business Address | 58                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <FinanceMode> | <Mandatory_All> | Office/ Business Address   | 59                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <FinanceMode> | <Mandatory_All> | Permanent Address          | 60                                        |
      | <ProductType> | <ApplicationStage> | <ApplicantType> |          |     | <FinanceMode> | <Mandatory_All> | Residential Address        | 61                                        |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #${FinanceMode:["Purchase","Refinance"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline:Capture another Insurance details after saving insurance details with create another after this one under collateral details at <ApplicationStage> for <ProductType>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads asset details excel for finance mode as "<FinanceMode>"
      | asset_details.xlsx | multi_asset_details | 51 | Purchase  |
      | asset_details.xlsx | multi_asset_details | 52 | Refinance |
    And user fills asset requested "mandatory" fields with "Used Asset"
    And user save the asset requested data
    And user edit the added asset requested details
    And user opens Collateral Details section
    And user edit the collateral details
    And user opens Insurance Details section under collateral details page
    And user reads data from the excel file "asset_details.xlsx" under sheet "insurance_details" and row 104
    And user fills mandatory insurance details
    And user reads data from the excel file "asset_details.xlsx" under sheet "nominee_address_details" and row 26
    And user fills mandatory Nominee details in insurance details
    When user saves the insurance details page with checkbox create another one
    Then insurance details page should be available to create another insurance details
    Examples:
      | ProductType   | ApplicationStage   | ApplicantType   | FinanceMode   | Category | Key |
      | <ProductType> | <ApplicationStage> | <ApplicantType> | <FinanceMode> |          |     |
