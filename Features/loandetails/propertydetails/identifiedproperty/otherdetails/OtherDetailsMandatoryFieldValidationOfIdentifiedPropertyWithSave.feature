@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release1
@ReviewedByDEV
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-173
Feature:Other Details Mandatory filed Validation of Property Details With Application Type As Identified Property With Save

  Scenario Outline: ACAUTOCAS-4997:  Saving other details of identified ready property without <FieldName>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_All>" fields for "<Application Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    When user fills other details of identified ready property without "<FieldName>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    And user fills property address with "<Mandatory_All>" fields for "<Application Type>"
    Then application is not saved with the error message "<Error_Message>" around field "<FieldName>"

    Examples:
      | FieldName                 | Error_Message           | Application Type    | Loan_Type | Mandatory_All | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum |
      | Property Classification   | This field is required. | Property Identified | Home Loan | mandatory     | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 18                                  | property_address                | 0                                      |
      | Property Ownership        | This field is required. | Property Identified | Home Loan | mandatory     | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 19                                  | property_address                | 0                                      |
      | Built Up Area             | This field is required. | Property Identified | Home Loan | mandatory     | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 20                                  | property_address                | 0                                      |
      | Carpet Area               | This field is required. | Property Identified | Home Loan | mandatory     | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 21                                  | property_address                | 0                                      |
      | Property Purpose          | This field is required. | Property Identified | Home Loan | mandatory     | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 22                                  | property_address                | 0                                      |
      | Age Of Property(In Years) | This field is required. | Property Identified | Home Loan | mandatory     | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 23                                  | property_address                | 0                                      |
      | Residual Age of Property  | This field is required. | Property Identified | Home Loan | mandatory     | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 24                                  | property_address                | 0                                      |
