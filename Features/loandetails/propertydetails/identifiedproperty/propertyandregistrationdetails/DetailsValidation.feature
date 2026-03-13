@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Release1
@ImplementedBy-aman.nagarkoti
@ReviewedByDEV
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-4169
Feature: Property And Registration Details Validation Of Property Details with Application Type As Identified Property
@Sanity
  Scenario Outline: ACAUTOCAS-5003: Fill agreement details in property and registration details with <Mandatory_NonMandatory>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "mandatory" fields for "<Application Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAndRegistration_details>" and row <PropertyDetails_propertyAndRegistration_details_rowNum>
    When user fills the agreement details with "<Mandatory_NonMandatory>"
    Then new agreement details added successfully

    Examples:
      | Mandatory_NonMandatory | Application Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_propertyAndRegistration_details | PropertyDetails_propertyAndRegistration_details_rowNum |
      | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | property_&_registration_details                 | 0                                                      |
      | all                    | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | property_&_registration_details                 | 0                                                      |

  Scenario Outline: ACAUTOCAS-5004: Adding agreement details <number of> times in property and registration details with <Mandatory_NonMandatory>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "mandatory" fields for "<Application Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAndRegistration_details>" and row <PropertyDetails_propertyAndRegistration_details_rowNum>
    When user fills the agreement details <number of> times with "<Mandatory_NonMandatory>"
    Then <number of> agreement details saved successfully

    Examples:
      | number of | Mandatory_NonMandatory | Application Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_propertyAndRegistration_details | PropertyDetails_propertyAndRegistration_details_rowNum |
      | 2         | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | property_&_registration_details                 | 0                                                      |
      | 2         | all                    | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | property_&_registration_details                 | 0                                                      |


  Scenario Outline: ACAUTOCAS-5005: Deleting agreement details in property and registration details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "mandatory" fields for "<Application Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAndRegistration_details>" and row <PropertyDetails_propertyAndRegistration_details_rowNum>
    And user fills the agreement details with "<Mandatory_NonMandatory>"
    When user deletes the agreement details
    Then agreement details deleted successfully

    Examples:
      | Mandatory_NonMandatory | Application Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_propertyAndRegistration_details | PropertyDetails_propertyAndRegistration_details_rowNum |
      | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | property_&_registration_details                 | 0                                                      |
