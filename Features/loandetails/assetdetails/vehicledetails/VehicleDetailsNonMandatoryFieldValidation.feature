@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@ImplementedBy-manish.yadav2
@Conventional
@Islamic
@Release3
@ReviewedByDEV
@Reconciled


Feature:Vehicle Details Non Mandatory Field Validation Before Save in Asset Details

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0


  Scenario Outline: ACAUTOCAS-1902: Validating Engine Number in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Engine Number field with "<var>"
    Then Engine Number field "<Throws_notThrows>" with proper message

    Examples:
      | Loan_Type | var                            | Throws_notThrows                   | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Auto Loan | Valid value                    | does not throw any error           | asset_details.xlsx | vehicle_details | 0                      | sourcing_details.xlsx | home                 | 156                          |
      | Auto Loan | Both Numeric and alphabet      | does not throw any error           | asset_details.xlsx | vehicle_details | 1                      | sourcing_details.xlsx | home                 | 156                          |
      | Auto Loan | special characters with hyphen | does not throw any error           | asset_details.xlsx | vehicle_details | 2                      | sourcing_details.xlsx | home                 | 156                          |
      | Auto Loan | space                          | does not throw any error           | asset_details.xlsx | vehicle_details | 3                      | sourcing_details.xlsx | home                 | 156                          |
      | Auto Loan | negative                       | does not throw any error           | asset_details.xlsx | vehicle_details | 4                      | sourcing_details.xlsx | home                 | 156                          |
      | Auto Loan | Special character              | throws an error with error message | asset_details.xlsx | vehicle_details | 5                      | sourcing_details.xlsx | home                 | 156                          |


  Scenario Outline: ACAUTOCAS-1903: Validating Chassis Number in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Chassis Number field with "<var>"
    Then Chassis Number field "<Throws_notThrows>" with proper message

    Examples:
      | Loan_Type | var                            | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | valid value                    | does not throw any error           | sourcing_details.xlsx | home                 | 156                          | asset_details.xlsx | vehicle_details | 6                      |
      | Auto Loan | both digits and characters     | does not throw any error           | sourcing_details.xlsx | home                 | 156                          | asset_details.xlsx | vehicle_details | 7                      |
      | Auto Loan | special characters with hyphen | does not throw any error           | sourcing_details.xlsx | home                 | 156                          | asset_details.xlsx | vehicle_details | 8                      |
      | Auto Loan | space                          | does not throw any error           | sourcing_details.xlsx | home                 | 156                          | asset_details.xlsx | vehicle_details | 9                      |
      | Auto Loan | negative value                 | does not throw any error           | sourcing_details.xlsx | home                 | 156                          | asset_details.xlsx | vehicle_details | 10                     |
      | Auto Loan | special characters             | throws an error with error message | sourcing_details.xlsx | home                 | 156                          | asset_details.xlsx | vehicle_details | 11                     |


  Scenario Outline: ACAUTOCAS-1904: Validating Registration in Name of in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Registration in Name of field with "<var>"
    Then Registration in Name of field "<Throws_notThrows>" with proper message

    Examples:
      | Loan_Type | var                            | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | valid value                    | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 12                     |
      | Auto Loan | both digits and characters     | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 13                     |
      | Auto Loan | special characters with hyphen | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 14                     |
      | Auto Loan | space                          | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 15                     |
      | Auto Loan | negative value                 | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 16                     |
      | Auto Loan | special characters             | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 17                     |


  Scenario Outline: ACAUTOCAS-1905: Validating Vehicle Capacity in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Vehicle Capacity field with "<var>"
    Then Vehicle Capacity field "<Throws_notThrows>" with proper message

    Examples:
      | Loan_Type | var                        | SourceDataFile       | SheetName | RowNumber | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | valid value                | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 18                     |
      | Auto Loan | both digits and characters | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 19                     |
      | Auto Loan | space                      | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 20                     |
      | Auto Loan | negative value             | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 21                     |
      | Auto Loan | special characters         | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 22                     |


  Scenario Outline: ACAUTOCAS-1906: Validating Asset Life (Months) in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Asset Life (Months) field with "<var>"
    Then Asset Life (Months) field "<Throws_notThrows>" with proper message

    Examples:
      | Loan_Type | var                        | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | valid value                | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 23                     |
      | Auto Loan | both digits and characters | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 24                     |
      | Auto Loan | space                      | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 25                     |
      | Auto Loan | negative value             | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 26                     |
      | Auto Loan | special characters         | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 27                     |


  Scenario Outline: ACAUTOCAS-1907: Validating Ex-Showroom Price in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Ex-Showroom Price field with "<var>"
    Then Ex-Showroom Price field "<Throws_notThrows>"

    Examples:
      | Loan_Type | var                       | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | Valid value               | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 28                     |
      | Auto Loan | upto 18 digits            | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 29                     |
      | Auto Loan | Both Numeric and alphabet | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 30                     |
      | Auto Loan | Special character         | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 31                     |
      | Auto Loan | Space                     | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 32                     |
      | Auto Loan | Paise                     | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 33                     |
      | Auto Loan | zero value                | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 34                     |
      | Auto Loan | Negative                  | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 35                     |


  Scenario Outline: ACAUTOCAS-1908: Validating Road Tax in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Road Tax field with "<var>"
    Then Road Tax field "<Throws_notThrows>"

    Examples:
      | Loan_Type | var                       | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | Valid value               | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 36                     |
      | Auto Loan | upto 18 digits            | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 37                     |
      | Auto Loan | Both Numeric and alphabet | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 38                     |
      | Auto Loan | Special character         | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 39                     |
      | Auto Loan | Space                     | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 40                     |
      | Auto Loan | Paise                     | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 41                     |
      | Auto Loan | zero value                | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 42                     |
      | Auto Loan | Negative                  | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 43                     |


  Scenario Outline: ACAUTOCAS-1909: Validating Discount By Dealer in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Discount By Dealer field with "<var>"
    Then Discount By Dealer field "<Throws_notThrows>"

    Examples:
      | Loan_Type | var                       | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | Valid value               | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 44                     |
      | Auto Loan | upto 18 digits            | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 45                     |
      | Auto Loan | Both Numeric and alphabet | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 46                     |
      | Auto Loan | Special character         | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 47                     |
      | Auto Loan | Space                     | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 48                     |
      | Auto Loan | Paise                     | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 49                     |
      | Auto Loan | zero value                | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 50                     |
      | Auto Loan | Negative                  | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 51                     |


  Scenario Outline: ACAUTOCAS-1910: Validating Discount By DSA in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Discount By DSA field with "<var>"
    Then Discount By DSA field "<Throws_notThrows>"

    Examples:
      | Loan_Type | var                       | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | Valid value               | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 52                     |
      | Auto Loan | upto 18 digits            | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 53                     |
      | Auto Loan | Both Numeric and alphabet | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 54                     |
      | Auto Loan | Special character         | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 55                     |
      | Auto Loan | Space                     | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 56                     |
      | Auto Loan | Paise                     | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 57                     |
      | Auto Loan | zero value                | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 58                     |
      | Auto Loan | Negative                  | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 59                     |


  Scenario Outline: ACAUTOCAS-1911: Validating Discount By Manufacturer in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Discount By Manufacturer field with "<var>"
    Then Discount By Manufacturer field "<Throws_notThrows>"

    Examples:
      | Loan_Type | var                       | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | Valid value               | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 60                     |
      | Auto Loan | upto 18 digits            | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 61                     |
      | Auto Loan | Both Numeric and alphabet | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 62                     |
      | Auto Loan | Special character         | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 63                     |
      | Auto Loan | Space                     | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 64                     |
      | Auto Loan | Paise                     | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 65                     |
      | Auto Loan | zero value                | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 66                     |
      | Auto Loan | Negative                  | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 67                     |


  Scenario Outline: ACAUTOCAS-1912: Validating Preferred Valuation Date in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Preferred Valuation Date field with "<var>"
    Then Preferred Valuation Date field "<Throws_notThrows>"

    Examples:
      | Loan_Type | var                 | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | valid               | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 68                     |
      | Auto Loan | year less than 1942 | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 69                     |


  Scenario Outline: ACAUTOCAS-1913: Validating Date of Delivery in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Date of Delivery field with "<var>"
    Then Date of Delivery field "<Throws_notThrows>"

    Examples:
      | Loan_Type | var                 | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | valid               | does not throw any error           | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 70                     |
      | Auto Loan | year less than 1942 | throws an error with error message | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 71                     |


  Scenario Outline: ACAUTOCAS-1914: Validating <Field_Name> in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills "<Field_Name>" field with "<var>"
    Then "<Field_Name>" field "<Throws_notThrows>"

    Examples:
      | Field_Name | Loan_Type | var         | Throws_notThrows         | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | FIP Number | Auto Loan | valid value | does not throw any error | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 72                     |
      | VIN Number | Auto Loan | valid value | does not throw any error | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | vehicle_details | 73                     |



  Scenario Outline: ACAUTOCAS-1916:  Validating <Field_Name> breakup as <RegNumber1stBox> and <RegNumber2ndBox> and <RegNumber3rdBox> and <RegNumber4thBox> without Is Special Number
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills Engine Number and Chassis Number
    And unchecks Is Special Number checkbox
    When user fills "<Field_Name>" breakup as "<RegNumber1stBox>" and "<RegNumber2ndBox>" and "<RegNumber3rdBox>" and "<RegNumber4thBox>"
    Then "<Field_Name>" "<Throws_notThrows>" with proper message


    Examples:
      | Mandatory_All | Loan_Type | Field_Name          | RegNumber1stBox | RegNumber2ndBox | RegNumber3rdBox             | RegNumber4thBox | Throws_notThrows                   | asset_type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 81                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 82                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 83                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 84                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 85                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 86                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 87                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | throws an error with error message | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 88                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 89                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 90                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 91                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | does not throw any error           | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 92                     |

  Scenario Outline: ACAUTOCAS-1917:  Validating <Field_Name> breakup as <RegNumber1stBox> and <RegNumber2ndBox> and <RegNumber3rdBox> and <RegNumber4thBox> with Is Special Number
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills Engine Number and Chassis Number
    And checks Is Special Number checkbox
    When user fills "<Field_Name>" breakup as "<RegNumber1stBox>" and "<RegNumber2ndBox>" and "<RegNumber3rdBox>" and "<RegNumber4thBox>"
    Then "<Field_Name>" "<Throws_notThrows>" with proper message

    Examples:
      | Mandatory_All | Loan_Type | Field_Name          | Throws_notThrows         | RegNumber1stBox | RegNumber2ndBox | RegNumber3rdBox             | RegNumber4thBox | asset_type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 81                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 82                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 83                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 84                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 85                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 86                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 87                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 88                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 89                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 90                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 91                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 92                     |

  Scenario Outline: ACAUTOCAS-1918:  Validating <Field_Name> breakup as <RegNumber1stBox> and <RegNumber2ndBox> and <RegNumber3rdBox> and <RegNumber4thBox> with Special Number
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills Engine Number and Chassis Number
    And checks Is Special Number checkbox
    When user fills "<Field_Name>" breakup as "<RegNumber1stBox>" and "<RegNumber2ndBox>" and "<RegNumber3rdBox>" and "<RegNumber4thBox>"
    Then "<Field_Name>" "<Throws_notThrows>" with proper message

    Examples:
      | Mandatory_All | Loan_Type | Field_Name          | Throws_notThrows         | RegNumber1stBox | RegNumber2ndBox | RegNumber3rdBox             | RegNumber4thBox | asset_type | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 81                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 82                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 83                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 84                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 85                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 86                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 87                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 88                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 89                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 90                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 91                     |
      | Mandatory     | Auto Loan | Registration Number | does not throw any error | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 92                     |

  Scenario Outline: ACAUTOCAS-1915: Validating No Of Owners in vehicle Details with <var>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills the "<asset_type>""<tab_name>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills No. Of Owners field with "<var>"
    Then No. Of Owners field "<Throws_notThrows>" with proper message

    Examples:
      | Loan_Type | var                        | Throws_notThrows                   | asset_type  | tab_name        | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | valid value                | does not throw any error           | Used Asset  | Vehicle Details | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 74                     |
      | Auto Loan | both digits and characters | throws an error with error message | Used Asset  | Vehicle Details | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 75                     |
      | Auto Loan | space                      | throws an error with error message | Used Asset  | Vehicle Details | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 77                     |
      | Auto Loan | negative value             | throws an error with error message | Used Asset  | Vehicle Details | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 78                     |
      | Auto Loan | special characters         | throws an error with error message | Used Asset  | Vehicle Details | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 79                     |
