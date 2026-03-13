@Epic-Secondary_Collateral
@AuthoredBy-harshita.nayak
@ReviewedBy-utkarsh.tiwari
@Release3
@Reconciled
@ReviewedByDEV

Feature: Nominee Address Details field Validation in Nominee detail

  @ImplementedBy-tanya
  Scenario Outline: ACAUTOCAS-1853:  Saving Nominee Address Details without <Field_Name> in Insurance Details
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Address>" and row <AssetDetails_Address_RowNum>
    When user fills Nominee Address Details without "<Field_Name>"
    Then Nominee Address Details not saved with throwing an error on "<Field_Name>"

    Examples:
      | Field_Name   | Mandatory_All | Loan_Type | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Address    | AssetDetails_Address_RowNum | SourcingDetails_home_rowNum |
      | Address Type | Mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 5                           | 78                          |
      | Country      | Mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 5                           | 78                          |
      | Plot Number  | Mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 5                           | 78                          |
      | PinCode      | Mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 5                           | 78                          |
      | State        | Mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 5                           | 78                          |

  @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-1854:  Saving Nominee Address Details with <Mandatory_All> field
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Address>" and row <AssetDetails_Address_RowNum>
    When user fills Nominee Address details with "<Mandatory_All>" field
    Then Nominee Address Details is saved successfully
    Examples:
      | Mandatory_All | Loan_Type | SourceDataFile       | SheetName | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Address    | AssetDetails_Address_RowNum |
      | Mandatory     | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 0                           |
      | all           | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 0                           |

  @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-3432: Validating Non Mandatory Field <Field_Name> in Nominee Address Details with <var> in address nominee
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Address>" and row <AssetDetails_Address_RowNum>
    When user enters "<Field_Name>" of nominee details with "<var>"
    Then "<Field_Name>" field "<Throws_notThrows>" in nominee address details
    Examples:
      | Mandatory_All | Field_Name     | var                        | Loan_Type | SourceDataFile       | SheetName | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Address    | AssetDetails_Address_RowNum | Throws_notThrows         |
      | Mandatory     | Address Line 2 | valid value                | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 0                           | does not throw any error |
      | Mandatory     | Address Line 2 | both digits and characters | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 1                           | does not throw any error |
      | Mandatory     | Address Line 2 | valid value                | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 2                           | does not throw any error |
      | Mandatory     | Address Line 2 | both digits and characters | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 3                           | does not throw any error |
      | Mandatory     | Address Line 3 | valid value                | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 0                           | does not throw any error |
      | Mandatory     | Address Line 3 | both digits and characters | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 1                           | does not throw any error |
      | Mandatory     | Address Line 3 | valid value                | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 2                           | does not throw any error |
      | Mandatory     | Address Line 3 | both digits and characters | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 3                           | does not throw any error |

  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-3433: Validating Mobile Phone in Nominee Address Details with <validity>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Address>" and row <AssetDetails_Address_RowNum>
    When user enters "Mobile Phone" in nominee address details
    Then  Mobile Phone field with "<validity>" "<Throws_notThrows>" in nominee address details

    Examples:
      | Mandatory_All | validity | Loan_Type | SourceDataFile       | SheetName | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Address    | AssetDetails_Address_RowNum | Throws_notThrows                   |
      | Mandatory     | valid    | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           | does not throw any error           |
      | Mandatory     | invalid  | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 1                           | throws an error with error message |

  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-3434: Validating <Field_Name> in Nominee Address Details <var> in address nominee
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Address>" and row <AssetDetails_Address_RowNum>
    When user enters "<Field_Name>" in nominee address details
    Then "<Field_Name>" field with "<var>" "<Throws_notThrows>" in nominee address details

    Examples:
      | Mandatory_All | Field_Name   | var                       | Loan_Type | SourceDataFile       | SheetName | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Address    | AssetDetails_Address_RowNum | Throws_notThrows                   |
      | Mandatory     | Mobile Phone | with characters           | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 4                           | throws an error with error message |
      | Mandatory     | Mobile Phone | with special character    | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 3                           | throws an error with error message |
      | Mandatory     | Mobile Phone | with characters and digit | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 2                           | throws an error with error message |
      | Mandatory     | Mobile Phone | with spaces               | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 1                           | throws an error with error message |
      | Mandatory     | Mobile Phone | valid value               | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           | does not throw any error           |
      | Mandatory     | STD          | with characters           | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 4                           | throws an error with error message |
      | Mandatory     | STD          | with special character    | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 3                           | throws an error with error message |
      | Mandatory     | STD          | with characters and digit | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 2                           | throws an error with error message |
      | Mandatory     | STD          | with spaces               | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 1                           | throws an error with error message |
      | Mandatory     | STD          | valid value               | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           | does not throw any error           |
      | Mandatory     | Number       | with characters           | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 4                           | throws an error with error message |
      | Mandatory     | Number       | with special character    | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 3                           | throws an error with error message |
      | Mandatory     | Number       | with characters and digit | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 2                           | throws an error with error message |
      | Mandatory     | Number       | with spaces               | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 1                           | throws an error with error message |
      | Mandatory     | Number       | valid value               | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           | does not throw any error           |
      | Mandatory     | Extn         | with characters           | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 4                           | throws an error with error message |
      | Mandatory     | Extn         | with special character    | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 3                           | throws an error with error message |
      | Mandatory     | Extn         | with characters and digit | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 2                           | throws an error with error message |
      | Mandatory     | Extn         | with spaces               | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 1                           | throws an error with error message |
      | Mandatory     | Extn         | valid value               | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           | does not throw any error           |

  @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-1858:  In Selection of <Field_Name> field <Dependent_Field> is autofilled
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Address>" and row <AssetDetails_Address_RowNum>
    When user enters "<Field_Name>" in nominee address details
    Then "<Dependent_Field>" should auto selected in Nominee Address Details

    Examples:
      | Mandatory_All | Field_Name | Dependent_Field | Loan_Type | SourceDataFile       | SheetName | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Address    | AssetDetails_Address_RowNum |
      | Mandatory     | PinCode    | State           | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 20                          |
      | Mandatory     | PinCode    | Region          | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 20                          |
      | Mandatory     | PinCode    | City            | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 20                          |
      | Mandatory     | PinCode    | District        | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 20                          |
      | Mandatory     | PinCode    | Taluka          | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 20                          |
      | Mandatory     | PinCode    | Village         | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 20                          |
      | Mandatory     | State      | Region          | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 21                          |

  @ImplementedBy-akash.bansal
  Scenario Outline: ACAUTOCAS-1859:  In Selection of <Field_Name> with "<From>" and "<To>"
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Address>" and row <AssetDetails_Address_RowNum>
    When user enters "<Field_Name>" in nominee address details
    Then "<Field_Name>" field "<Throws_notThrows>" in nominee address details

    Examples:
      | Mandatory_All | Field_Name               | From                 | To                     | Loan_Type | SourceDataFile       | SheetName | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Address    | AssetDetails_Address_RowNum | Throws_notThrows                   |
      | Mandatory     | Duration at this Address | less than To date    | greater than From Date | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 14                          | does not throw any error           |
      | Mandatory     | Duration at this Address | greater than To Date | less than From Date    | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 15                          | throws an error with error message |
      | Mandatory     | Duration at this Address | valid To date        | valid From date        | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 16                          | does not throw any error           |
      | Mandatory     | Duration at this City    | less than To date    | greater than From Date | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 17                          | does not throw any error           |
      | Mandatory     | Duration at this City    | greater than To Date | less than From Date    | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 18                          | throws an error with error message |
      | Mandatory     | Duration at this City    | valid To date        | valid From date        | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     | nominee_address_details | 19                          | does not throw any error           |

  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-1860:  In Selection of <Field_Name> <Option> <Dependent_Field> displayed
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Address>" and row <AssetDetails_Address_RowNum>
    When user enters "<option>" in nominee address details
    Then "<Dependent_Field>" display successfully in nominee Address Details

    Examples:
      | Mandatory_All | option              | Dependent_Field  | Loan_Type | SourceDataFile       | SheetName | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Address    | AssetDetails_Address_RowNum |
      | Mandatory     | Permanent Address   | Residence Status | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 14                          |
      | Mandatory     | Permanent Address   | Residence Type   | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 15                          |
      | Mandatory     | Residential Address | Residence Status | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 16                          |
      | Mandatory     | Residential Address | Residence Type   | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 32                     | nominee_address_details | 17                          |

  @ImplementedBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-1861:  In Selection of <Field_Name> <Dependent_Field> disabled
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    When user selects "<Field_Name>" field in nominee Details Page
    Then "<Dependent_Field>" should be disabled in nominee Details Page

    Examples:
      | Mandatory_All | Field_Name      | Dependent_Field             | Loan_Type | SourceDataFile       | SheetName | SourcingDetailsWB     | SourcingDetails_home | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Mandatory     | Current Address | Duration at this Address To | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     |
      | Mandatory     | Current Address | Duration at this City To    | Auto Loan | LoginDetailsCAS.xlsx | LoginData | sourcing_details.xlsx | home                 | asset_details.xlsx | home            | 33                     |

  @ImplementedBy-ashutosh.kumar2
  Scenario Outline: ACAUTOCAS-1862:  In Selection of <Field_Name>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Address>" and row <AssetDetails_Address_RowNum>
    When user enters "<Field_Name>" in nominee address details
    Then Data should be visible in District

    Examples:
      | Field_Name | var      | Loan_Type | Mandatory_All | SourceDataFile       | SheetName | RowNumber | PropertyDetailsWB         | PropertyDetails_home | PropertyDetails_home_rowNum | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Address    | AssetDetails_Address_RowNum |
      | State      | District | Auto Loan | Mandatory     | LoginDetailsCAS.xlsx | LoginData |           | personal_information.xlsx | home                 |                             | sourcing_details.xlsx | home                 |                             | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                          |

  @ImplementedBy-utkarsh.tiwari
  Scenario Outline: ACAUTOCAS-1863:  In Selection of country code in <Field_Name> field ISD code changes with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and 0
    And user creates new application for "<Loan_Type>"
    And user reads data from the excel file "sourcing_details.xlsx" under sheet "home" and row 78
    And user fills and saves sourcing details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills "<Mandatory_All>" fields of asset details home page
    And user saves asset details home page
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_Address>" and row <AssetDetails_Address_RowNum>
    When user selects country code with "<var>" in  "<Field_Name>" field
    Then ISD code as "<var>" of "<Field_Name>" changes display successfully
    Examples:
      | Mandatory_All | var | Field_Name   | Loan_Type | SourceDataFile       | SheetName | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | AssetDetails_Address    | AssetDetails_Address_RowNum |
      | Mandatory     | AE  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | AF  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | AL  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | AO  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | AU  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | EH  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | IE  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | IN  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | NP  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | NZ  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | RU  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | VN  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | ZA  | Phone Number | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | AE  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | AF  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | AL  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | AO  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | AU  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | EH  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | IE  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | IN  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | NP  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | NZ  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | RU  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | VN  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
      | Mandatory     | ZA  | Mobile Phone | Auto Loan | LoginDetailsCAS.xlsx | LoginData | asset_details.xlsx | home            | 32                     | nominee_address_details | 0                           |
