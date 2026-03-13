@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-None
@ImplementedBy-utkarsh.tiwari
@Release1
@Conventional

Feature: Validating CERSAI Details in property Details


  Scenario Outline: ACAUTOCAS-4057:  Fill CERSAI Details with <Field_Name> fields
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    And user fills other details of property details with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    And user fills property address with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user saves property details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_cersai>" and row <PropertyDetails_cersai_rowNum>
    And user fill CERSAI details with "<Field_Name>" fields
    Then <Field_Name> fields of CERSAI details save successfully


    Examples:
      | Mandatory_NonMandatory | Application_Type    | Loan_Type | Field_Name | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |  | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_cersai | PropertyDetails_cersai_rowNum |
      | mandatory              | Property Identified | Home Loan | all        | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          |  | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | cersai_details         | 0                             |

