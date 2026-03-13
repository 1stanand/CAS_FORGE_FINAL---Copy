@Epic-Loan_Application_Details
#@AuthoredBy-vinod.pandey
@AuthoredBy-vipin.kishor
@ReviewedBy-harshprit.kumar
@ImplementedBy-harshprit.kumar
@Release1
@Conventional
@Islamic
#FeatureID-ACAUTOCAS-173
Feature:Other Details Dependent Field Validation Of Property Details With Application Type As Identified Property

  Scenario Outline: ACAUTOCAS-5000:  Entering the market value to check if <Field_Name> is auto filled
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and save sourcing details with "<Mandatory_All>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_All>" fields for "<Application Type>"
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_otherDetails>" and row <PropertyDetails_otherDetails_rowNum>
    When user opens other details and enters the market value
    Then "<Field_Name>" is autofilled

    Examples:
      | Field_Name                           | Application Type    | Mandatory_All | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum | PropertyDetails_otherDetails | PropertyDetails_otherDetails_rowNum |
      #potential bug amount_considered_acceptedValuation field name is not visible in ui
      | Amount Considered Accepted Valuation | Property Identified | mandatory     | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   |
      | Accepted Valuation                   | Property Identified | mandatory     | Home Loan | LoginDetailsCAS.xlsx | LoginData | 7         | sourcing_details.xlsx | home                 | 33                          | property_details.xlsx | home                 | 0                           | other_details                | 0                                   |


