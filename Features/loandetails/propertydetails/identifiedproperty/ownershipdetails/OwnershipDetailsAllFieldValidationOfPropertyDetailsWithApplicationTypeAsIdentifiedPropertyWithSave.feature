@Epic-Loan_Application_Details
@AuthoredBy-ayush.garg
@ReviewedBy-None
@ReviewedByDEV
@ReleaseLoanAppM5
@Conventional
@Islamic

Feature: Ownership Details All Field Validation Of Property Details without save


  @ImplementedBy-ayush.garg
    @Release1
  Scenario Outline:ACAUTOCAS-4996:  Enter <Validity> <Field_Name> <Validity_Reason> in ownership details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_ownership_details>" and row <PropertyDetails_ownership_details_rowNum>
    When user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in ownership details
    Then "<Field_Name>" should "<Save_Or_Not>"
    Examples:
      | Validity | Field_Name      | Save_Or_Not  | Mandatory_NonMandatory | Application_Type    | Validity_Reason                                   | Loan_Type | SourceDataFile       | SheetName | RowNumber | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetails_ownership_details | PropertyDetails_ownership_details_rowNum |
      | valid    | owner name      | be saved     | mandatory              | Property Identified |                                                   | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 0                                        |
      | valid    | owner name      | be saved     | mandatory              | Property Identified | with maximum input length                         | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 0                                        |
      | valid    | owner name      | be saved     | mandatory              | Property Identified | with .'                                           | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 1                                        |
      | invalid  | Percent Share   | not be saved | mandatory              | Property Identified | with characters                                   | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 3                                        |
      | invalid  | Percent Share   | not be saved | mandatory              | Property Identified | with special character                            | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 4                                        |
      | invalid  | Percent Share   | not be saved | mandatory              | Property Identified | with space                                        | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 5                                        |
      | invalid  | Percent Share   | not be saved | mandatory              | Property Identified | with value more than 100                          | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 6                                        |
      | invalid  | Percent Share   | not be saved | mandatory              | Property Identified | with alpha numeric characters                     | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 7                                        |
      | valid    | Percent Share   | be saved     | mandatory              | Property Identified |                                                   | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 8                                        |
      | valid    | Ownership Dates | be saved     | mandatory              | Property Identified | as date greater than current date                 | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 9                                        |
      | invalid  | Ownership Dates | not be saved | mandatory              | Property Identified | as date having 2 month greater from current month | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 10                                       |
      | invalid  | Ownership Dates | not be saved | mandatory              | Property Identified | as format except dd/MM/yyyy                       | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 11                                       |
      | invalid  | Ownership Dates | not be saved | mandatory              | Property Identified | as from date greater than to date                 | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 12                                       |
      | valid    | Ownership Dates | be saved     | mandatory              | Property Identified |                                                   | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 13                                       |
      | valid    | owner name      | be saved     | mandatory              | Property Identified | as space                                          | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 15                                       |
      | invalid  | owner name      | not be saved | mandatory              | Property Identified | with character and special character              | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 16                                       |

  @ImplementedBy-ayush.garg
    @Release1
  Scenario Outline: ACAUTOCAS-4084:  Enter the <Validity> <Field_Name> <Validity_Reason> in ownership details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_ownership_details>" and row <PropertyDetails_ownership_details_rowNum>
    When user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in ownership details
    Then "<Field_Name>" should "<Save_Or_Not>" in ownership details
    Examples:
      | Validity | Field_Name | Save_Or_Not  | Mandatory_NonMandatory | Application_Type    | Validity_Reason          | Loan_Type | SourceDataFile       | SheetName | RowNumber | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetails_ownership_details | PropertyDetails_ownership_details_rowNum |
      | valid    | owner name | be saved     | mandatory              | Property Identified | with space               | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 14                                       |
      | invalid  | owner name | not be saved | mandatory              | Property Identified | as %$#@                  | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 2                                        |
      | valid    | owner name | be saved     | mandatory              | Property Identified | with digit and character | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 17                                       |

  @ImplementedBy-pallavi.singh
    @Release3
  #FeatureID-ACAUTOCAS-177
  #${ProductType:["HL"]}
  #${ApplicantType:["indiv"]}
  #${ApplicationStage:["Login Acceptance","DDE","Recommendation","Credit Approval","Reconsideration","ICD"]}
  Scenario Outline: ACAUTOCAS-14070: Enter <Validity> <Field_Name> <Validity_Reason> in ownership details at <Stage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row <PropertyDetails_ownershipDetails_rowNum>
    And user opens ownership accordion
    And user selects owner type
    When user enters "<Field_Name>" in ownership detail
    Then error message is "<display_or_not>" for "<Field_Name>" in ownership detail
    Examples:
      | Validity | Field_Name           | display_or_not | Validity_Reason                                   | PropertyDetails_ownershipDetails_rowNum | ApplicationStage   | ApplicantType   | ProductType   |
      | valid    | Owner Name           | not displayed  |                                                   | 22                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | valid    | Owner Name           | not displayed  | with .'                                           | 23                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | valid    | Owner Name           | not displayed  | as space                                          | 24                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | valid    | Owner Name           | displayed      | with character and special character              | 25                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | invalid  | Percent Share        | displayed      | with characters                                   | 26                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | invalid  | Percent Share        | displayed      | with special character                            | 27                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | invalid  | Percent Share        | displayed      | with space                                        | 28                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | invalid  | Percent Share        | displayed      | with value more than 100                          | 29                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | invalid  | Percent Share        | displayed      | with alpha numeric characters                     | 30                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | valid    | Percent Share        | not displayed  |                                                   | 31                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | invalid  | Ownership Dates From | displayed      | as date greater than current date                 | 32                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | invalid  | Ownership Dates From | displayed      | as date having 2 month greater from current month | 33                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | invalid  | Ownership Dates From | displayed      | as format except dd/MM/yyyy                       | 34                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | invalid  | Ownership Dates From | displayed      | as from date greater than to date                 | 35                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | valid    | Ownership Dates From | not displayed  |                                                   | 36                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | valid    | Ownership Dates To   | not displayed  | as date greater than current date                 | 37                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | valid    | Ownership Dates To   | not displayed  | as date having 2 month greater from current month | 38                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | invalid  | Ownership Dates To   | displayed      | as format except dd/MM/yyyy                       | 39                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
      | valid    | Ownership Dates To   | not displayed  |                                                   | 40                                      | <ApplicationStage> | <ApplicantType> | <ProductType> |
