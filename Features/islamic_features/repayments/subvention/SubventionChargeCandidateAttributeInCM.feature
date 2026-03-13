@Epic-Loan_Application_Details
@AuthoredBy-deep.maurya
@ImplementedBy-deep.maurya
@Islamic
@PQMStory
@Part-2

  #CAS-208602
Feature:Subvention Charge Candidate Attribute in Common master

  Background:
    Given user is on CAS Login Page
    And user logged in "Common Masters" with username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0



       # PQM-2_CAS-208602
  @Release
Scenario Outline: ACAUTOCAS-20872:Subvention master record should be saved without Subvention percentage
    And user reads data from the excel file "<SubventionWB>" under sheet "<Subvention_Master>" and row <Subvention_Master_rowNum>
    And user navigates to subvention master screen
    And user creates a subvention master
    And user fills all the required fields without subvention percentage for product Type as "<ProductType>"
    When user saves subvention master details
    Then subvention master should be created successfully
     #${ProductType:["IAF","IHF"]}
    Examples:
      | SubventionWB    | Subvention_Master | Subvention_Master_rowNum | ProductType   |
      | Subvention.xlsx | subvention_master | 27                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 28                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 29                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 30                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 31                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 32                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 33                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 34                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 35                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 36                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 37                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 38                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 39                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 40                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 41                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 41                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 43                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 44                       | <ProductType> |


   # PQM-5_CAS-208602
  # PQM-12_CAS-208602
  @Release
Scenario Outline: ACAUTOCAS-20873:Subvention master record should be saved with Subvention percentage in the master
    And user reads data from the excel file "<SubventionWB>" under sheet "<Subvention_Master>" and row <Subvention_Master_rowNum>
    And user navigates to subvention master screen
    And user creates a subvention master
    And user fills all the required fields with subvention percentage for product Type as "<ProductType>"
    When user saves subvention master details
    Then subvention master should be created successfully
    #${ProductType:["IAF","IHF"]}
    Examples:
      | SubventionWB    | Subvention_Master | Subvention_Master_rowNum | ProductType   |
      | Subvention.xlsx | subvention_master | 45                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 46                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 47                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 48                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 49                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 50                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 51                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 52                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 53                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 54                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 55                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 56                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 57                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 58                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 59                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 60                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 61                       | <ProductType> |
      | Subvention.xlsx | subvention_master | 62                       | <ProductType> |


   # PQM-24_CAS-208602
   # PQM-25_CAS-208602
    # PQM-26_CAS-208602....# PQM-55_CAS-208602
  @Release
Scenario Outline: ACAUTOCAS-20874:Proper validation message should come while uploading <validity> <Fields> subvention master data via upload template
    And user navigates to subvention master screen
    And user saves subvention master in context
    When user uploads "<validity>" subvention master with "<Fields>" in excel template
    Then Record "<Status>" saved with "<Message_Type>"
    Examples:
      | validity | Fields                | Status     | Message_Type |
      | Invalid  | Subvention Name       | Should not | Error        |
      | Invalid  | Subvention Code       | Should not | Error        |
      | Invalid  | Subvention Type       | Should not | Error        |
      | Invalid  | Subvention Basis      | Should not | Error        |
      | Invalid  | Subvention BP         | Should not | Error        |
      | Invalid  | Subvention Percentage | Should not | Error        |
      | Invalid  | Subvention Matrix     | Should not | Error        |
      | Invalid  | Subvention Start Date | Should not | Error        |
      | Invalid  | Subvention End Date   | Should not | Error        |
      | Invalid  | Number of Installment | Should not | Error        |
      | Invalid  | Builder Company       | Should not | Error        |
      | Invalid  | Dealer                | Should not | Error        |
      | Invalid  | Manufacturer          | Should not | Error        |
      | Invalid  | Product Type          | Should not | Error        |
      | Invalid  | Product               | Should not | Error        |
      | Invalid  | Scheme                | Should not | Error        |
      | Invalid  | Promo Code Name       | Should not | Error        |



  #PMG_1,2
  @Release
Scenario: ACAUTOCAS-20875:Create subvention master in Common Master
    And user navigates to subvention master screen
    When user creates a subvention master
    Then user able to create subvention master

  #PMG_3
  @Release
