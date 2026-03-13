@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@Conventional
@Islamic
@Perishable

Feature:Seller Address Details Validation for Asset Requested under Multi Asset

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13993: Required field validation for Additional Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 0
    And user click on add new seller address
    And user selects seller address type as "Additional Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Additional Address" in Seller Address as required field
      | Address Type     |
      | Purpose          |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13994: All Fields validation for Additional Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 0
    And user click on add new seller address
    And user selects seller address type as "Additional Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Additional Address" in Seller Address for All Field
      | Address Type                 |
      | Purpose                      |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Residence Status             |
      | Residence Type               |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13995: Field type validation of <Field> field for Additional Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 0
    And user click on add new seller address
    When user selects seller address type as "Additional Address"
    Then field type of "<Field>" field should "<Field_Type>" field in seller Address for "Additional Address"
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field                         | Field_Type     |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Type                  | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Purpose                       | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Full Address                  | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Country                       | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Flat/Plot Number              | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Line 2                | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Line 3                | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PinCode                       | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Region                        | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | State                         | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | City                          | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | District                      | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Taluka                        | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Village                       | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Residence Status              | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Residence Type                | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this Address from | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this Address to   | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this City from    | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this City to      | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Primary Phone                 | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mobile Phone                  | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Current Address checkbox      | checkbox       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Is address verified checkbox  | checkbox       |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13996: Required field validation for Alternate Business Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 1
    And user click on add new seller address
    And user selects seller address type as "Alternate Business Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Alternate Business Address" in Seller Address as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13997: All Fields validation for Alternate Business Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 1
    And user click on add new seller address
    And user selects seller address type as "Alternate Business Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Alternate Business Address" in Seller Address for All Field
      | Address Type                 |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13998: Field type validation of <Field> field for Alternate Business Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 1
    And user click on add new seller address
    When user selects seller address type as "Alternate Business Address"
    Then field type of "<Field>" field should "<Field_Type>" field in seller Address for "Alternate Business Address"
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field                         | Field_Type     |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Type                  | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Full Address                  | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Country                       | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Flat/Plot Number              | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Line 2                | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Line 3                | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PinCode                       | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Region                        | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | State                         | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | City                          | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | District                      | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Taluka                        | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Village                       | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this Address from | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this Address to   | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this City from    | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this City to      | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Primary Phone                 | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mobile Phone                  | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Current Address checkbox      | checkbox       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Is address verified checkbox  | checkbox       |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-13999: Required field validation for Office Business Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 2
    And user click on add new seller address
    And user selects seller address type as "Office Business Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Office Business Address" in Seller Address as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14000: Fields validation in All Fields for Office Business Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 2
    And user click on add new seller address
    And user selects seller address type as "Office Business Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Office Business Address" in Seller Address for All Field
      | Address Type                 |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14001: Field type validation of <Field> field for Office Business Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 2
    And user click on add new seller address
    When user selects seller address type as "Office Business Address"
    Then field type of "<Field>" field should "<Field_Type>" field in seller Address for "Office Business Address"
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field                         | Field_Type     |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Type                  | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Full Address                  | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Country                       | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Flat/Plot Number              | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Line 2                | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Line 3                | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PinCode                       | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Region                        | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | State                         | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | City                          | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | District                      | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Taluka                        | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Village                       | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this Address from | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this Address to   | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this City from    | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this City to      | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Primary Phone                 | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mobile Phone                  | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Current Address checkbox      | checkbox       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Is address verified checkbox  | checkbox       |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14002: Required field validation for Permanent Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 3
    And user click on add new seller address
    And user selects seller address type as "Permanent Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Permanent Address" in Seller Address as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14003: Fields validation in All Fields for Permanent Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 3
    And user selects seller address type as "Permanent Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Permanent Address" in Seller Address for All Field
      | Address Type                 |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Residence Status             |
      | Residence Type               |
      | Address In Document          |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14004: Field type validation of <Field> field for Permanent Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 3
    And user click on add new seller address
    When user selects seller address type as "Permanent Address"
    Then field type of "<Field>" field should "<Field_Type>" field in seller Address for "Permanent Address"
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field                         | Field_Type     |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Type                  | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Full Address                  | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Country                       | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Flat/Plot Number              | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Line 2                | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Line 3                | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PinCode                       | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Region                        | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | State                         | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | City                          | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | District                      | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Taluka                        | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Village                       | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Residence Status              | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Residence Type                | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address In Document           | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this Address from | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this Address to   | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this City from    | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this City to      | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Primary Phone                 | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mobile Phone                  | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Current Address checkbox      | checkbox       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Is address verified checkbox  | checkbox       |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14005: Required field validation for Residential Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 4
    And user click on add new seller address
    And user selects seller address type as "Residential Address"
    When user select Required tab in Seller Address
    Then list of field should be present for "Residential Address" in Seller Address as required field
      | Address Type     |
      | Country          |
      | Flat/Plot Number |
      | PinCode          |
      | State            |
      | City             |
      | Village          |
      | Residence Status |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14006: Fields validation in All Fields for Residential Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 4
    And user click on add new seller address
    And user selects seller address type as "Residential Address"
    When user select All Fields in Seller Address
    Then list of field should be present for "Residential Address" in Seller Address for All Field
      | Address Type                 |
      | Full Address                 |
      | Country                      |
      | Flat/Plot Number             |
      | Address Line 2               |
      | Address Line 3               |
      | PinCode                      |
      | Region                       |
      | State                        |
      | City                         |
      | District                     |
      | Taluka                       |
      | Village                      |
      | Residence Status             |
      | Residence Type               |
      | Address In Document          |
      | Duration at this Address     |
      | Duration at this City        |
      | Primary Phone                |
      | Mobile Phone                 |
      | Current Address checkbox     |
      | Is address verified checkbox |
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14007: Field type validation of <Field> field for Residential Address in Seller Address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 4
    And user click on add new seller address
    When user selects seller address type as "Residential Address"
    Then field type of "<Field>" field should "<Field_Type>" field in seller Address for "Residential Address"
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field                         | Field_Type     |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Type                  | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Full Address                  | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Country                       | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Flat/Plot Number              | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Line 2                | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address Line 3                | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | PinCode                       | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Region                        | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | State                         | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | City                          | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | District                      | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Taluka                        | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Village                       | list of values |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Residence Status              | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Residence Type                | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Address In Document           | dropdown       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this Address from | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this Address to   | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this City from    | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Duration at this City to      | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Primary Phone                 | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Mobile Phone                  | input          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Current Address checkbox      | checkbox       |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Is address verified checkbox  | checkbox       |


    # { ProductType : ["IAF","CON_VEH","Farm Equipment","AGRL"]}
