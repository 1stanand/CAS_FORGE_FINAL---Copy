@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-harshprit.kumar
@ReleaseLoanAppM5
@ReviewedByDEV
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-4169
Feature:Dependent Field Validation Of Property Details With Application Type As Non Identified Property

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 7

  @ImplementedBy-harshprit.kumar
  @Release1
  Scenario Outline: ACAUTOCAS-4094:  Selection of application type As non identified property <Tab_Name> is not displayed
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    When user selects application type as non identified property
    And user selects collateral sub type as ready property
    Then "<Tab_Name>" is not displayed

    Examples:
      | Tab_Name                          | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Other Details                     | Home Loan | sourcing_details.xlsx | home                 | 33                          |
      | Property Address                  | Home Loan | sourcing_details.xlsx | home                 | 33                          |
      | Property And Registration Details | Home Loan | sourcing_details.xlsx | home                 | 33                          |
      | Ownership Detail                  | Home Loan | sourcing_details.xlsx | home                 | 33                          |


  #validation
  #source from squash-159346
  #FeatureID-ACAUTOCAS-4169
  @ImplementedBy-pallavi.singh
  @Release3
  Scenario Outline: ACAUTOCAS-11779: <Field> become non mandatory on adding application type as non identified at lead details
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 33
    And user fills sourcing details
    When user selects application type as non identified property
    Then "<Field>" become non mandatory
    Examples:
      | Field                                |
      | Collateral Sub Type/Property Details |
      | Type Of Purchase                     |
      | Property Type                        |
      | Nature of Property                   |

  #validation
  #source from squash-159348
  #FeatureID-ACAUTOCAS-4169
  #${ProductType : ["HL"]}
  #${ApplicationStage:["Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","disbursal initiation"]}
  #${ApplicantType:["indiv"]}
  @ImplementedBy-pallavi.singh
  @Release3
  Scenario Outline: ACAUTOCAS-11780: <Field> become non mandatory on adding application type as non identified at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    When user selects non identified property as a primary collateral
    Then "<Field>" become non mandatory
    Examples:
      | Field                                | ApplicationStage   | ProductType   | ApplicantType   |
      | Collateral Sub Type/Property Details | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | Type Of Purchase                     | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | Property Type                        | <ApplicationStage> | <ProductType> | <ApplicantType> |
      | Nature of Property                   | <ApplicationStage> | <ProductType> | <ApplicantType> |

  @ImplementedBy-harshprit.kumar
  @Release1
  Scenario Outline: ACAUTOCAS-4095:  Selection of property type in property details as non identified property
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user selects application type as non identified property
    And user selects collateral sub type as ready property
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user selects the property type
    Then nature of property automatically selected

    Examples:
      | Loan_Type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | Home Loan | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           |

  #check for duplicates button is disabled at lead
  @ImplementedBy-pallavi.singh
  @Release3
  Scenario Outline: ACAUTOCAS-11781: Validate check for duplicates button is disabled on adding non identified property details for collateral subtype as <collateral_Subtype> at lead details
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 33
    And user fills sourcing details
    And user selects non identified property as a primary collateral
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    When user selects collateral sub type
    Then check for duplicates button is disabled
    Examples:
      | collateral_Subtype                  | PropertyDetails_home_rowNum |
      | Ready Property                      | 25                          |
      | Plot + Self Construction            | 26                          |
      | Construction On Land                | 27                          |
      | Builder Property Under Construction | 28                          |
      | Purchase a Plot                     | 29                          |

  @ImplementedBy-pallavi.singh
  @Release3
  Scenario Outline: ACAUTOCAS-11782: Validate view dedupe history hyperlik is disabled on adding non identified property details for collateral subtype as <collateral_Subtype> at lead details
    And user creates new application for "Home Loan"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 33
    And user fills sourcing details
    And user selects non identified property as a primary collateral
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    When user selects collateral sub type
    Then view de dupe history hyperlink is disabled
    Examples:
      | collateral_Subtype                  | PropertyDetails_home_rowNum |
      | Ready Property                      | 25                          |
      | Plot + Self Construction            | 26                          |
      | Construction On Land                | 27                          |
      | Builder Property Under Construction | 28                          |
      | Purchase a Plot                     | 29                          |


  #${ProductType : ["HL"]}
  #${ApplicationStage:["Login Acceptance","DDE"]}
  #${ApplicantType:["indiv"]}
  @ImplementedBy-pallavi.singh
  @Release3
  Scenario Outline: ACAUTOCAS-11783: View dedupe history hyperlik is disabled on adding non identified property details for collateral subtype as <collateral_Subtype> at <ApplicationStage> stage
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    And user selects non identified property as a primary collateral
    And user reads data from the excel file "property_details.xlsx" under sheet "home" and row <PropertyDetails_home_rowNum>
    When user selects collateral sub type
    Then view de dupe history hyperlink is disabled
    Examples:
      | ApplicationStage   | ProductType   | ApplicantType   | collateral_Subtype                  | PropertyDetails_home_rowNum |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Ready Property                      | 25                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Plot + Self Construction            | 26                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Construction On Land                | 27                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Builder Property Under Construction | 28                          |
      | <ApplicationStage> | <ProductType> | <ApplicantType> | Purchase a Plot                     | 29                          |
