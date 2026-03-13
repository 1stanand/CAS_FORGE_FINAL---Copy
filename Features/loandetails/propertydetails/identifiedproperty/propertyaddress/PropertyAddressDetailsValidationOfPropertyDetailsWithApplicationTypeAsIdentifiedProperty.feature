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
Feature: Property Address Details Validation Of Property Details with Application Type As Identified Property

  Scenario Outline: ACAUTOCAS-4992: Fill the property address details with <Mandatory_NonMandatory> fields
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "mandatory" fields for "<Application Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    And user fills other details of identified ready property
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    When user fills the property address with "<Mandatory_NonMandatory>" fields
    Then property address saved successfully

    Examples:
      | Application Type    | Loan_Type | Mandatory_NonMandatory | SourceDataFile       | SheetName | RowNumber | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum |
      | Property Identified | Home Loan | mandatory              | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | property_address                | 0                                      | other_details                | 0                                   |
      | Property Identified | Home Loan | all                    | LoginDetailsCAS.xlsx | LoginData | 7         | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | property_address                | 0                                      | other_details                | 0                                   |
