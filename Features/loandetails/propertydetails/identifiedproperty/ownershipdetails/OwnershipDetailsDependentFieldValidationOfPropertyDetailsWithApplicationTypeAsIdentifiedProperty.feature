@Epic-Loan_Application_Details
@AuthoredBy-ayush.garg
@ReviewedBy-None
@ReviewedByDEV
@ReleaseLoanAppM5
@Conventional
@Islamic
Feature: Ownership Details Dependent Field Validation Of Property Details With Application Type As Identified Property

  @ImplementedBy-ayush.garg
  @Release1
  Scenario Outline: ACAUTOCAS-4993:  Selecting Owner Type as <Owner_Type>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_ownership_details>" and row <PropertyDetails_ownership_details_rowNum>
    When user selects the owner type as "<Owner_Type>"
    Then "<Field_Name>" should not editable
    Examples:
      | Owner_Type     | Field_Name                 | Mandatory_NonMandatory | Application_Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetails_ownership_details | PropertyDetails_ownership_details_rowNum |
      | Current/Future | To Date in Ownership Dates | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 13                                       |
      | Previous       | Linked Applicant           | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 1         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 13                                       |

  @ImplementedBy-ayush.garg
  @Release1
  Scenario Outline: ACAUTOCAS-4994:  Selecting Ownership Status as <Owner_Status>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_ownership_details>" and row <PropertyDetails_ownership_details_rowNum>
    When user selects the ownership status as "<Owner_Status>"
    Then "<Field_Name>" should be "<Editable_NotEditable>" in ownership details

    Examples:
      | Editable_NotEditable | Owner_Status | Field_Name    | Loan_Type | Mandatory_NonMandatory | Application_Type    | SourceDataFile       | SheetName | RowNumber | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetails_ownership_details | PropertyDetails_ownership_details_rowNum |
      | non editable         | Single       | Percent Share | Home Loan | mandatory              | Property Identified | LoginDetailsCAS.xlsx | LoginData | 2         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 13                                       |
      | editable             | Joint        | Percent Share | Home Loan | mandatory              | Property Identified | LoginDetailsCAS.xlsx | LoginData | 2         | property_details.xlsx | home                 | 0                           | sourcing_details.xlsx | home                 | 33                          | ownership_details                 | 13                                       |

  @ImplementedBy-richa.singh
  @Release3
     #FeatureID-ACAUTOCAS-177
    # ${ApplicationStage:["Login Acceptance","DDE","Recommendation", "Credit Approval","Reconsideration","ICD"]}
  Scenario Outline: ACAUTOCAS-14071:  Validate <Field_Name> is non editable on selecting Owner Type as <Owner_Type> in property details at <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "hl" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row <PropertyDetails_ownershipDetails_rowNum>
    And user selects owner type
    Then "<Field_Name>" is non editable in ownership details
    Examples:
      | Owner_Type     | Field_Name                 | PropertyDetails_ownershipDetails_rowNum | ApplicationStage   |
      | Current/Future | To Date in Ownership Dates | 21                                      | <ApplicationStage> |
      | Previous       | Linked Applicant           | 20                                      | <ApplicationStage> |

  @ImplementedBy-richa.singh
  @Release3
  #FeatureID-ACAUTOCAS-177
  # ${ApplicationStage:["Login Acceptance","DDE","Recommendation", "Credit Approval","Reconsideration","ICD"]}
  Scenario Outline: ACAUTOCAS-14072: Validate percentage share is <Editable_NotEditable> on selecting Ownership Status as <Owner_Status> in property details at <ApplicationStage>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user opens an application of "hl" product type as "indiv" applicant at "<ApplicationStage>" from application grid
    And user is on property Details Page of "<ApplicationStage>"
    And user reads data from the excel file "property_details.xlsx" under sheet "ownership_details" and row <PropertyDetails_ownershipDetails_rowNum>
    And user selects ownership status
    Then percentage share is "<Editable_NotEditable>"
    Examples:
      | Editable_NotEditable | Owner_Status | PropertyDetails_ownershipDetails_rowNum | ApplicationStage   |
      | non editable         | Single       | 20                                      | <ApplicationStage> |
      | editable             | Joint        | 18                                      | <ApplicationStage> |