# ${ApplicationStage:["Sourcing","Lead Details",DDE]}
#${ApplicantType:["indiv","nonindiv"]}
#  Scenario Outline:Copy address functionality in seller address at <ApplicationStage> in <ProductType>
#    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
#    And user fills saves sourcing details with application type as Multiple Asset
#    And user navigates to asset requested page
#    And user select asset type as Used Asset
#    And user select Bought From as Individual
#    And user open seller address accordion
#    When user add "<Address>" in seller address
#    And user copy from an existing "<Address>" to add another "<Copied_Address>"
#    And user selects address type as "<Copied_Address>" in organization Address
#    And user click on "<Button>"
#    Then "<Copied_Address>" "<Throw_notThrow>" message
#    Examples:
#      | ApplicationStage   | ProductType   | Address                    | Copied_Address             | Button | Throw_notThrow      |
#      | <ApplicationStage> | <ProductType> | Alternate Business Address | Additional Address         | Done   | throw an error      |
#      | <ApplicationStage> | <ProductType> | Office/ Business Address   | Additional Address         | Done   | throw an error      |
#      | <ApplicationStage> | <ProductType> | Additional Address         | Alternate Business Address | Done   | not throw any error |
#      | <ApplicationStage> | <ProductType> | Additional Address         | Office/ Business Address   | Done   | not throw any error |

  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14008: <Field> field validation for <Address_City> in <Address_Type> for seller address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    And user click on add new seller address
    When user selects seller address type as "<Address_Type>"
    Then "<Field>" field for "<Address_City>" should be display as Calendar field in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field     | Address_City             | Address_Type               | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | From Date | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | To Date   | Duration at this Address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | From Date | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | To Date   | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | From Date | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | To Date   | Duration at this Address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | From Date | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | To Date   | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | From Date | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | To Date   | Duration at this Address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | From Date | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | To Date   | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | From Date | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | To Date   | Duration at this Address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | From Date | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | To Date   | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | From Date | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | To Date   | Duration at this Address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | From Date | Duration at this City    | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | To Date   | Duration at this City    | Residential Address        | 4                                 |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14009: <Field> validation for <Address_City> in <Address_Type> for seller address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    And user click on add new seller address
    And user selects seller address type as "<Address_Type>"
    And user fills To Date field for "<Address_City>" in seller address
    When user fills From Date field for "<Address_City>" in seller address
    Then "<Field>" field should be display in two separate block for "<Address_City>" in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field           | Address_City             | Address_Type               | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Residential Address        | 4                                 |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14010: <Field> calculation for <Address_City> in <Address_Type> for seller address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    And user click on add new seller address
    And user selects seller address type as "<Address_Type>"
    When user fills From Date field for "<Address_City>" in seller address
    And user fills To Date field for "<Address_City>" in seller address
    Then "<Field>" field should be calculated correctly for "<Address_City>" in seller details
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field           | Address_City             | Address_Type               | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Permanent  Address         | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Residential Address        | 4                                 |


  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14011: <Field> calculation for <Address_City> in <Address_Type> if Current Address checkbox for seller address is checked at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    And user click on add new seller address
    And user selects seller address type as "<Address_Type>"
    And user checked Current Address checkbox in seller address
    When user fills From Date field for "<Address_City>" in seller address
    Then "<Field>" field should be calculated correctly as per current system date for "<Address_City>" in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Field           | Address_City             | Address_Type               | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this address | Residential Address        | 4                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Year and Months | Duration at this City    | Residential Address        | 4                                 |


 #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14012: Adding duplicate <Address> in seller address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    When user add "<Address>" in seller address
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum2>
    And user wants to add same "<Address>" which is added already in seller address
    Then "<Address>" should "<Throw_notThrow>" message in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Address                                          | Throw_notThrow                                   | AssetDetails_sellerDetails_rowNum | AssetDetails_sellerDetails_rowNum2 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Alternate Business Address                       | throw error message-Address Type already present | 1                                 | 1                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Additional Address with purpose combination      | throw error message-Address Type already present | 0                                 | 5                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Additional Address with same purpose combination | throw error message-Address Type already present | 0                                 | 0                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Office/ Business Address                         | throw error message-Address Type already present | 2                                 | 2                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Permanent Address                                | throw error message-Address Type already present | 3                                 | 3                                  |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Residential Address                              | throw error message-Address Type already present | 4                                 | 4                                  |

 #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14013: Edit the added <Address> in seller address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    When user add "<Address>" in seller address
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 6
    And user edits "<Address>" details in seller address
    Then "<Address>" should be edited successfully in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Address                    | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Residential Address        | 4                                 |

  #Prerequisite:Application already punch with application type as Multi Asset
  #${ProductType:["IAF","MAL","Farm Equipment","AGRL"]}
  #${ApplicationStage:["Sourcing","Lead Details","DDE","Recommendation","Credit Approval","Reconsideration"]}
  #${ApplicantType:["indiv","nonindiv"]}
  #FeatureID-ACAUTOCAS-11906
  @ImplementedBy-rishabh.sachan
    @Release
  Scenario Outline: ACAUTOCAS-14014: Delete the added <Address> in seller address at <ApplicationStage> in <ProductType>
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 286
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user navigates to asset requested page for "<ApplicationStage>"
    And user reads data from the excel file "asset_details.xlsx" under sheet "home" and row 71
    And user select asset type as Used Asset
    And user select Bought From as Individual
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row <AssetDetails_sellerDetails_rowNum>
    And user open seller address accordion
    When user add "<Address>" in seller address
    And user reads data from the excel file "asset_details.xlsx" under sheet "seller_details" and row 7
    And user deletes "<Address>" in seller address
    Then "<Address>" should be deleted successfully in seller address
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | Category | Key | Address                    | AssetDetails_sellerDetails_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Additional Address         | 0                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Alternate Business Address | 1                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Office/ Business Address   | 2                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Permanent Address          | 3                                 |
      | <ApplicationStage> | <ProductType> | <ApplicantType> |          |     | Residential Address        | 4                                 |

