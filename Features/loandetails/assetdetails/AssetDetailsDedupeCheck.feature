@Epic-Loan_Application_Details
@Authored-harshita.nayak
@ImplementedBy-kanika.mahal
@ReviewedBy-tushar.chauhan
@Release3
@Reconciled
@ReviewedByDEV
@Conventional
@Islamic
Feature: Asset Details Dedupe Check

  Scenario Outline: ACAUTOCAS-1833:  Asset Details <asset_type> without checking for duplicates
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    When user saves the data without checking duplicates
    Then "<Throws_notThrows>" message
    Examples:
      | Mandatory_All | Loan_Type | asset_type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum | Throws_notThrows                            |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 42                               | does not throws an error with error message |
      | Mandatory     | Auto Loan | Used Asset | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 38                               | does not throws an error with error message |

  Scenario Outline: ACAUTOCAS-1834:  Asset Details for checking duplicates
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    When user check for duplicates asset
    Then "<Throws_notThrows>" message
    Examples:
      | Mandatory_All | Loan_Type | asset_type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 35                               |
      | Mandatory     | Auto Loan | Used Asset | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 38                               |


  Scenario Outline: ACAUTOCAS-1836:  Checking duplicates results for Engine Number
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    When user check for duplicates asset
    Then should able to view the duplicates found
    Examples:
      | Mandatory_All | Loan_Type | asset_type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 35                               |

  Scenario Outline: ACAUTOCAS-1838:  Checking duplicates results for Chassis Number
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    When user check for duplicates asset
    Then should able to view the duplicates found
    Examples:
      | Mandatory_All | Loan_Type | asset_type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 35                               |

  Scenario Outline: ACAUTOCAS-1840:  Views duplicate asset details for <Field1> <Field2>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    And user fills "<Field1>" "<Field2>"
    When user checks the duplicates
    Then should able to view the duplicates found
    Examples:
      | Mandatory_All | Loan_Type | asset_type | Field1                   | Field2                    | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Mandatory     | Auto Loan | New Asset  | Engine Number            | Chassis Number            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 35                               |
      | Mandatory     | Auto Loan | New Asset  | Engine Number            | non-unique Chassis Number | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 42                               |
      | Mandatory     | Auto Loan | New Asset  | non-unique Engine Number | non-unique Chassis Number | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 43                               |

  Scenario Outline: ACAUTOCAS-1835:  Asset Details to view duplicates found results
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    And user fills "<Field1>" "<Field2>"
    When user check for duplicates asset
    Then should able to view number of duplicates found
    Examples:
      | Mandatory_All | Loan_Type | asset_type | Field1                   | Field2                    | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Mandatory     | Auto Loan | New Asset  | Engine Number            | Chassis Number            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 35                               |
      | Mandatory     | Auto Loan | New Asset  | Engine Number            | non-unique Chassis Number | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 42                               |
      | Mandatory     | Auto Loan | New Asset  | non-unique Engine Number | non-unique Chassis Number | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 43                               |

  Scenario Outline: ACAUTOCAS-1837:  Checking duplicates for Engine Number to view the duplicates results
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    When user check for duplicates asset
    And user click on save Button
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    When user view for duplicates asset
    Then should able to view number of duplicates engine number found
    Examples:
      | Mandatory_All | Loan_Type | asset_type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 35                               |


  Scenario Outline: ACAUTOCAS-1839:  Checking duplicates for Chassis Number to view the duplicates results
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    When user check for duplicates asset
    And user click on save Button
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    When user view for duplicates asset
    Then should able to view number of duplicates chassis number found
    Examples:
      | Mandatory_All | Loan_Type | asset_type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 162                         | asset_details.xlsx | home                      | 35                               |

  Scenario Outline: ACAUTOCAS-1841:Views duplicate asset details for <Field1> <Field2> and <Field3>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    And user check for duplicates asset
    And user click on save Button
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    And user fills mandatory fields
    When user click on check for Duplicates button
    Then should able to view the duplicates found
    Examples:
      | Mandatory_All | Loan_Type | asset_type | SourceDataFile           | SheetName                 | RowNumber                      | LoanDetailsWB        | LoanDetails_asset_details | LoanDetails_asset_details_rowNum | SourcingDetailsWB     | SourcingDetails_home      | SourcingDetails_home_rowNum | Field1                   | Field2                    | Field3                         |
      | Mandatory     | Auto Loan | Used Asset | LoginDetailsCAS.xlsx     | LoginData                 | 0                              | asset_details.xlsx   | home                      | 41                               | sourcing_details.xlsx | home                      | 162                         | Engine Number            | Chassis Number            | Registration Number            |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx     | LoginData                 | 0                              | asset_details.xlsx   | home                      | 41                               | sourcing_details.xlsx | home                      | 162                         | non-unique Engine Number | Chassis Number            | Registration Number            |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx     | LoginData                 | 0                              | asset_details.xlsx   | home                      | 41                               | sourcing_details.xlsx | home                      | 162                         | Engine Number            | non-unique Chassis Number | Registration Number            |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx     | LoginData                 | 0                              | asset_details.xlsx   | home                      | 41                               | sourcing_details.xlsx | home                      | 162                         | Engine Number            | Chassis Number            | non-unique Registration Number |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx     | LoginData                 | 0                              | asset_details.xlsx   | home                      | 41                               | sourcing_details.xlsx | home                      | 162                         | non-unique Engine Number | non-unique Chassis Number | non-unique Registration Number |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx     | LoginData                 | 0                              | asset_details.xlsx   | home                      | 41                               | sourcing_details.xlsx | home                      | 162                         | Engine Number            | non-unique Chassis Number | non-unique Registration Number |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx     | LoginData                 | 0                              | asset_details.xlsx   | home                      | 41                               | sourcing_details.xlsx | home                      | 162                         |non-unique Engine Number | non-unique Chassis Number | Registration Number            |
      | Mandatory     | Auto Loan | New Asset  | LoginDetailsCAS.xlsx     | LoginData                 | 0                              | asset_details.xlsx   | home                      | 41                               | sourcing_details.xlsx | home                      | 162                         |non-unique Engine Number | Chassis Number            | non-unique Registration Number |
