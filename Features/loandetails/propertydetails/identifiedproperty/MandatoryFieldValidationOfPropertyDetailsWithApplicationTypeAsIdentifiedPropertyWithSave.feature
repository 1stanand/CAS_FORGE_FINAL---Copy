@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release1
@ReviewedByGWT
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-173
Feature: Mandatory Field Validation Of Property Details With Application Type As Identified Property With Save

  Scenario Outline: ACAUTOCAS-4077:  Validation of mandatory fields of property details home page  with save without <Field_Name>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    When user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>" without "<Field_Name>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    And user fills other details of property details with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    And user fills property address with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    Then application is not saved with the error message "<Error_Message>" in property details when "<Field_Name>" is null

    Examples:
      | Field_Name       | Application Type    | Error_Message           | Loan_Type | Mandatory_NonMandatory | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum |
#      | Collateral Sub Type/Property Details | Property Identified | This field is required. | Home Loan | mandatory              | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 20                          | other_details                | 0                                   | property_address                | 0                                      |
      | Type of Purchase | Property Identified | This field is required. | Home Loan | mandatory              | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 21                          | other_details                | 0                                   | property_address                | 0                                      |
      | Property Type    | Property Identified | This field is required. | Home Loan | mandatory              | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 22                          | other_details                | 0                                   | property_address                | 0                                      |
#      | Nature of Property                   | Property Identified | This field is required. | Home Loan | mandatory              | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 23                          | other_details                | 0                                   | property_address                | 0                                      |
      | Property Cost    | Property Identified | This field is required. | Home Loan | mandatory              | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 24                          | other_details                | 0                                   | property_address                | 0                                      |
