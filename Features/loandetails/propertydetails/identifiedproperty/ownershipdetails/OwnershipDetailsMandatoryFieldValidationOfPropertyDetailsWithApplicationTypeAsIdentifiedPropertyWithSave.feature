@Epic-Loan_Application_Details
@AuthoredBy-ayush.garg
@ReviewedBy-None
@ImplementedBy-ayush.garg
@Release1
@ReviewedByDEV
@Conventional
@Islamic
Feature: Ownership Details Mandatory field Validation of Property Details With Application Type As Identified Property With Save


  Scenario Outline:  ACAUTOCAS-4995: Save Ownership details without <FieldName>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    And user fills other details of property details with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    And user fills property address with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_ownership_details>" and row <PropertyDetails_ownership_details_rowNum>
    When user fills ownership details without "<FieldName>"
    Then "<FieldName>" should "<ThrowsOrNot>" an error

    Examples:
      | FieldName        | Loan_Type | Mandatory_NonMandatory | ThrowsOrNot | Application_Type    | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_ownership_details | PropertyDetails_ownership_details_rowNum |
      | Owner Type       | Home Loan | mandatory              | throw       | Property Identified | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | ownership_details                 | 18                                       |
      | Ownership Status | Home Loan | mandatory              | throw       | Property Identified | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | ownership_details                 | 18                                       |
      | Owner Name       | Home Loan | mandatory              | throw       | Property Identified | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | ownership_details                 | 18                                       |
      | Linked Applicant | Home Loan | mandatory              | throw       | Property Identified | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | ownership_details                 | 18                                       |
      | Percent Share    | Home Loan | mandatory              | throw       | Property Identified | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | ownership_details                 | 18                                       |


  Scenario Outline: ACAUTOCAS-4088:  Save the Ownership details without <FieldName>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    And user fills other details of property details with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    And user fills property address with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_ownership_details>" and row <PropertyDetails_ownership_details_rowNum>
    When user fills ownership details without "<FieldName>"
    Then ownership details should be saved
    Examples:
      | FieldName       | Loan_Type | Mandatory_NonMandatory | Application_Type    | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_ownership_details | PropertyDetails_ownership_details_rowNum |
      | Ownership Dates | Home Loan | mandatory              | Property Identified | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | ownership_details                 | 18                                       |

