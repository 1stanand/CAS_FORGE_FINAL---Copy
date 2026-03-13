@Epic-Secondary_Collateral
@AuthoredBy-harshita.nayak
@ReviewedBy-utkarsh.tiwari
@Release3
@ReviewedByDEV
Feature: Insurance Details Non Mandatory field Validation in Asset detail page without save

  @ImplementedBy-bhanu.singh1
  Scenario Outline: ACAUTOCAS-3436: Validating Policy Number in Insurance Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_rowNum>
    When user fills Policy Number field with "<var>"
    Then Policy Number field "<Throws_notThrows>"

    Examples:
      | Mandatory_All | var                                             | Loan_Type | SourceDataFile       | SheetName | RowNumber | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_rowNum |
      | Mandatory     | valid value                                     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | both digits and characters                      | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 1                           |
      | Mandatory     | space                                           | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 2                           |
      | Mandatory     | negative value                                  | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 3                           |
      | Mandatory     | consecutive special character                   | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 4                           |
      | Mandatory     | first and last characters as special characters | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 5                           |

  @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-3437: Validating Start Date in Insurance Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_rowNum>
    When user fills Start Date field with "<var>"
    Then Start Date field "<Throws_notThrows>"

    Examples:
      | Mandatory_All | var                    | Loan_Type | SourceDataFile       | SheetName | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_rowNum |
      | Mandatory     | valid date             | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | before 1942            | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 2                           |
    @LoggedBug
    Examples:
      | Mandatory_All | var                    | Loan_Type | SourceDataFile       | SheetName | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_rowNum |
      | Mandatory     | more than current date | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 1                           |

  @ImplementedBy-pallavi.singh
  Scenario Outline: ACAUTOCAS-3438: Validating Maturity Date in Insurance Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_rowNum>
    When user fills Maturity Date field with "<var>"
    Then Maturity Date field "<Throws_notThrows>"

    Examples:
      | Mandatory_All | var                    | Loan_Type | SourceDataFile       | SheetName | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_rowNum |
      | Mandatory     | valid date             | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 7                           |
      | Mandatory     | more than current date | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 8                           |
      | Mandatory     | before 1942            | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 9                           |
      | Mandatory     | less than start date   | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 10                          |
      | Mandatory     | more than start date   | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 11                          |
      | Mandatory     | equal to start date    | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 12                          |

  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-3439: Validating Cover Note Number in Insurance Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_rowNum>
    When user fills Cover Note Number field with "<var>"
    Then Cover Note Number field "<Throws_notThrows>"

    Examples:
      | Mandatory_All | var                                   | Loan_Type | SourceDataFile       | SheetName | RowNumber | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_rowNum |
      | Mandatory     | valid value                           | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | both digits and characters            | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 1                           |
      | Mandatory     | space                                 | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 2                           |
      | Mandatory     | negative value                        | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 3                           |
      | Mandatory     | digit with hyphen                     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 4                           |
      | Mandatory     | special character with hyphen         | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 5                           |
      | Mandatory     | special character with underscore     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 6                           |
      | Mandatory     | digit with underscore                 | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 7                           |
      | Mandatory     | special character with forward slash  | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 8                           |
      | Mandatory     | digit with forward slash              | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 9                           |
      | Mandatory     | special character with backward slash | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 10                          |
      | Mandatory     | digit with backward slash             | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 11                          |
      | Mandatory     | special character                     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | 78                          | asset_details.xlsx | home            | 32                     | nominee_address_details | 12                          |

  @ImplementedBy-rishabh.garg
  Scenario Outline: ACAUTOCAS-3440: Validating  Cover Note Creation Date in Insurance Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_rowNum>
    When user fills  Cover Note Creation Date field with "<var>"
    Then  Cover Note Creation Date field "<Throws_notThrows>"

    Examples:
      | Mandatory_All | var                    | Loan_Type | SourceDataFile       | SheetName | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_rowNum |
      | Mandatory     | valid date             | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 7                           |
      | Mandatory     | more than current date | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 8                           |
      | Mandatory     | before 1942            | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 9                           |
      | Mandatory     | equal to start date    | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 10                          |

  @ImplementedBy-bhanu.singh1
  Scenario Outline: ACAUTOCAS-1875: In selection of <Field_Name> <Dependent_Field> in Insurance Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    When user fills "<Field_Name>" and save in insurance details
    Then "<Dependent_Field>" should be mandatory

    Examples:
      | Mandatory_All | Loan_Type | Field_Name               | Dependent_Field          | SourceDataFile       | SheetName | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Mandatory     | Auto Loan | Start Date               | Maturity Date            | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     |
      | Mandatory     | Auto Loan | Start Date               | Policy Number            | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     |
      | Mandatory     | Auto Loan | Maturity Date            | Start Date               | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     |
      | Mandatory     | Auto Loan | Maturity Date            | Policy Number            | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     |
      | Mandatory     | Auto Loan | Policy Number            | Start Date               | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     |
      | Mandatory     | Auto Loan | Policy Number            | Maturity Date            | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     |
      | Mandatory     | Auto Loan | Cover Note Creation Date | Cover Note Number        | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     |
      | Mandatory     | Auto Loan | Cover Note Number        | Cover Note Creation Date | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     |