Scenario Outline: ACAUTOCAS-20876:<Fields> field should be available in Subvention master
    And user navigates to subvention master screen
    When user creates a subvention master
    Then "<Fields>" are present as "<Mandatory_Not_Mandatory>" in subvention master screen
    Examples:
      | Fields                | Mandatory_Not_Mandatory |
      | Subvention Code       | Mandatory               |
      | Subvention Name       | Mandatory               |
      | Subvention Type       | Mandatory               |
      | Subvention Basis      | Mandatory               |
      | Subvention Start Date | Mandatory               |
      | Subvention End Date   | Mandatory               |
      | Subvention BP         | Mandatory               |
      | Editable At Front End | Non Mandatory           |


    #PMG_3
Scenario Outline: ACAUTOCAS-20877:Dependents <Fields> should be available while selecting BP type as Builder in Subvention master
    And user reads data from the excel file "<SubventionWB>" under sheet "<Subvention_Master>" and row <Subvention_Master_rowNum>
    And user navigates to subvention master screen
    When user creates a subvention master
    And user selects Subvention Type as "<Subvention_Type>"
    And user selects Subvention Basis as "<Subvention_Basis>"
    And user selects Subvention BP as "<Subvention_BP>"
    Then "<Fields>" are present as "<Mandatory_Not_Mandatory>" in subvention master screen
    Examples:
      | Fields                | Mandatory_Not_Mandatory | Subvention_Type | Subvention_Basis | Subvention_BP | SubventionWB    | Subvention_Master | Subvention_Master_rowNum |
      | Subvention Percentage | Non Mandatory           | Both            | Both             | Builder       | Subvention.xlsx | subvention_master | 0                        |
      | Subvention Matrix     | Non Mandatory           | Both            | Both             | Builder       | Subvention.xlsx | subvention_master | 0                        |
      | Number of Installment | Non Mandatory           | Both            | Both             | Builder       | Subvention.xlsx | subvention_master | 0                        |
      | Subvention Percentage | Non Mandatory           | Collectible     | Both             | Builder       | Subvention.xlsx | subvention_master | 3                        |
      | Subvention Matrix     | Non Mandatory           | Collectible     | Both             | Builder       | Subvention.xlsx | subvention_master | 3                        |
      | Number of Installment | Non Mandatory           | Collectible     | Both             | Builder       | Subvention.xlsx | subvention_master | 3                        |
      | Subvention Percentage | Non Mandatory           | Upfront         | Both             | Builder       | Subvention.xlsx | subvention_master | 6                        |
      | Subvention Matrix     | Non Mandatory           | Upfront         | Both             | Builder       | Subvention.xlsx | subvention_master | 6                        |
      | Number of Installment | Non Mandatory           | Upfront         | Both             | Builder       | Subvention.xlsx | subvention_master | 6                        |
      | Number of Installment | Non Mandatory           | Both            | Installment      | Builder       | Subvention.xlsx | subvention_master | 10                       |
      | Number of Installment | Non Mandatory           | Collectible     | Installment      | Builder       | Subvention.xlsx | subvention_master | 13                       |
      | Number of Installment | Non Mandatory           | Upfront         | Installment      | Builder       | Subvention.xlsx | subvention_master | 16                       |
      | Subvention Percentage | Non Mandatory           | Both            | Interest         | Builder       | Subvention.xlsx | subvention_master | 2                        |
      | Subvention Matrix     | Non Mandatory           | Both            | Interest         | Builder       | Subvention.xlsx | subvention_master | 2                        |
      | Subvention Percentage | Non Mandatory           | Collectible     | Interest         | Builder       | Subvention.xlsx | subvention_master | 5                        |
      | Subvention Matrix     | Non Mandatory           | Collectible     | Interest         | Builder       | Subvention.xlsx | subvention_master | 5                        |
      | Subvention Percentage | Non Mandatory           | Upfront         | Interest         | Builder       | Subvention.xlsx | subvention_master | 8                        |
      | Subvention Matrix     | Non Mandatory           | Upfront         | Interest         | Builder       | Subvention.xlsx | subvention_master | 8                        |
      | Builder Company       | Mandatory               | Both            | Both             | Builder       | Subvention.xlsx | subvention_master | 0                        |
      | Builder Company       | Mandatory               | Both            | Installment      | Builder       | Subvention.xlsx | subvention_master | 1                        |
      | Builder Company       | Mandatory               | Both            | Interest         | Builder       | Subvention.xlsx | subvention_master | 2                        |
      | Builder Company       | Mandatory               | Collectible     | Both             | Builder       | Subvention.xlsx | subvention_master | 3                        |
      | Builder Company       | Mandatory               | Collectible     | Installment      | Builder       | Subvention.xlsx | subvention_master | 4                        |
      | Builder Company       | Mandatory               | Collectible     | Interest         | Builder       | Subvention.xlsx | subvention_master | 5                        |
      | Builder Company       | Mandatory               | Upfront         | Both             | Builder       | Subvention.xlsx | subvention_master | 6                        |
      | Builder Company       | Mandatory               | Upfront         | Installment      | Builder       | Subvention.xlsx | subvention_master | 7                        |
      | Builder Company       | Mandatory               | Upfront         | Interest         | Builder       | Subvention.xlsx | subvention_master | 8                        |
      | Builder Project       | Mandatory               | Both            | Both             | Builder       | Subvention.xlsx | subvention_master | 0                        |
      | Builder Project       | Mandatory               | Both            | Installment      | Builder       | Subvention.xlsx | subvention_master | 1                        |
      | Builder Project       | Mandatory               | Both            | Interest         | Builder       | Subvention.xlsx | subvention_master | 2                        |
      | Builder Project       | Mandatory               | Collectible     | Both             | Builder       | Subvention.xlsx | subvention_master | 3                        |
      | Builder Project       | Mandatory               | Collectible     | Installment      | Builder       | Subvention.xlsx | subvention_master | 4                        |
      | Builder Project       | Mandatory               | Collectible     | Interest         | Builder       | Subvention.xlsx | subvention_master | 5                        |
      | Builder Project       | Mandatory               | Upfront         | Both             | Builder       | Subvention.xlsx | subvention_master | 6                        |
      | Builder Project       | Mandatory               | Upfront         | Installment      | Builder       | Subvention.xlsx | subvention_master | 7                        |
      | Builder Project       | Mandatory               | Upfront         | Interest         | Builder       | Subvention.xlsx | subvention_master | 8                        |
      | Product Type          | Mandatory               | Both            | Both             | Builder       | Subvention.xlsx | subvention_master | 0                        |
      | Product               | Non Mandatory           | Both            | Both             | Builder       | Subvention.xlsx | subvention_master | 0                        |
      | Scheme                | Non Mandatory           | Both            | Both             | Builder       | Subvention.xlsx | subvention_master | 0                        |
      | Promo Code Name       | Non Mandatory           | Both            | Both             | Builder       | Subvention.xlsx | subvention_master | 0                        |


     #PMG_3
