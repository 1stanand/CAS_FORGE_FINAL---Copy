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
Feature:Property And Registration Details Mandatory Field Validation Of Property Details With Application Type As Identified Property With Save

  Scenario Outline: ACAUTOCAS-14073:  Validation of mandatory fields of agreement details without <FieldName>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAndRegistration_details>" and row <PropertyDetails_propertyAndRegistration_details_rowNum>
    When user fills agreement details without "<FieldName>" and saves the agreement
    Then proper error message should be displayed at "<FieldName>" in new agreement details
    Examples:
      | Mandatory_NonMandatory | Application Type    | FieldName           | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_propertyAndRegistration_details | PropertyDetails_propertyAndRegistration_details_rowNum |
      | mandatory              | Property Identified | Registration Number | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | property_&_registration_details                 | 36                                                     |
      | mandatory              | Property Identified | Agreement Type      | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | property_&_registration_details                 | 37                                                     |
      | mandatory              | Property Identified | SRO                 | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | property_&_registration_details                 | 38                                                     |
      | mandatory              | Property Identified | Registration Date   | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | property_&_registration_details                 | 39                                                     |
