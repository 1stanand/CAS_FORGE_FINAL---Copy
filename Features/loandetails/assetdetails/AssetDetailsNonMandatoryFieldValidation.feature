@Epic-Loan_Application_Details
@AuthoredBy-harshita.nayak
@ReviewedBy-None
@Release3
@ReviewedByDEV

@Conventional
@Islamic

Feature:Asset Details Non Mandatory Field Validation Before Save

  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-1844: Validating Asset Reference Number in asset Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Asset Reference Number field with "<var>"
    Then Asset Reference Number field "<Throws_notThrows>" with proper message
    Examples:
      | Loan_Type | var                            | SourceDataFile       | SheetName | RowNumber | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Auto Loan | valid value                    | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 0                      | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | both digits and characters     | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 1                      | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | special characters with hyphen | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 2                      | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | space                          | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 3                      | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | negative value                 | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 4                      | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | special characters             | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 5                      | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |

  #Fieild not present in screen
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-1845: Validating Initial Odometer Reading in asset Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Initial Odometer Reading field with "<var>"
    Then Initial Odometer Reading field "<Throws_notThrows>" with proper message
    @LoggedBug
    Examples:
      | Loan_Type | var                        | SourceDataFile       | SheetName | RowNumber | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Auto Loan | valid value                | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 6                      | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | digits two decimal places  | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 7                      | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | both digits and characters | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 8                      | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | space                      | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 9                      | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | negative value             | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 10                     | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | special characters         | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 11                     | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | upto ten positive integers | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 12                     | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |

   #Fieild not present in screen
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-1846: Validating Option Value in asset Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    When user fills Option Value field with "<var>"
    Then Option Value field "<Throws_notThrows>" with proper message
    @LoggedBug
    Examples:
      | Loan_Type | var                        | SourceDataFile       | SheetName | RowNumber | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Auto Loan | valid value                | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 13                     | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | up to 18 digits            | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 14                     | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | both digits and characters | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 15                     | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | special characters         | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 16                     | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | space                      | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 17                     | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | paise format               | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 18                     | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | zero value                 | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 19                     | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Auto Loan | negative value             | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 20                     | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |

  #Fieild not present in screen
  @ImplementedBy-deep.maurya
  Scenario Outline: ACAUTOCAS-1847: Validating Base Value in asset Details with <var>
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "<SourceDataFile>" under "<SheetName>" and <RowNumber>
    And user create new application for "<Loan_Type>"
    And user reads data from the excel file "<SourcingDetailsWB>" under sheet "<SourcingDetails_home>" and row <SourcingDetails_home_rowNum>
    And user fills and saves sourcing details with applicationPurpose
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_xx>" and row <AssetDetails_xx_rowNum>
    And user fills asset Detail "<asset_type>" with "<Mandatory_All>"
    When user fills Base Value field with "<var>"
    Then Base Value field "<Throws_notThrows>"
    @LoggedBug
    Examples:
      | Mandatory_All | asset_type | Loan_Type | var                        | SourceDataFile       | SheetName | RowNumber | AssetDetailsWB     | AssetDetails_xx | AssetDetails_xx_rowNum | Throws_notThrows                   | SourcingDetailsWB     | SourcingDetails_home | SourcingDetails_home_rowNum |
      | Mandatory     | Used Asset | Auto Loan | valid value                | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 21                     | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Mandatory     | Used Asset | Auto Loan | up to 18 digits            | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 22                     | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Mandatory     | Used Asset | Auto Loan | both digits and characters | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 23                     | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Mandatory     | Used Asset | Auto Loan | special characters         | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 24                     | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Mandatory     | Used Asset | Auto Loan | space                      | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 25                     | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
      | Mandatory     | Used Asset | Auto Loan | paise format               | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 26                     | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Mandatory     | Used Asset | Auto Loan | zero value                 | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 27                     | does not throw any error           | sourcing_details.xlsx | home                 | 64                          |
      | Mandatory     | Used Asset | Auto Loan | negative value             | LoginDetailsCAS.xlsx | LoginData | 0         | asset_details.xlsx | home            | 28                     | throws an error with error message | sourcing_details.xlsx | home                 | 64                          |
