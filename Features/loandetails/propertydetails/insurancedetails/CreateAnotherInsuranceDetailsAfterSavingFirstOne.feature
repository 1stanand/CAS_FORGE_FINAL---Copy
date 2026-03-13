@Epic-Loan_Application_Details
@AuthoredBy-vipin.kishor
@ImplementedBy-akash.bansal
@ReviewedBy-None
@Release2
@Reconciled
@Conventional
#FeatureID-ACAUTOCAS-12009
Feature:Create another insurance details after creating one in property details

  @Sanity
  Scenario Outline: ACAUTOCAS-14078:  Fill <NumberOfDetails> insurance details at once without exiting the insurance details using <Validity> <Mandatory_All> field
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    And user fills other details of property details with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    And user fills property address with "<Mandatory_NonMandatory>" fields for "<Application_Type>"
    And user saves property details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_insurance>" and row <PropertyDetails_insurance_rowNum>
    When user creates <NumberOfDetails> insurance details after creating first insurance details with "<Mandatory_All>" fields
    Then <NumberOfDetails> insurance details saved successfully


    Examples:
      | Validity | Mandatory_All | NumberOfDetails | Mandatory_NonMandatory | Application_Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_insurance | PropertyDetails_insurance_rowNum |
      | valid    | all           | 2               | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 40                               |
      | valid    | all           | 1               | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 40                               |


#    Examples:
#      | Loan_Type | Mandatory_NonMandatory_Fields | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | NumberOfDetails |
#      | Home loan |                               | LoginDetailsCAS.xlsx | LoginData | 7         |               |                     |                            | 2               |
#      | Home loan |                               | LoginDetailsCAS.xlsx | LoginData | 7         |               |                     |                            |                 |


  Scenario Outline: ACAUTOCAS-14079:  Opening another Insurance details screen after saving first details with <Validity> <Mandatory_All> fields
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
    When user creating another insurance details after saving first details with "<Mandatory_All>" fields
    Then insurance details screen should be open to fill another details as soon as the first details are saved

    Examples:
      | Validity | Mandatory_All | Mandatory_NonMandatory | Application_Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_insurance | PropertyDetails_insurance_rowNum |
      | valid    | all           | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 40                               |

#    Examples:
#      | Loan_Type | Mandatory_NonMandatory_Fields | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB | LoanDetails_receipt | LoanDetails_receipt_rowNum | NumberOfDetails |
#      | Home loan |                               | LoginDetailsCAS.xlsx | LoginData | 7         |               |                     |                            | 2               |
#      | Home loan |                               | LoginDetailsCAS.xlsx | LoginData | 7         |               |                     |                            |                 |
