@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@ImplementedBy-manish.yadav2
@Release3
@ReviewedByDEV
@Reconciled
@Conventional

Feature: Dependent Field Validation Of Asset Details Page

  Scenario Outline: ACAUTOCAS-1848:  Entering Asset cost <Field_Name> is autofilled with suitable calculation
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    When user fills asset cost
    Then "<Field_Name>" should be autofilled with suitable calculation

    Examples:
      | Loan_Type | Field_Name              | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Auto Loan | Total Asset Cost        | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                          | asset_details.xlsx | home                      | 0                                |
      | Auto Loan | Percent of Down Payment | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                |
      | Auto Loan | Amount of Down Payment  | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                |
      | Auto Loan | LTV (%)                 | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 0                                |

  Scenario Outline: ACAUTOCAS-1849:  <Field_Name> fields dependent on <dependent_field_name>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    When user fills "<dependent_field_name>" in asset details
    Then "<Field_Name>" detail display successfully

    Examples:
      | Loan_Type | Field_Name         | dependent_field_name | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Auto Loan | Manufacturer GSTIN | Manufacturer Address | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                                |
      | Auto Loan | Manufacturer       | Asset Category       | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Model        | Manufacturer         | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Variant      | Asset Model          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |

    @LoggedBug
    Examples:
      | Loan_Type | Field_Name         | dependent_field_name | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Auto Loan | Transmission Type  | Asset Variant        | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Cubic Capacity     | Asset Variant        | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Registration Year  | Asset Variant        | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Body Type          | Asset Variant        | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | NVIC Code          | Asset Variant        | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Series       | Asset Variant        | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |


  Scenario Outline: ACAUTOCAS-1850:  In selection of <Field_Name> as <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    When user select "<Field_Name>" as "<var>"
    Then The field "<dependent_field>" should "<Behaviour_of_field>"

    Examples:
      | Loan_Type | Field_Name | var        | dependent_field        | Behaviour_of_field | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Auto Loan | Asset Type | New Asset  | Finance Mode           | Disable            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Type | New Asset  | Manufacturer Address   | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Type | New Asset  | Manufacturer GSTIN     | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Type | Used Asset | Manufacturer Address   | Not Displayed      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Type | Used Asset | Manufacturer GSTIN     | Not Displayed      | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Type | Used Asset | Finance Mode           | Enabled            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Type | Used Asset | Overall Accepted Value | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Type | Used Asset | Asset Location         | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Type | Used Asset | Dealership Type        | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Type | Used Asset | Market Value           | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |

  @LoggedBug
  Examples:
    | Loan_Type | Field_Name | var        | dependent_field        | Behaviour_of_field | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
    | Auto Loan | Asset Type | Used Asset | Base Value             | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |


  Scenario Outline: ACAUTOCAS-1851:  In selection of <Field_Name> as <var> <tab_Name> is <Behaviour_of_field>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    When user select "<Field_Name>" as "<var>"
    Then The tab "<tab_Name>" should be "<Behaviour_of_field>"

    Examples:
      | Loan_Type | Field_Name | var        | tab_Name                   | Behaviour_of_field | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Auto Loan | Asset Type | Used Asset | Invoice Details            | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Type | Used Asset | RC Authentication Details  | Displayed          | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |

  Scenario Outline: ACAUTOCAS-1852:  In selection of <Field_Name>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<LoanDetailsWB>" under sheet "<LoanDetails_asset_details>" and row <LoanDetails_asset_details_rowNum>
    And user select "<Field_Name1>" as "<asset_type>"
    When user fills the field "<Field_Name>"
    Then The field "<dependent_field>" should be "<Behaviour_of_field>"
    @LoggedBug
    Examples:
      | Loan_Type | Field_Name1| asset_type | Field_Name           | dependent_field        | Behaviour_of_field | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | LoanDetailsWB      | LoanDetails_asset_details | LoanDetails_asset_details_rowNum |
      | Auto Loan | Asset Type | Used Asset | Base Value           | Overall Accepted Value | autofilled         | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
      | Auto Loan | Asset Type | Used Asset | Base Value with zero | Overall Accepted Value | not fill           | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 156                         | asset_details.xlsx | home                      | 34                               |
