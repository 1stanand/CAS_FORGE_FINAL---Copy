@Epic-Secondary_Collateral
@AuthoredBy-harshita.nayak
@ReviewedBy-utkarsh.tiwari
@Release3
@ReviewedByDEV

Feature: Nominee Details field Validation in Insurance details without save

  @ImplementedBy-bhanu.singh1
  Scenario Outline: ACAUTOCAS-3441: Validating Nominee Name in Nominee Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_rowNum>
    When user fills Nominee Name  field with "<var>"
    Then Nominee Name  field "<Throws_notThrows>"

    Examples:
      | Mandatory_All | var                        | Loan_Type | SourceDataFile       | SheetName | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_rowNum |
      | Mandatory     | valid value                | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | both digits and characters | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 1                           |
      | Mandatory     | space                      | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 2                           |
      | Mandatory     | negative value             | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 3                           |
      | Mandatory     | special character with dot | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 4                           |
      | Mandatory     | special characters         | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 5                           |

  @ImplementedBy-bhanu.singh1
  Scenario Outline: ACAUTOCAS-3442: Validating Date of Birth in Nominee  Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_rowNum>
    When user fills Date of Birth field with "<var>"
    Then Date of Birth field "<Throws_notThrows>"

    Examples:
      | Mandatory_All | var                    | Loan_Type | SourceDataFile       | SheetName | Throws_notThrows                   | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_rowNum | SourcingDetailsWB     | SourcingDetails_home |
      | Mandatory     | valid date             | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           | sourcing_details.xlsx | home                 |
      | Mandatory     | more than current date | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | asset_details.xlsx | home            | 32                     | nominee_address_details | 1                           | sourcing_details.xlsx | home                 |
      | Mandatory     | before 1942            | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | asset_details.xlsx | home            | 32                     | nominee_address_details | 2                           | sourcing_details.xlsx | home                 |

  @ImplementedBy-bhanu.singh1
  Scenario Outline: ACAUTOCAS-3443: Validating Percentage of Entitlement in Nominee Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_rowNum>
    When user fills Percentage of Entitlement field with "<var>"
    Then Percentage of Entitlement field "<Throws_notThrows>"

    Examples:
      | Mandatory_All | var                        | Loan_Type | SourceDataFile       | SheetName | Throws_notThrows                   | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_rowNum | SourcingDetailsWB     | SourcingDetails_home |
      | Mandatory     | valid value                | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           | sourcing_details.xlsx | home                 |
      | Mandatory     | both digits and characters | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | asset_details.xlsx | home            | 32                     | nominee_address_details | 1                           | sourcing_details.xlsx | home                 |
      | Mandatory     | more than 2 decimal places | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | asset_details.xlsx | home            | 32                     | nominee_address_details | 2                           | sourcing_details.xlsx | home                 |
      | Mandatory     | space                      | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | asset_details.xlsx | home            | 32                     | nominee_address_details | 3                           | sourcing_details.xlsx | home                 |
      | Mandatory     | negative value             | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | asset_details.xlsx | home            | 32                     | nominee_address_details | 4                           | sourcing_details.xlsx | home                 |
      | Mandatory     | special characters         | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | asset_details.xlsx | home            | 32                     | nominee_address_details | 5                           | sourcing_details.xlsx | home                 |
      | Mandatory     | more than 100 digits       | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | asset_details.xlsx | home            | 32                     | nominee_address_details | 6                           | sourcing_details.xlsx | home                 |

  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-3444: Validating Appointee Name in Nominee Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_home>" and row <AssetDetails_home_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_nomineeAddressDetails>" and row <AssetDetails_nomineeAddressDetails_rowNum>
    When user fills Appointee Name field with "<var>"
    Then Appointee Name field "<Throws_notThrows>"

    Examples:
      | Mandatory_All | var                        | Loan_Type | SourceDataFile       | SheetName | RowNumber | Throws_notThrows                   | AssetDetailsWB     | AssetDetails_home | AssetDetails_home_rowNum | AssetDetails_nomineeAddressDetails | AssetDetails_nomineeAddressDetails_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Mandatory     | valid value                | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | asset_details.xlsx | home              | 32                       | nominee_address_details            | 7                                         | sourcing_details.xlsx | home                 | 78                          |
      | Mandatory     | both digits and characters | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | asset_details.xlsx | home              | 32                       | nominee_address_details            | 8                                         | sourcing_details.xlsx | home                 | 78                          |
      | Mandatory     | space                      | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | asset_details.xlsx | home              | 32                       | nominee_address_details            | 9                                         | sourcing_details.xlsx | home                 | 78                          |
      | Mandatory     | negative value             | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | asset_details.xlsx | home              | 32                       | nominee_address_details            | 10                                        | sourcing_details.xlsx | home                 | 78                          |
      | Mandatory     | special characters         | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | asset_details.xlsx | home              | 32                       | nominee_address_details            | 11                                        | sourcing_details.xlsx | home                 | 78                          |

  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-3445: Validating Appointee DOB in Nominee  Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_home>" and row <AssetDetails_home_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_rowNum>
    When user fills Appointee DOB field with "<var>"
    Then Appointee DOB field "<Throws_notThrows>"

    Examples:
      | Mandatory_All | var                    | Loan_Type | SourceDataFile       | SheetName | Throws_notThrows                   | AssetDetailsWB     | AssetDetails_home | AssetDetails_home_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | RowNumber |
      | Mandatory     | valid date             | Auto Loan | LoginDetailsCAS.xlsx | LoginData | does not throw any error           | asset_details.xlsx | home              | 32                       | nominee_address_details | 7                           | sourcing_details.xlsx | home                 | 78                          | 0         |
      | Mandatory     | more than current date | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | asset_details.xlsx | home              | 32                       | nominee_address_details | 8                           | sourcing_details.xlsx | home                 | 78                          | 0         |
      | Mandatory     | before 1942            | Auto Loan | LoginDetailsCAS.xlsx | LoginData | throws an error with error message | asset_details.xlsx | home              | 32                       | nominee_address_details | 9                           | sourcing_details.xlsx | home                 | 78                          | 0         |


  @ImplementedBy-ashutosh.kumar2
    @Release3
  Scenario Outline: ACAUTOCAS-1881: In selection of <Field_Name> <Dependent_Field> in Nominee Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_home>" and row <AssetDetails_home_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Nominee>" and row <AssetDetails_Nominee_rowNum>
    When user fills Appointee DOB field with "<var>"
    Then "<Dependent_Field>" should be enabled "<Behaviour_of_field>"


    Examples:
      | Mandatory_All | Loan_Type | Field_Name    | Dependent_Field        | Behaviour_of_field | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_home | AssetDetails_home_rowNum | AssetDetails_Nominee    | AssetDetails_Nominee_rowNum | SourcingDetailsWB     | SourcingDetails_home_rowNum |
      | Mandatory     | Auto Loan | Date of Birth | Appointee Name         | enabled            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home              | 32                       | nominee_address_details | 7                           | sourcing_details.xlsx | 78                          |
      | Mandatory     | Auto Loan | Date of Birth | Appointee Relationship | enabled            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home              | 32                       | nominee_address_details | 8                           | sourcing_details.xlsx | 78                          |
      | Mandatory     | Auto Loan | Date of Birth | Appointee DOB          | enabled            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home              | 32                       | nominee_address_details | 9                           | sourcing_details.xlsx | 78                          |
      | Mandatory     | Auto Loan | Date of Birth | Is Minor?              | should be checked  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home              | 32                       | nominee_address_details | 9                           | sourcing_details.xlsx | 78                          |