Scenario Outline: ACAUTOCAS-20878:Dependents <Fields> should be available while selecting BP type as Dealer in Subvention master
    And user reads data from the excel file "<SubventionWB>" under sheet "<Subvention_Master>" and row <Subvention_Master_rowNum>
    And user navigates to subvention master screen
    When user creates a subvention master
    And user selects Subvention Type as "<Subvention_Type>"
    And user selects Subvention Basis as "<Subvention_Basis>"
    And user selects Subvention BP as "<Subvention_BP>"
    Then "<Fields>" are present as "<Mandatory_Not_Mandatory>" in subvention master screen
    Examples:
      | Fields          | Mandatory_Not_Mandatory | Subvention_Type | Subvention_Basis | Subvention_BP | SubventionWB    | Subvention_Master | Subvention_Master_rowNum |
      | Dealer          | Mandatory               | Both            | Both             | Dealer        | Subvention.xlsx | subvention_master | 9                        |
      | Dealer          | Mandatory               | Both            | Installments     | Dealer        | Subvention.xlsx | subvention_master | 10                       |
      | Dealer          | Mandatory               | Both            | Interest         | Dealer        | Subvention.xlsx | subvention_master | 11                       |
      | Dealer          | Mandatory               | Collectible     | Both             | Dealer        | Subvention.xlsx | subvention_master | 12                       |
      | Dealer          | Mandatory               | Collectible     | Installments     | Dealer        | Subvention.xlsx | subvention_master | 13                       |
      | Dealer          | Mandatory               | Collectible     | Interest         | Dealer        | Subvention.xlsx | subvention_master | 14                       |
      | Dealer          | Mandatory               | Upfront         | Both             | Dealer        | Subvention.xlsx | subvention_master | 15                       |
      | Dealer          | Mandatory               | Upfront         | Installments     | Dealer        | Subvention.xlsx | subvention_master | 16                       |
      | Dealer          | Mandatory               | Upfront         | Interest         | Dealer        | Subvention.xlsx | subvention_master | 17                       |
      | Manufacturer    | Mandatory               | Both            | Both             | Dealer        | Subvention.xlsx | subvention_master | 0                        |
      | Manufacturer    | Mandatory               | Both            | Installments     | Dealer        | Subvention.xlsx | subvention_master | 10                       |
      | Manufacturer    | Mandatory               | Both            | Interest         | Dealer        | Subvention.xlsx | subvention_master | 11                       |
      | Manufacturer    | Mandatory               | Collectible     | Both             | Dealer        | Subvention.xlsx | subvention_master | 12                       |
      | Manufacturer    | Mandatory               | Collectible     | Installments     | Dealer        | Subvention.xlsx | subvention_master | 13                       |
      | Manufacturer    | Mandatory               | Collectible     | Interest         | Dealer        | Subvention.xlsx | subvention_master | 14                       |
      | Manufacturer    | Mandatory               | Upfront         | Both             | Dealer        | Subvention.xlsx | subvention_master | 15                       |
      | Manufacturer    | Mandatory               | Upfront         | Installments     | Dealer        | Subvention.xlsx | subvention_master | 16                       |
      | Manufacturer    | Mandatory               | Upfront         | Interest         | Dealer        | Subvention.xlsx | subvention_master | 17                       |
      | Asset Category  | Non Mandatory           | Both            | Both             | Dealer        | Subvention.xlsx | subvention_master | 9                        |
      | Asset Category  | Non Mandatory           | Both            | Installments     | Dealer        | Subvention.xlsx | subvention_master | 10                       |
      | Asset Category  | Non Mandatory           | Both            | Interest         | Dealer        | Subvention.xlsx | subvention_master | 11                       |
      | Asset Category  | Non Mandatory           | Collectible     | Both             | Dealer        | Subvention.xlsx | subvention_master | 12                       |
      | Asset Category  | Non Mandatory           | Collectible     | Installments     | Dealer        | Subvention.xlsx | subvention_master | 13                       |
      | Asset Category  | Non Mandatory           | Collectible     | Interest         | Dealer        | Subvention.xlsx | subvention_master | 14                       |
      | Asset Category  | Non Mandatory           | Upfront         | Both             | Dealer        | Subvention.xlsx | subvention_master | 15                       |
      | Asset Category  | Non Mandatory           | Upfront         | Installments     | Dealer        | Subvention.xlsx | subvention_master | 16                       |
      | Asset Category  | Non Mandatory           | Upfront         | Interest         | Dealer        | Subvention.xlsx | subvention_master | 17                       |
      | Asset Model     | Non Mandatory           | Both            | Both             | Dealer        | Subvention.xlsx | subvention_master | 9                        |
      | Asset Model     | Non Mandatory           | Both            | Installments     | Dealer        | Subvention.xlsx | subvention_master | 10                       |
      | Asset Model     | Non Mandatory           | Both            | Interest         | Dealer        | Subvention.xlsx | subvention_master | 11                       |
      | Asset Model     | Non Mandatory           | Collectible     | Both             | Dealer        | Subvention.xlsx | subvention_master | 12                       |
      | Asset Model     | Non Mandatory           | Collectible     | Installments     | Dealer        | Subvention.xlsx | subvention_master | 13                       |
      | Asset Model     | Non Mandatory           | Collectible     | Interest         | Dealer        | Subvention.xlsx | subvention_master | 14                       |
      | Asset Model     | Non Mandatory           | Upfront         | Both             | Dealer        | Subvention.xlsx | subvention_master | 15                       |
      | Asset Model     | Non Mandatory           | Upfront         | Installments     | Dealer        | Subvention.xlsx | subvention_master | 16                       |
      | Asset Model     | Non Mandatory           | Upfront         | Interest         | Dealer        | Subvention.xlsx | subvention_master | 17                       |
      | Product Type    | Non Mandatory           | Both            | Both             | Dealer        | Subvention.xlsx | subvention_master | 9                        |
      | Product         | Non Mandatory           | Both            | Both             | Dealer        | Subvention.xlsx | subvention_master | 9                        |
      | Scheme          | Non Mandatory           | Both            | Both             | Dealer        | Subvention.xlsx | subvention_master | 9                        |
      | Promo Code Name | Non Mandatory           | Both            | Both             | Dealer        | Subvention.xlsx | subvention_master | 9                        |


