@Epic-Loan_Application_Details
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-rishabh.sachan
@Release
@Conventional
@Islamic
@ReviewedByDEV
Feature:Mandatory Non Mandatory Field Validation In Builder Details Accordion Of Property Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  #${ProductType:["HL","MHL"]}
  #${ApplicationStage:["DDE"]}
  #FeatureID-ACAUTOCAS-5912
  Scenario Outline: ACAUTOCAS-10055:  <Mandatory_Non_Mandatory> field validation of builder details in property details at <ApplicationStage> of <ProductType> with dataset <PropertyDetails_builderDetails_rowNum>
    And user creates application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" which has not any attached primary collateral
    When user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens property details section at "<ApplicationStage>" stage
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 122
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row <PropertyDetails_builderDetails_rowNum>
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user saves property details
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row <PropertyDetails_builderDetails_rowNum>
    Then "<error_success>" message is displayed in builder detials section
    Examples:
      | PropertyDetails_builderDetails_rowNum | Mandatory_Non_Mandatory | error_success | ProductType | ApplicationStage |
      | 15                                    | Mandatory               | error         | HL          | DDE              |
      | 16                                    | Mandatory               | error         | HL          | DDE              |
      | 17                                    | Mandatory               | error         | HL          | DDE              |
      | 18                                    | Non Mandatory           | success       | HL          | DDE              |
      | 19                                    | Non Mandatory           | success       | HL          | DDE              |
      | 20                                    | Non Mandatory           | success       | HL          | DDE              |
      | 21                                    | Non Mandatory           | success       | HL          | DDE              |
