@Epic-Loan_Application_Details
@ReviewedBy-tushar.chauhan
@Authored-harshita.nayak
@Release3
@Reconciled
@ReviewedByDEV
@Conventional
@Islamic

Feature: Asset Details Mandatory Field Validation After Save

  @ImplementedBy-kanika.mahal
  Scenario Outline: ACAUTOCAS-1842: Validating Asset Details without <Field_Name> After Save
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    When user fills asset details with asset type as "<var>" without "<Field_Name>"
    And user check for duplicates asset
    And user saves the data without checking duplicates
    Then "<Field_Name>" fields "<Throws_notThrows>"
    Examples:
      | Loan_Type | var        | Field_Name                        | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum | Throws_notThrows                   |
      | Auto Loan | New Asset  | Collateral Sub-Type/Asset details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 44                               | throws an error with error message |
      | Auto Loan | New Asset  | Asset Category                    | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 45                               | throws an error with error message |
      | Auto Loan | New Asset  | Manufacturer                      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 46                               | throws an error with error message |
      | Auto Loan | New Asset  | Asset Model                       | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 47                               | throws an error with error message |
      | Auto Loan | New Asset  | Asset Variant                     | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 48                               | throws an error with error message |
      | Auto Loan | New Asset  | Dealer                            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 52                               | throws an error with error message |
      | Auto Loan | Used Asset | Collateral Sub-Type/Asset details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 52                               | throws an error with error message |
      | Auto Loan | Used Asset | Asset Category                    | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 53                               | throws an error with error message |
      | Auto Loan | Used Asset | Manufacturer                      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 54                               | throws an error with error message |
      | Auto Loan | Used Asset | Asset Model                       | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 55                               | throws an error with error message |
      | Auto Loan | Used Asset | Asset Variant                     | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 56                               | throws an error with error message |
      | Auto Loan | Used Asset | Finance Mode                      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 65                               | throws an error with error message |
#      | New Asset  | Asset Cost                        |
#      | Used Asset | Asset Cost                        |
#      | Used Asset | Finance Mode                      |
#      | Used Asset | Engine Number                     |
#      | Used Asset | Chassis Number                    |
#      | Used Asset | Registration Number               |
    @LoggedBug
    Examples:
      | Loan_Type | var        | Field_Name        | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum | Throws_notThrows                   |
      | Auto Loan | New Asset  | Asset Series      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 9                                | throws an error with error message |
      | Auto Loan | New Asset  | Registration Year | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 10                               | throws an error with error message |
      | Auto Loan | New Asset  | NVIC Code         | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 11                               | throws an error with error message |
      | Auto Loan | Used Asset | Asset Series      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 18                               | throws an error with error message |
      | Auto Loan | Used Asset | Registration Year | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 19                               | throws an error with error message |
      | Auto Loan | Used Asset | NVIC Code         | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 20                               | throws an error with error message |

  @ImplementedBy-manish.yadav2
    @Sanity
  Scenario Outline: ACAUTOCAS-1843: Asset Details page with save
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    When user fills asset Details "<asset_type>" with "<Mandatory_All>" and save it
    Then "<Field_Name>" field should be autofilled
    Examples:
      | Mandatory_All | Loan_Type | Field_Name               | SourceDataFile       | SheetName | RowNumber | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | asset_type |
      | Mandatory     | Auto Loan | Collateral Number        | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home                      | 38                               | sourcing_details.xlsx | home                 | 156                         | New Asset  |
      | Mandatory     | Auto Loan | Global Collateral Number | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home                      | 34                               | sourcing_details.xlsx | home                 | 156                         | New Asset  |