Scenario Outline: ACAUTOCAS-20879:Dependents <Fields> should be available while selecting BP type as Manufacturer in Subvention master
    And user reads data from the excel file "<SubventionWB>" under sheet "<Subvention_Master>" and row <Subvention_Master_rowNum>
    And user navigates to subvention master screen
    When user creates a subvention master
    And user selects Subvention Type as "<Subvention_Type>"
    And user selects Subvention Basis as "<Subvention_Basis>"
    And user selects Subvention BP as "<Subvention_BP>"
    Then "<Fields>" are present as "<Mandatory_Not_Mandatory>" in subvention master screen
    Examples:
      | Fields          | Mandatory_Not_Mandatory | Subvention_Type | Subvention_Basis | Subvention_BP | SubventionWB    | Subvention_Master | Subvention_Master_rowNum |
      | Manufacturer    | Mandatory               | Both            | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 9                        |
      | Manufacturer    | Mandatory               | Both            | Installments     | Manufacturer  | Subvention.xlsx | subvention_master | 10                       |
      | Manufacturer    | Mandatory               | Both            | Interest         | Manufacturer  | Subvention.xlsx | subvention_master | 11                       |
      | Manufacturer    | Mandatory               | Collectible     | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 12                       |
      | Manufacturer    | Mandatory               | Collectible     | Installments     | Manufacturer  | Subvention.xlsx | subvention_master | 13                       |
      | Manufacturer    | Mandatory               | Collectible     | Interest         | Manufacturer  | Subvention.xlsx | subvention_master | 14                       |
      | Manufacturer    | Mandatory               | Upfront         | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 15                       |
      | Manufacturer    | Mandatory               | Upfront         | Installments     | Manufacturer  | Subvention.xlsx | subvention_master | 16                       |
      | Manufacturer    | Mandatory               | Upfront         | Interest         | Manufacturer  | Subvention.xlsx | subvention_master | 17                       |
      | Asset Category  | Non Mandatory           | Both            | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 0                        |
      | Asset Category  | Non Mandatory           | Both            | Installments     | Manufacturer  | Subvention.xlsx | subvention_master | 10                       |
      | Asset Category  | Non Mandatory           | Both            | Interest         | Manufacturer  | Subvention.xlsx | subvention_master | 11                       |
      | Asset Category  | Non Mandatory           | Collectible     | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 12                       |
      | Asset Category  | Non Mandatory           | Collectible     | Installments     | Manufacturer  | Subvention.xlsx | subvention_master | 13                       |
      | Asset Category  | Non Mandatory           | Collectible     | Interest         | Manufacturer  | Subvention.xlsx | subvention_master | 14                       |
      | Asset Category  | Non Mandatory           | Upfront         | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 15                       |
      | Asset Category  | Non Mandatory           | Upfront         | Installments     | Manufacturer  | Subvention.xlsx | subvention_master | 16                       |
      | Asset Category  | Non Mandatory           | Upfront         | Interest         | Manufacturer  | Subvention.xlsx | subvention_master | 17                       |
      | Asset Model     | Non Mandatory           | Both            | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 9                        |
      | Asset Model     | Non Mandatory           | Both            | Installments     | Manufacturer  | Subvention.xlsx | subvention_master | 10                       |
      | Asset Model     | Non Mandatory           | Both            | Interest         | Manufacturer  | Subvention.xlsx | subvention_master | 11                       |
      | Asset Model     | Non Mandatory           | Collectible     | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 12                       |
      | Asset Model     | Non Mandatory           | Collectible     | Installments     | Manufacturer  | Subvention.xlsx | subvention_master | 13                       |
      | Asset Model     | Non Mandatory           | Collectible     | Interest         | Manufacturer  | Subvention.xlsx | subvention_master | 14                       |
      | Asset Model     | Non Mandatory           | Upfront         | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 15                       |
      | Asset Model     | Non Mandatory           | Upfront         | Installments     | Manufacturer  | Subvention.xlsx | subvention_master | 16                       |
      | Asset Model     | Non Mandatory           | Upfront         | Interest         | Manufacturer  | Subvention.xlsx | subvention_master | 17                       |
      | Product Type    | Non Mandatory           | Both            | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 9                        |
      | Product         | Non Mandatory           | Both            | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 10                       |
      | Scheme          | Non Mandatory           | Both            | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 11                       |
      | Promo Code Name | Non Mandatory           | Both            | Both             | Manufacturer  | Subvention.xlsx | subvention_master | 12                       |

   #PMG_6
