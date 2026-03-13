@Epic-Loan_Application_Details
@Release2
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ImplementedBy-tushar.chauhan
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-12009
Feature: Nominee mandatory field validation under insurance details with save in property detail page

  Scenario Outline: ACAUTOCAS-14090:  Fill nominee under insurance details in property page details without <Field_Name> field
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
    When user fills nominee details without "<Field_Name>"
    Then insurance details should not be saved without "<Field_Name>"
    Examples:
      | Field_Name                | Mandatory_NonMandatory | Application_Type    | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum | PropertyDetails_insurance | PropertyDetails_insurance_rowNum | PropertyDetails_insurance_nominee | PropertyDetails_insurance_nominee_rowNum |
      | Nominee Name              | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 30                                       |
      | Nominee Relationship      | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 31                                       |
      | Date of Birth             | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 32                                       |
      | Gender                    | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 33                                       |
      | Percentage of Entitlement | mandatory              | Property Identified | Home Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   | property_address                | 0                                      | insurance_details         | 0                                | insurance_nominee_details         | 34                                       |



