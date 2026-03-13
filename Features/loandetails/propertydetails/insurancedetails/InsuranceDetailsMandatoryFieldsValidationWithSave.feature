@Epic-Loan_Application_Details
@AuthoredBy-vipin.kishor
@ImplementedBy-akash.bansal
@ReviewedBy-None
@Release2
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-12009
Feature: Insurance mandatory field validation with save in property detail page

  Scenario Outline: ACAUTOCAS-14085:  Fill insurance details in property page details without <Field_Name> as <Validity> data
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
    And user saves property details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_insurance>" and row <PropertyDetails_insurance_rowNum>
    When user fills insurance details without "<Field_Name>"
    Then insurance details not saved without "<Field_Name>" and "<Throws_notThrows>" "<Error_Message>"
    Examples:
      | Validity | Field_Name        | Mandatory_NonMandatory | Application_Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_insurance | PropertyDetails_insurance_rowNum | Throws_notThrows                   | Error_Message           |
      | invalid  | Insurance Company | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 24                               | throws an error with error message | This field is required. |
      | invalid  | Coverage Type     | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 25                               | throws an error with error message | This field is required. |
      | invalid  | Coverage Amount   | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 26                               | throws an error with error message | This field is required. |
      | invalid  | Premium Amount    | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 27                               | throws an error with error message | This field is required. |
      | invalid  | Loss Payee        | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 28                               | throws an error with error message | This field is required. |

