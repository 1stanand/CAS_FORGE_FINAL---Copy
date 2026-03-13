@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-tushar.chauhan
@ImplementedBy-yash.sharma
@Release3
@Reconciled
@ReviewedByDEV
@Conventional
@Islamic

Feature: Invoice Details Mandatory Field Validation Before Save

  @ReleaseAppInfoM3
  Scenario Outline: ACAUTOCAS-1886: Validating Invoice Value in Invoice Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user fills the "<asset_type>""<tab_name>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Invoice Value field with "<var>"
    Then Invoice Value field "<Throws_notThrows>"

    Examples:
      | Loan_Type | asset_type | var                        | tab_name        | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Throws_notThrows                   | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | Used Asset | valid value                | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | does not throw any error           | asset_details.xlsx | invoice_details | 0                      |
      | Auto Loan | Used Asset | up to 18 digits            | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | does not throw any error           | asset_details.xlsx | invoice_details | 1                      |
      | Auto Loan | Used Asset | both digits and characters | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | throws an error with error message | asset_details.xlsx | invoice_details | 2                      |
      | Auto Loan | Used Asset | special characters         | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | throws an error with error message | asset_details.xlsx | invoice_details | 3                      |
      | Auto Loan | Used Asset | space                      | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | throws an error with error message | asset_details.xlsx | invoice_details | 4                      |
      | Auto Loan | Used Asset | paise format               | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | does not throw any error           | asset_details.xlsx | invoice_details | 5                      |
      | Auto Loan | Used Asset | zero value                 | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | does not throw any error           | asset_details.xlsx | invoice_details | 6                      |
      | Auto Loan | Used Asset | negative value             | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | throws an error with error message | asset_details.xlsx | invoice_details | 7                      |

  @ReleaseAppInfoM3
  Scenario Outline: ACAUTOCAS-1887: Validating Invoice Date in invoice Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user fills the "<asset_type>""<tab_name>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Invoice Date field with "<var>"
    Then Invoice Date field "<Throws_notThrows>"

    Examples:
      | asset_type | tab_name        | Loan_Type | var                 | SourceDataFile       | SheetName | RowNumber | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Used Asset | Invoice Details | Auto Loan | valid date          | LoginDetailsCAS.xlsx | LoginData | 0         | does not throw any error           | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx | invoice_details | 8                      |
      | Used Asset | Invoice Details | Auto Loan | year less than 1942 | LoginDetailsCAS.xlsx | LoginData | 0         | throws an error with error message | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx | invoice_details | 9                      |


  @ReleaseAppInfoM3
  Scenario Outline: ACAUTOCAS-1888:  In selection of <Field_Name1> and <Field_Name2> <Field_Name3> is "<Behaviour_of_field>"
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user fills the "<asset_type>""<tab_name>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user select "<Field_Name1>" "<Field_Name2>"
    Then "<Field_Name2>" is "<Behaviour_of_field>"

    Examples:
      | asset_type | tab_name        | Loan_Type | Field_Name1            | Field_Name2 | Behaviour_of_field | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Used Asset | Invoice Details | Auto Loan | Invoice Type/Final     | ACCESSORY   | enabled            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx | invoice_details | 0                      |
      | Used Asset | Invoice Details | Auto Loan | Invoice Type /Final    | FBV         | disabled           | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx | invoice_details | 1                      |
      | Used Asset | Invoice Details | Auto Loan | Invoice Type/Proforma  | ACCESSORY   | enabled            | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx | invoice_details | 2                      |
      | Used Asset | Invoice Details | Auto Loan | Invoice Type /Proforma | FBV         | disabled           | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | asset_details.xlsx | invoice_details | 3                      |

  @ReleaseAppInfoM3
  Scenario Outline: ACAUTOCAS-1889: Validating Invoice Number in Invoice Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user fills the "<asset_type>""<tab_name>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Invoice Number field with "<var>"
    Then "<var>" Invoice Number field "<Throws_notThrows>"

    Examples:
      | Loan_Type | asset_type | var         | tab_name        | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Throws_notThrows         | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | Used Asset | valid value | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | does not throw any error | asset_details.xlsx | invoice_details | 0                      |


  @ReleaseAppInfoM3
  Scenario Outline: ACAUTOCAS-1890: Validating Hypothecation in Invoice Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user fills the "<asset_type>""<tab_name>"
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Hypothecation field with "<var>"
    Then Hypothecation field "<Throws_notThrows>"

    Examples:
      | Loan_Type | asset_type | var                        | tab_name        | SourceDataFile       | SheetName | RowNumber | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum | Throws_notThrows                   | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum |
      | Auto Loan | Used Asset | valid value                | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | does not throw any error           | asset_details.xlsx | invoice_details | 10                     |
      | Auto Loan | Used Asset | space                      | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | does not throw any error           | asset_details.xlsx | invoice_details | 11                     |
      | Auto Loan | Used Asset | both digits and characters | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | throws an error with error message | asset_details.xlsx | invoice_details | 12                     |
      | Auto Loan | Used Asset | negative value             | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | throws an error with error message | asset_details.xlsx | invoice_details | 13                     |
      | Auto Loan | Used Asset | special characters         | Invoice Details | LoginDetailsCAS.xlsx | LoginData | 0         | sourcing_details.xlsx | home                 | 147                         | throws an error with error message | asset_details.xlsx | invoice_details | 14                     |
