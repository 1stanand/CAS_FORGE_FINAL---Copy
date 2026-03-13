@Epic-Loan_Application_Details
@AuthoredBy-vipin.kishor
@ImplementedBy-akash.bansal
@ReviewedBy-None
@Release2
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-12009
Feature:Fill insurance details in property details page

  @Sanity
  Scenario Outline: ACAUTOCAS-14081:  Saving insurance details in property details using <Validity> <Mandatory_All> field
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
    When user fills insurance details with "<Mandatory_All>" fields
    Then insurance details saved successfully

    Examples:
      | Validity | Mandatory_All | Mandatory_NonMandatory | Application_Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_insurance | PropertyDetails_insurance_rowNum |
      | valid    | mandatory     | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 46                               |
      | valid    | all           | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 47                               |


#    Examples:
#      | Loan_Type | Mandatory_NonMandatory_Fields | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB | LoanDetails_receipt | LoanDetails_receipt_rowNum |
#      | Home loan |                               | LoginDetailsCAS.xlsx | LoginData | 7         |               |                     |                            |
#      | Home loan |                               | LoginDetailsCAS.xlsx | LoginData | 7         |               |                     |                            |


  Scenario Outline: ACAUTOCAS-14082:  adding multiple insurance details in property details using <Validity> <Mandatory_NonMandatory_Fields> field
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
    When user fills <Multiple> insurance details with "<Mandatory_All>" fields
    Then insurance details saved successfully

    Examples:
      | Validity | Multiple | Mandatory_All | Mandatory_NonMandatory | Application_Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_insurance | PropertyDetails_insurance_rowNum |
      | valid    | 2        | mandatory     | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 46                               |


#    Examples:
#      | Loan_Type | Mandatory_NonMandatory_Fields | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB | LoanDetails_receipt | LoanDetails_receipt_rowNum |
#      | Home loan |                               | LoginDetailsCAS.xlsx | LoginData | 7         |               |                     |                            |
