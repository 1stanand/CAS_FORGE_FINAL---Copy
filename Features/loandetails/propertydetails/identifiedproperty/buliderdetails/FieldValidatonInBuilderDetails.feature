@Epic-Loan_Application_Details
@ReviewedBy-None
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ImplementedBy-rishabh.sachan
@Release
@Conventional
@Islamic
@Reconciled
@ReviewedByDEV
#${ProductType:["HL","MHF"]}

Feature: Field Validation In Builder Details Accordion Of Property Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  #field visibility
  #FeatureID-ACAUTOCAS-5912
  Scenario Outline: ACAUTOCAS-10045: <Field_Name> with <Type> type is visible under builder details accordion of property details at lead details of <ProductType>
    When user create new application for "<ProductType>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 23
    And user fills home page of personal information
    And user reads data from the dataTable on basis of "<ProductType>"
      | sourcing_details.xlsx | home | 278 |
      | sourcing_details.xlsx | home | 279 |
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 122
    And user fills the property details home page
    And user opens the builder details accordion on property details section
    Then "<Field_Name>" with "<Type>" is displayed under builder details accordion
    Examples:
      | Field_Name    | Type          | ProductType   |
      | Company Name  | Auto Complete | <ProductType> |
      | Project Name  | Auto Complete | <ProductType> |
      | Building Name | Auto Complete | <ProductType> |
      | Wing Name     | Auto Complete | <ProductType> |
      | Flat/Shop No. | Text Field    | <ProductType> |
      | Floor No.     | Text Field    | <ProductType> |


  #non editable field
  #FeatureID-ACAUTOCAS-5912
  Scenario Outline: ACAUTOCAS-10047: Validate <Field_Name> is non editable under builder details accordion of property details at lead details of <ProductType>
    When user create new application for "<ProductType>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 23
    And user fills home page of personal information
    And user reads data from the dataTable on basis of "<ProductType>"
      | sourcing_details.xlsx | home | 278 |
      | sourcing_details.xlsx | home | 279 |
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 122
    And user fills the property details home page
    And user opens the builder details accordion on property details section
    Then "<Field_Name>" is non editable under builder details section
    Examples:
      | Field_Name            | ProductType   |
      | Tier Of Building      | <ProductType> |
      | Building Completion % | <ProductType> |
      | APF Number            | <ProductType> |
      | APF                   | <ProductType> |


  #Tooltip Validation
  #FeatureID-ACAUTOCAS-5912
  Scenario Outline: ACAUTOCAS-10050: Validate tooltip for <Field_Name> in builder detail accordion of property details at lead detail of <ProductType>
    When user create new application for "<ProductType>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 23
    And user fills home page of personal information
    And user reads data from the dataTable on basis of "<ProductType>"
      | sourcing_details.xlsx | home | 278 |
      | sourcing_details.xlsx | home | 279 |
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 122
    And user fills the property details home page
    And user opens the builder details accordion on property details section
    And user selects the "<Field_Name>" in builder details section
    Then tooltip for "<Field_Name>" is displayed on builder details section
    Examples:
      | Field_Name    | ProductType   |
      | Company Name  | <ProductType> |
      | Project Name  | <ProductType> |
      | Building Name | <ProductType> |
      | Wing Name     | <ProductType> |
      | Flat/Shop No. | <ProductType> |
      | Floor No.     | <ProductType> |

    @LoggedBug
    Examples:
      | Field_Name            | ProductType   |
      | Tier Of Building      | <ProductType> |
      | Building Completion % | <ProductType> |
      | APF Number            | <ProductType> |

  #field validation at lead details
  #FeatureID-ACAUTOCAS-5912
  Scenario Outline: ACAUTOCAS-10051: Enter <Validity> <Field_Name> <Validity_Reason> in builder details of property details at lead details for <ProductType>
    When user create new application for "<ProductType>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 23
    And user fills home page of personal information
    And user reads data from the dataTable on basis of "<ProductType>"
      | sourcing_details.xlsx | home | 278 |
      | sourcing_details.xlsx | home | 279 |
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 122
    And user fills the property details home page
    And user opens the builder details accordion on property details section
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row <PropertyDetails_builderDetails_rowNum>
    And user enters "<Field_Name>" in builder details accordion
    Then error message is "<displayed_not_displayed>" for "<Field_Name>" in builder details accordion
    Examples:
      | Validity | Field_Name    | displayed_not_displayed | Validity_Reason              | PropertyDetails_builderDetails_rowNum | ProductType   |
      | valid    | Flat/Shop No. | not displayed           | with only digits             | 2                                     | <ProductType> |
      | invalid  | Flat/Shop No. | displayed               | with alphabetes              | 3                                     | <ProductType> |
      | invalid  | Flat/Shop No. | displayed               | with alphanumeric characters | 4                                     | <ProductType> |
      | invalid  | Flat/Shop No. | displayed               | with space                   | 5                                     | <ProductType> |
      | invalid  | Flat/Shop No. | displayed               | special characters           | 6                                     | <ProductType> |
      | valid    | Flat/Shop No. | not displayed           | with maximum length          | 7                                     | <ProductType> |
      | valid    | Floor No.     | not displayed           | with only digits             | 8                                     | <ProductType> |
      | invalid  | Floor No.     | displayed               | with alphabetes              | 9                                     | <ProductType> |
      | invalid  | Floor No.     | displayed               | with alphanumeric characters | 10                                    | <ProductType> |
      | invalid  | Floor No.     | displayed               | with space                   | 11                                    | <ProductType> |
      | invalid  | Floor No.     | displayed               | special characters           | 12                                    | <ProductType> |
      | valid    | Floor No.     | not displayed           | with maximum length          | 13                                    | <ProductType> |


  #Dependent Field validation
  #FeatureID-ACAUTOCAS-5912
  Scenario Outline: ACAUTOCAS-10053: Validate on entering building name building completion % is filled automatically under builder details of property details at lead details stage of <ProductType>
    When user create new application for "<ProductType>"
    And user reads data from the excel file "personal_information.xlsx" under sheet "home" and row 23
    And user fills home page of personal information
    And user reads data from the dataTable on basis of "<ProductType>"
      | sourcing_details.xlsx | home | 278 |
      | sourcing_details.xlsx | home | 279 |
    And user fills sourcing details
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row 122
    And user fills the property details home page
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 1
    And user fills the builder details
    Then building completion percentage is automatically filled
    Examples:
      | ProductType   |
      | <ProductType> |


  #${ApplicationStage:["Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","Post Approval","Disbursal","Disbursal Author","ICD"]}
  #FeatureID-ACAUTOCAS-5912
  Scenario Outline: ACAUTOCAS-10046: <Field_Name> with <Type> type is visible under builder details accordion of property details at <ApplicationStage> stage of <ProductType>
    And user creates application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" which has primary collateral subtype as builder property under construction
    When user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens property details section at "<ApplicationStage>" stage
    And user opens the builder details accordion on property details section
    Then "<Field_Name>" with "<Type>" is displayed under builder details accordion
    Examples:
      | Field_Name    | Type          | ApplicationStage   | ProductType   |
      | Company Name  | Auto Complete | <ApplicationStage> | <ProductType> |
      | Project Name  | Auto Complete | <ApplicationStage> | <ProductType> |
      | Building Name | Auto Complete | <ApplicationStage> | <ProductType> |
      | Wing Name     | Auto Complete | <ApplicationStage> | <ProductType> |
      | Flat/Shop No. | Text Field    | <ApplicationStage> | <ProductType> |
      | Floor No.     | Text Field    | <ApplicationStage> | <ProductType> |


  #${ApplicationStage:["Login Acceptance","DDE","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-5912
  Scenario Outline: ACAUTOCAS-10048: <Field_Name> is non editable under builder details accordion at <ApplicationStage> stage of <ProductType>
    And user creates application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" which has primary collateral subtype as builder property under construction
    When user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens property details section at "<ApplicationStage>" stage
    And user opens the builder details accordion on property details section
    Then "<Field_Name>" is non editable under builder details section
    Examples:
      | Field_Name            | ApplicationStage   | ProductType   |
      | Tier Of Building      | <ApplicationStage> | <ProductType> |
      | Building Completion % | <ApplicationStage> | <ProductType> |
      | APF Number            | <ApplicationStage> | <ProductType> |
      | APF                   | <ApplicationStage> | <ProductType> |


  #${ProductType:["HL","MHL"]}
  #${ApplicationStage:["Post Approval","Disbursal","Disbursal Author"]}
  #FeatureID-ACAUTOCAS-5912
  Scenario Outline: ACAUTOCAS-10049: Builder details are non editable at <ApplicationStage> stage of <ProductType>
    And user creates application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" which has primary collateral subtype as builder property under construction
    When user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens property details section at "<ApplicationStage>" stage
    And user opens the builder details accordion on property details section
    Then builder details are non editable
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

  #field validation at further stages after lead
  #${ProductType:["HL","MHL"]}
  #${ApplicationStage:["Login Acceptance","DDE","Credit Approval","Reconsideration"]}
  #FeatureID-ACAUTOCAS-5912
  Scenario Outline: ACAUTOCAS-10052: Enter <Validity> <Field_Name> <Validity_Reason> in builder details of property details at <ApplicationStage> stage of <ProductType>
    And user creates application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" which has primary collateral subtype as builder property under construction
    When user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens property details section at "<ApplicationStage>" stage
    And user opens the builder details accordion on property details section
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row <PropertyDetails_builderDetails_rowNum>
    And user enters "<Field_Name>" in builder details accordion
    Then error message is "<displayed_not_displayed>" for "<Field_Name>" in builder details accordion
    Examples:
      | Validity | Field_Name    | displayed_not_displayed | Validity_Reason              | PropertyDetails_builderDetails_rowNum | ApplicationStage   | ProductType   |
      | valid    | Flat/Shop No. | not displayed           | with only digits             | 2                                     | <ApplicationStage> | <ProductType> |
      | invalid  | Flat/Shop No. | displayed               | with alphabetes              | 3                                     | <ApplicationStage> | <ProductType> |
      | invalid  | Flat/Shop No. | displayed               | with alphanumeric characters | 4                                     | <ApplicationStage> | <ProductType> |
      | invalid  | Flat/Shop No. | displayed               | with space                   | 5                                     | <ApplicationStage> | <ProductType> |
      | invalid  | Flat/Shop No. | displayed               | special characters           | 6                                     | <ApplicationStage> | <ProductType> |
      | valid    | Flat/Shop No. | not displayed           | with maximum length          | 7                                     | <ApplicationStage> | <ProductType> |
      | valid    | Floor No.     | not displayed           | with only digits             | 8                                     | <ApplicationStage> | <ProductType> |
      | invalid  | Floor No.     | displayed               | with alphabetes              | 9                                     | <ApplicationStage> | <ProductType> |
      | invalid  | Floor No.     | displayed               | with alphanumeric characters | 10                                    | <ApplicationStage> | <ProductType> |
      | invalid  | Floor No.     | displayed               | with space                   | 11                                    | <ApplicationStage> | <ProductType> |
      | invalid  | Floor No.     | displayed               | special characters           | 12                                    | <ApplicationStage> | <ProductType> |
      | valid    | Floor No.     | not displayed           | with maximum length          | 13                                    | <ApplicationStage> | <ProductType> |


  #${ProductType:["HL","MHL"]}
  #${ApplicationStage:["Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","ICD"]}
  #FeatureID-ACAUTOCAS-5912
  Scenario Outline: ACAUTOCAS-10054: Validate on entering building name building completion % is filled automatically under builder details of property details at <ApplicationStage> stage of <ProductType>
    And user creates application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" which has primary collateral subtype as builder property under construction
    When user opens an application of "<ProductType>" product type as "indiv" applicant at "<ApplicationStage>" for "" with "" from application grid
    And user opens property details section at "<ApplicationStage>" stage
    And user opens the builder details accordion on property details section
    And user reads data from the excel file "property_details.xlsx" under sheet "builder_details" and row 1
    And user fills the builder details
    Then building completion percentage is automatically filled
    Examples:
      | ApplicationStage   | ProductType   |
      | <ApplicationStage> | <ProductType> |

