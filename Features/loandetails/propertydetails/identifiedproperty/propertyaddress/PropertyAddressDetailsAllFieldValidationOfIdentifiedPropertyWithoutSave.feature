@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@Release2
@ImplementedBy-aman.nagarkoti
@Reconciled
@ReviewedByDEV
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-4169
Feature:Property Address Details All field Validation of Property Details With Application Type As Identified Property Without Save

  Scenario Outline: ACAUTOCAS-4991: Entering <Validity> <Field_Name> <Validity_Reason> in property address details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    When user enters "<Validity>" "<Field_Name>" "<Validity_Reason>" in property address details
    Then application "<Throws_notThrows>" at "<Field_Name>"

    Examples:
      | Validity | Field_Name     | Validity_Reason     | Mandatory_NonMandatory | Application Type    | Throws_notThrows         | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_home | PropertyDetails_home_rowNum |
      | valid    | Full Address   | with_max_characters | mandatory              | Property Identified | does not throw any error | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | property_address                | 6                                      | home                 | 0                           |
      | valid    | Full Address   |                     | mandatory              | Property Identified | does not throw any error | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | property_address                | 7                                      | home                 | 0                           |
      | valid    | Plot Number    |                     | mandatory              | Property Identified | does not throw any error | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | property_address                | 8                                      | home                 | 0                           |
      | valid    | Plot Number    | with_max_characters | mandatory              | Property Identified | does not throw any error | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | property_address                | 9                                      | home                 | 0                           |
      | valid    | Address Line 2 | with_max_characters | mandatory              | Property Identified | does not throw any error | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | property_address                | 10                                     | home                 | 0                           |
      | valid    | Address Line 2 |                     | mandatory              | Property Identified | does not throw any error | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | property_address                | 11                                     | home                 | 0                           |
      | valid    | Address Line 3 | with_max_characters | mandatory              | Property Identified | does not throw any error | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | property_address                | 12                                     | home                 | 0                           |
      | valid    | Address Line 3 |                     | mandatory              | Property Identified | does not throw any error | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | property_address                | 13                                     | home                 | 0                           |
      | valid    | Landmark       | with_max_characters | mandatory              | Property Identified | does not throw any error | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | property_address                | 14                                     | home                 | 0                           |
      | valid    | Landmark       |                     | mandatory              | Property Identified | does not throw any error | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | property_address                | 15                                     | home                 | 0                           |
