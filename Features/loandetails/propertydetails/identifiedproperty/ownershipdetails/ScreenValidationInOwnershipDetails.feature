@Epic-Loan_Application_Details
@ReviewedBy-None
@ReleaseLoanAppM5
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-aman.nagarkoti
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-173
Feature:Screen Validation In Ownership Details In Property Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

    ###GWTType:FieldValidation
   ####exploration
  #FeatureID-ACAUTOCAS-173
  #${ApplicationStage:["Lead Details","Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","post approval","disbursal initiation","Disbursal Author"]}
  #${applicantType:["indiv","nonindiv"]}
  #${ProductType:["HL","MHF"]}
  Scenario Outline: ACAUTOCAS-11774: Validate fields are displayed under ownership details in property details at <ApplicationStage>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens the property details for "<ApplicationStage>" stage
    When user opens the ownership details accordion
    Then Fields with type are displayed in Property Details page
      | Owner Type           | dropdown |
      | Ownership Status     | dropdown |
      | Owner Name           | input    |
      | Linked Applicant     | dropdown |
      | Percent Share        | input    |
      | Ownership Dates From | date     |
      | Ownership Dates To   | date     |
      | Delete               | url      |
    Examples:
      | ApplicationStage   | ProductType   | applicantType   |
      | <ApplicationStage> | <ProductType> | <applicantType> |

  #Tooltip Validation
   #${ProductType:["HL","MHL"]}
  Scenario Outline: ACAUTOCAS-11775: Validate tooltip for <Field_Name> in ownership details accordion of property details at lead detail of <ProductType>
    And user creates new application for "<ProductType>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 33
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 0
    And user fills property details home page with "mandatory" fields for "Property Identified"
    When user opens the ownership details accordion
    Then tooltip for Field Name is displayed upon selecting the field in Property Details Screen
      | Owner Type           |
      | Ownership Status     |
      | Owner Name           |
      | Linked Applicant     |
      | Percent Share        |
      | Ownership Dates From |
      | Ownership Dates To   |
    Examples:
      | ProductType   |
      | <ProductType> |