Scenario Outline: ACAUTOCAS-20880: Visibility of grid with <Fields>  for all the subventions captured
    When user navigates to subvention master screen
    Then user can view "<Fields>" in captured subvention grid
    Examples:
      | Fields          |
      | Subvention Code |
      | Subvention Type |
      | Subvention BP   |
      | Created By      |
      | Created On      |
      | Updated On      |
      | Reviewed On     |
      | Status          |
      | Reviewed By     |
      | Active/Inactive |
      | Actions         |


Scenario Outline: ACAUTOCAS-20881: Fields to go un-editable once the master is approved
    And user navigates to subvention master screen
    When user tries to update the captured master
    Then the user should not be able to edit any of the "<Fields>"
    Examples:
      | Fields          |
      | Subvention Code |
      | Subvention Type |
      | Subvention name |
      | Subvention BP   |


   #FeatureID-52_CAS-208602
Scenario Outline: ACAUTOCAS-20882:Validation should come for the required <Fields> fields while selecting BP Type as <BPType>
    And user reads data from the excel file "<SubventionWB>" under sheet "<Subvention_Master>" and row <Subvention_Master_rowNum>
    And user navigates to subvention master screen
    And user creates a subvention master
    And user selects BP Type as "<BPType>" in subvention master
    When user saves the subvention without filling required fields "<Fields>"
    Then Validation should come for the required fields"<Fields>"
    Examples:
      | BPType       | Fields                | SubventionWB    | Subvention_Master | Subvention_Master_rowNum |
      | Builder      | Subvention Code       | Subvention.xlsx | subvention_master | 0                        |
      | Builder      | Subvention Name       | Subvention.xlsx | subvention_master | 0                        |
      | Builder      | Subvention Type       | Subvention.xlsx | subvention_master | 0                        |
      | Builder      | Subvention Basis      | Subvention.xlsx | subvention_master | 0                        |
      | Builder      | Subvention Start Date | Subvention.xlsx | subvention_master | 0                        |
      | Builder      | Subvention End Date   | Subvention.xlsx | subvention_master | 0                        |
      | Builder      | Builder Company       | Subvention.xlsx | subvention_master | 0                        |
      | Builder      | Builder Project       | Subvention.xlsx | subvention_master | 0                        |
      | Builder      | Product Type          | Subvention.xlsx | subvention_master | 0                        |
      | Manufacturer | Subvention Code       | Subvention.xlsx | subvention_master | 10                       |
      | Manufacturer | Subvention Name       | Subvention.xlsx | subvention_master | 10                       |
      | Manufacturer | Subvention Type       | Subvention.xlsx | subvention_master | 10                       |
      | Manufacturer | Subvention Basis      | Subvention.xlsx | subvention_master | 10                       |
      | Manufacturer | Subvention Start Date | Subvention.xlsx | subvention_master | 10                       |
      | Manufacturer | Subvention End Date   | Subvention.xlsx | subvention_master | 10                       |
      | Manufacturer | Builder Company       | Subvention.xlsx | subvention_master | 10                       |
      | Manufacturer | Builder Project       | Subvention.xlsx | subvention_master | 10                       |
      | Manufacturer | Product Type          | Subvention.xlsx | subvention_master | 10                       |
      | Dealer       | Subvention Code       | Subvention.xlsx | subvention_master | 18                       |
      | Dealer       | Subvention Name       | Subvention.xlsx | subvention_master | 18                       |
      | Dealer       | Subvention Type       | Subvention.xlsx | subvention_master | 18                       |
      | Dealer       | Subvention Basis      | Subvention.xlsx | subvention_master | 18                       |
      | Dealer       | Subvention Start Date | Subvention.xlsx | subvention_master | 18                       |
      | Dealer       | Subvention End Date   | Subvention.xlsx | subvention_master | 18                       |
      | Dealer       | Builder Company       | Subvention.xlsx | subvention_master | 18                       |
      | Dealer       | Builder Project       | Subvention.xlsx | subvention_master | 18                       |
      | Dealer       | Product Type          | Subvention.xlsx | subvention_master | 18                       |

































































