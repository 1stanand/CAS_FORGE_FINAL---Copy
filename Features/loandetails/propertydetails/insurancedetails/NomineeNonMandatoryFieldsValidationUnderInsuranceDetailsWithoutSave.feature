@Epic-Loan_Application_Details
@Release2
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ImplementedBy-tushar.chauhan@Conventional
@Islamic

#FeatureID-ACAUTOCAS-12009
Feature:Nominee non mandatory field validation under insurance details without save in property details page

  Scenario Outline: ACAUTOCAS-14094:  Validation appointee name with <inputType> in insurance details
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
    And user fills mandatory property insurance details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_insurance_nominee>" and row <PropertyDetails_insurance_nominee_rowNum>
    When user fills "<Validity>" appointee name with "<inputType>" in insurance details
    Then appointee name "<Throws_notThrows>" "<WithErrorMessage>"

    Examples:
      | Validity | inputType                           | Mandatory_NonMandatory | Application_Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_insurance | PropertyDetails_insurance_rowNum | PropertyDetails_insurance_nominee | PropertyDetails_insurance_nominee_rowNum | Throws_notThrows                   | WithErrorMessage        |
      | valid    | valid value                         | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 20                                       | does not throw any error           |                         |
      | valid    | max limit digits                    | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 21                                       | does not throw any error           |                         |
      | valid    | character                           | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 22                                       | does not throw any error           |                         |
      | invalid  | special character                   | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 23                                       | throws an error with error message | Only alphabets allowed. |
      | valid    | combination of character and digits | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 24                                       | does not throw any error           |                         |
      | valid    | space                               | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 25                                       | does not throw any error           |                         |

  Scenario Outline: ACAUTOCAS-14095:  Validation of DOB of appointee <inputType> in insurance details
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
    And user fills mandatory property insurance details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_insurance_nominee>" and row <PropertyDetails_insurance_nominee_rowNum>
    When user fills "<Validity>" appointee DOB "<inputType>" in instrument details
    Then appointee DOB "<Throws_notThrows>" "<WithErrorMessage>"
    Examples:
      | Validity | inputType              | Mandatory_NonMandatory | Application_Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_insurance | PropertyDetails_insurance_rowNum | PropertyDetails_insurance_nominee | PropertyDetails_insurance_nominee_rowNum | Throws_notThrows                   | WithErrorMessage                         |
      | valid    | with valid date        | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 26                                       | does not throw any error           |                                          |
      | invalid  | with invalid date      | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 27                                       | throws an error with error message | Please enter a valid date                |
      | invalid  | more than current date | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 28                                       | throws an error with error message | Please enter a valid date                |
      | invalid  | before 1942            | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 29                                       | throws an error with error message | Year Of Date should be greater than 1942 |

