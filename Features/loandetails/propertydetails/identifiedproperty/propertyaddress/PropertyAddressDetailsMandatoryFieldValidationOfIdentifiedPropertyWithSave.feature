@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-None
@ImplementedBy-aman.nagarkoti
@ReviewedByDEV
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-4169
Feature:Property Details Mandatory filed Validation of Property Details With Application Type As Identified Property With Save
  @Release1
  Scenario Outline: ACAUTOCAS-4990:  Saving property details without <FieldName>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    And user fills other details of identified ready property
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_propertyAddress>" and row <PropertyDetails_propertyAddress_rowNum>
    When user fills property address details without "<FieldName>" for "<Application Type>"
    And user saves property details
    Then proper error message should be displayed at "<FieldName>"

    Examples:
      | FieldName    | Loan_Type | Application Type    | Mandatory_NonMandatory | SourceDataFile       | SheetName | RowNumber | PropertyDetailsWB     | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum | PropertyDetails_propertyAddress | PropertyDetails_propertyAddress_rowNum |
      | address type | Home Loan | Property Identified | mandatory              | LoginDetailsCAS.xlsx | LoginData | 7         | property_details.xlsx | sourcing_details.xlsx | home                 | 33                          | home                 | 0                           | other_details                | 0                                   | property_address                | 2                                      |
      | plot number  | Home Loan | Property Identified | mandatory              | LoginDetailsCAS.xlsx | LoginData | 7         | property_details.xlsx | sourcing_details.xlsx | home                 | 33                          | home                 | 0                           | other_details                | 0                                   | property_address                | 3                                      |
      | pin code     | Home Loan | Property Identified | mandatory              | LoginDetailsCAS.xlsx | LoginData | 7         | property_details.xlsx | sourcing_details.xlsx | home                 | 33                          | home                 | 0                           | other_details                | 0                                   | property_address                | 4                                      |
      | state        | Home Loan | Property Identified | mandatory              | LoginDetailsCAS.xlsx | LoginData | 7         | property_details.xlsx | sourcing_details.xlsx | home                 | 33                          | home                 | 0                           | other_details                | 0                                   | property_address                | 5                                      |

    @NotImplemented
    #validation
  #source from squash 159356
    Scenario Outline: ACAUTOCAS-11776: Validate residence status under property address is non mandatory in property details at <Stage>
      And application has identified primary collateral
      When user selects the home loan application of "<Stage>"
      And user opens the property details
      And user opens property address
      Then residence status is non mandatory
      Examples:
        | Stage                |
        | lead details         |
        | login acceptance     |
        | dde                  |
        | recommendation       |
        | credit approval      |
        | reconsideration      |
        | disbursal initiation |
        | ICD                  |