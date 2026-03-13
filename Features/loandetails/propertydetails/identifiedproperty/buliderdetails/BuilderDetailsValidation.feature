@Epic-Loan_Application_Details
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@Conventional
Feature:Builder Details Validation In  Property Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  #${ProductType:["HL","MHL"]}
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE"]}
  #FeatureID-ACAUTOCAS-5912
  @ImplementedBy-akash.bansal
    
    @Release
    @Sanity
  Scenario Outline: ACAUTOCAS-10042: Validating successfully add builder details in property details at lead details of <ProductType> application
    And user creates application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" which has not any attached primary collateral
    And user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens property details section at "<ApplicationStage>" stage
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 14
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    When user saves the property details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    Then builder details are saved successfully
    Examples:
      | ProductType   | ApplicationStage   |
      | <ProductType> | <ApplicationStage> |


     #we can not add property details after dde because property details are mandatory on dde so we can edit these on further stages
  #ICD stage:After in-principle approval at credit approval ICD stage is displayed
  #${ProductType:["HL","MHL"]}
  # ${ApplicationStage:["Recommendation","Credit Approval","Reconsideration","ICD"]}
  #FeatureID-ACAUTOCAS-5912
  @ImplementedBy-akash.bansal
    @Release
  Scenario Outline: ACAUTOCAS-10044: Validating successfully edit builder details in property details at "<ApplicationStage>" stage of <ProductType> application
    And user creates application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "" with "" which has not any attached primary collateral
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<InitialStage>" for "" with "" from application grid
    And user opens property details section at "<InitialStage>" stage
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 28
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 14
    And user fills the builder details
    And user reads data from the excel file "property_details.xlsx" under sheet "other_details" and row 0
    And user fills other details
    And user reads data from the excel file "property_details.xlsx" under sheet "property_address" and row 0
    And user fills the property address
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row 19
    And user fills the ownership details
    And user check for dedupe
    When user saves the property details
    And user moves application from "<InitialStage>" stage to application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<key>" stage without opening it
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens property details section at "<InitialStage>" stage
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 23
    And user fills the builder details
    And user check for dedupe
    And user saves the property details
    Then builder details are saved successfully
    Examples:
      | ProductType   | ApplicationStage   | InitialStage | ApplicantType | Category | key |
      | <ProductType> | <ApplicationStage> | Lead Details | indiv         |          |     |
