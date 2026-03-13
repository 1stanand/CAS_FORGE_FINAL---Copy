@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@ImplementedBy-yash.sharma
@Release3
@ReviewedByDEV
@Conventional
@Islamic
Feature: Dependent Field Validation Of vehicle details in Asset Details Page


  Scenario Outline: ACAUTOCAS-1894: In selection of <Button> <Field_Name> is autofilled in vehicle Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    When user select "<Button>" in vehicle details
    Then The "<Field_Name>" should be autofilled
    @LoggedBug
    Examples:
      | Mandatory_All | Loan_Type | Button       | Field_Name          | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | asset_type |
      | Mandatory     | Auto Loan | Choose Color | State               | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home            | 0                      | Used Asset |
      | Mandatory     | Auto Loan | Choose Color | Color Type          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home            | 0                      | Used Asset |
      | Mandatory     | Auto Loan | Choose Color | Ex-Showroom Price   | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home            | 0                      | Used Asset |
      | Mandatory     | Auto Loan | Choose Color | Year of Manufacture | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home            | 0                      | New Asset  |


  Scenario Outline: ACAUTOCAS-1895: <Field_Name> dependent on Registration Date
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fill Registration Date and "<Field_Name>" with "<var>"
    Then The "<Field_Name>" should "<Throws_notThrows>"
    Examples:
      | Loan_Type | Field_Name               | var                                     | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | Throws_notThrows                   |
      | Auto Loan | Registration Expiry Date | greater than Registration Date          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | vehicle_details | 114                    | does not throw any error           |
      | Auto Loan | Registration Expiry Date | less than or equal to Registration Date | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | vehicle_details | 115                    | throws an error with error message |
      | Auto Loan | Year of Manufacture      | greater than Registration Date          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | vehicle_details | 116                    | throws an error with error message |
      | Auto Loan | Year of Manufacture      | less than or equal to Registration Date | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | vehicle_details | 117                    | does not throw any error           |


  Scenario Outline: ACAUTOCAS-3446: RC Received Date dependent on Registration Date
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fill Registration Date and RC Date with "<var>"
    Then RC Received Date should "<Throws_notThrows>"
    Examples:
      | Loan_Type | var                                     | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | Throws_notThrows                   |
      | Auto Loan | less than or equal to Registration Date | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | vehicle_details | 118                    | throws an error with error message |
      | Auto Loan | greater than Registration Date          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | vehicle_details | 119                    | does not throw any error           |


  Scenario Outline: ACAUTOCAS-1897:  In selection of <Field_Name> as <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    When user select "<Field_Name>" as "<asset_type>"
    Then The "<dependent_field>" should be "<Behaviour_of_field>"
    Examples:
      | Loan_Type | Field_Name | asset_type | dependent_field          | Behaviour_of_field | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Auto Loan | Asset Type | Used Asset | No.of owners             | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | Asset Type | Used Asset | Preferred Valuation Date | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | Asset Type | Used Asset | Preferred Valuation Time | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | Asset Type | New Asset  | Discount By Dealer       | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | Asset Type | New Asset  | Discount By DSA          | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | Asset Type | New Asset  | Discount By Manufacturer | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | Asset Type | New Asset  | Asset Insured            | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          |


  Scenario Outline: ACAUTOCAS-1898:  In selection of <Field_Name> <Behaviour_of_field>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user fills the "<asset_type>""LoanType"
    When user fills "<Field_Name>"
    Then This "<Field_Name>" should  "<Behaviour_of_field>"
    Examples:
      | Loan_Type | Field_Name                             | asset_type | Behaviour_of_field | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Auto Loan | Asset Age (Months)                     | Used Asset | Disabled           | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | Asset Age (Months)                     | New Asset  | Disabled           | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | Maximum Asset Age for funding (Months) | New Asset  | Disabled           | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | Maximum Asset Age for funding (Months) | Used Asset | Disabled           | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          |


  Scenario Outline: ACAUTOCAS-3447:  In Selection of <Field_Name> with unchecks Registration Number is autofilled
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills Engine Number and Chassis Number
    And unchecks Is Special Number checkbox
    When user fills "<Field_Name>" breakup as "<RegNumber1stBox>" and "<RegNumber2ndBox>" and "<RegNumber3rdBox>" and "<RegNumber4thBox>"
    Then "<Field_Name>" with Registration Number autofilled
    Examples:
      | Mandatory_All | Loan_Type | Field_Name          | RegNumber1stBox | RegNumber2ndBox | RegNumber3rdBox             | RegNumber4thBox | asset_type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 81                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 82                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 83                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 84                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 85                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 86                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 87                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 88                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 89                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 90                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 91                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 92                     |


  Scenario Outline: ACAUTOCAS-3448:  In Selection of <Field_Name> wiith checks Registration Number is autofilled
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "<Mandatory_All>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills Engine Number and Chassis Number
    And checks Is Special Number checkbox
    When user fills "<Field_Name>" breakup as "<RegNumber1stBox>" and "<RegNumber2ndBox>" and "<RegNumber3rdBox>" and "<RegNumber4thBox>"
    Then "<Field_Name>" with Registration Number autofilled
    Examples:
      | Mandatory_All | Loan_Type | Field_Name          | RegNumber1stBox | RegNumber2ndBox | RegNumber3rdBox             | RegNumber4thBox | asset_type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 81                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 82                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 83                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 84                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 85                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 86                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 87                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 88                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 89                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 90                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 91                     |
      | Mandatory     | Auto Loan | Registration Number | STATE CODE      | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 92                     |


  Scenario Outline: ACAUTOCAS-1901:  In Selection of <Field_Name>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "Auto Loan"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user fills asset Details "<asset_type>" with "Mandatory"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills Engine Number and Chassis Number
    And checks Is Special Number checkbox
    When user fills "<Field>" breakup as "<RegNumber1stBox>" and "<RegNumber2ndBox>" and "<RegNumber3rdBox>" and "<RegNumber4thBox>"
    And unchecks Is Special Number checkbox
    Then Registration Number should be blank
    Examples:
      | RegNumber1stBox | Field               | RegNumber2ndBox | RegNumber3rdBox             | RegNumber4thBox | asset_type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | STATE CODE      | Registration Number | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 81                     |
      | STATE CODE      | Registration Number | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 82                     |
      | STATE CODE      | Registration Number | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 83                     |
      | STATE CODE      | Registration Number | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 84                     |
      | STATE CODE      | Registration Number | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 85                     |
      | STATE CODE      | Registration Number | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 86                     |
      | STATE CODE      | Registration Number | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 87                     |
      | STATE CODE      | Registration Number | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 88                     |
      | STATE CODE      | Registration Number | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 89                     |
      | STATE CODE      | Registration Number | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 90                     |
      | STATE CODE      | Registration Number | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 91                     |
      | STATE CODE      | Registration Number | DISTRICT NUMBER | SINGLE OR MULTIPLE ALPHABET | MAIN NUMBER     | New Asset  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 64                          | asset_details.xlsx | home                      | 0                                | asset_details.xlsx | vehicle_details | 92                     |
