@Epic-Loan_Application_Details
@ReviewedBy_None
@AuthoredBy-harshita.nayak
@ReviewedByGWT
@ReleaseLoanAppM5
@Release3
@ImplementedBy-aman.nagarkoti
@Conventional
@Islamic
Feature: Property Details Dedupe Check

  #${ProductType:["HL","MHF","IHF","LAP"]}
  Scenario Outline: ACAUTOCAS-1958:  Property Details without checking for duplicates
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<ProductType>"
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_sourcing>" and row <LoanDetails_sourcing_RowNo>
    And user opens loan details and fills mandatory fields in sourcing details
    And user reads data from the excel file "<PropertyDetailsWB>" under sheet "<PropertyDetails_home>" and row <PropertyDetails_home_rowNum>
    And user fills property details home page with "<Mandatory_NonMandatory>" fields for "<Application Type>"
    When user saves the property details
    Then user receives a proper message in property details page

    Examples:
      | ProductType   | Application Type    | Mandatory_NonMandatory | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB         | LoanDetails_sourcing | LoanDetails_sourcing_RowNo | PropertyDetailsWB     | PropertyDetails_home | PropertyDetails_home_rowNum |
      | <ProductType> | Property Identified | mandatory              | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 288                        | property_details.xlsx | home                 | 33                          |
      | <ProductType> | Property Identified | all                    | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 288                        | property_details.xlsx | home                 | 33                          |