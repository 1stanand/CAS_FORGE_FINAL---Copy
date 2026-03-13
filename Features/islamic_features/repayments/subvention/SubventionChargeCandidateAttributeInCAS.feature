@Epic-Loan_Application_Details
@AuthoredBy-deep.maurya
@ImplementedBy-deep.maurya
@PQMStory
@Part-2

  #CAS-208602
  # ${ApplicantType:["indiv"]}
Feature:Subvention Charge Candidate Attribute in CAS

  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0



       # PQM-1_CAS-208602
  @Release
Scenario Outline: ACAUTOCAS-20864:Rule matrix should be saved successfully in Rule Matrix Grid
    And user reads data from the excel file "<SubventionWB>" under sheet "<Subvention_Master>" and row <Subvention_Master_rowNum>
    And user creates new Rule Matrix
    And user selects Rule Matrix type as "<Rule_Matrix_Type>"
    And user fills required info for rule matrix
    When user saves the rule matrix
    Then Rule matrix should be saved successfully
    Examples:
      | Rule_Matrix_Type  | SubventionWB    | Subvention_Master | Subvention_Master_rowNum |
      | Subvention Matrix | Subvention.xlsx | subvention_master | 0                        |


   # PQM-6_CAS-208602
  # PQM-7_CAS-208602
  # PQM-11_CAS-208602
  # PQM-13_CAS-208602
  # PQM-14_CAS-208602
Scenario Outline: ACAUTOCAS-20865:Subvention details should be fetched which maintained in the master for manufacturer for application of <ProductType> product type as <ApplicantType> applicant at <ApplicationStage>
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with Bought From manufacturer
    And user reads data from the excel file "<SubventionWB>" under sheet "<Subvention_Master>" and row <Subvention_Master_rowNum>
    And user clicks on Subvention Details accordian
    When Select check box for manufacturer for fetching subvention details
    Then Subvention details should be fetched with "<FieldName>" data
    @Islamic
  # ${ProductType:["IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | ApplicantType   | SubventionWB    | Subvention_Master | Subvention_Master_rowNum | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | Category | Key |
      | Subvention Code       | <ProductType> | <ApplicationStage> | <ApplicantType> | Subvention.xlsx | subvention_master | 0                        | asset_details.xlsx | home                   | 77                            |          |     |
      | Subvention Basis      | <ProductType> | <ApplicationStage> | <ApplicantType> | Subvention.xlsx | subvention_master | 0                        | asset_details.xlsx | home                   | 77                            |          |     |
      | Subvention BP         | <ProductType> | <ApplicationStage> | <ApplicantType> | Subvention.xlsx | subvention_master | 0                        | asset_details.xlsx | home                   | 77                            |          |     |
      | Subvention Percentage | <ProductType> | <ApplicationStage> | <ApplicantType> | Subvention.xlsx | subvention_master | 0                        | asset_details.xlsx | home                   | 77                            |          |     |
      | Subvention End Date   | <ProductType> | <ApplicationStage> | <ApplicantType> | Subvention.xlsx | subvention_master | 0                        | asset_details.xlsx | home                   | 77                            |          |     |

    @Conventional
# ${ProductType : ["MAL"]}
 # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
    Examples:
      | FieldName             | ProductType   | ApplicationStage   | ApplicantType   | SubventionWB    | Subvention_Master | Subvention_Master_rowNum | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | Category | Key |
      | Subvention Code       | <ProductType> | <ApplicationStage> | <ApplicantType> | Subvention.xlsx | subvention_master | 0                        | asset_details.xlsx | home                   | 77                            |          |     |
      | Subvention Basis      | <ProductType> | <ApplicationStage> | <ApplicantType> | Subvention.xlsx | subvention_master | 0                        | asset_details.xlsx | home                   | 77                            |          |     |
      | Subvention BP         | <ProductType> | <ApplicationStage> | <ApplicantType> | Subvention.xlsx | subvention_master | 0                        | asset_details.xlsx | home                   | 77                            |          |     |
      | Subvention Percentage | <ProductType> | <ApplicationStage> | <ApplicantType> | Subvention.xlsx | subvention_master | 0                        | asset_details.xlsx | home                   | 77                            |          |     |
      | Subvention End Date   | <ProductType> | <ApplicationStage> | <ApplicantType> | Subvention.xlsx | subvention_master | 0                        | asset_details.xlsx | home                   | 77                            |          |     |



     # PQM-10_CAS-208602
Scenario Outline: ACAUTOCAS-20866:Subvention details should be fetched for Dealer
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    And user open asset details of "<ApplicationStage>"
    And user de link collateral in asset details
    And user reads data from the excel file "<AssetDetailsWB>" under sheet "<AssetDetails_SheetName>" and row <AssetDetails_SheetName_rowNum>
    And user fills asset details with asset type as "<AssetType>"
    Then "<CheckBox>" should be visible in Subvention details
    @Islamic
  # ${ProductType:["IAF"]}
    # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
    Examples:
      | CheckBox               | AssetType | ProductType   | ApplicationStage   | ApplicantType   | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | Category | Key |
      | Subvention Allowed     | New Asset | <ProductType> | <ApplicationStage> | <ApplicantType> | asset_details.xlsx | home                   | 77                            |          |     |
      | Dealer Subvention      | New Asset | <ProductType> | <ApplicationStage> | <ApplicantType> | asset_details.xlsx | home                   | 77                            |          |     |
      | Manufacturer Subvention| New Asset | <ProductType> | <ApplicationStage> | <ApplicantType> | asset_details.xlsx | home                   | 77                            |          |     |
    @Conventional
# ${ProductType : ["MAL"]}
 # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
    Examples:
      | CheckBox                | AssetType | ProductType   | ApplicationStage   | ApplicantType   | AssetDetailsWB     | AssetDetails_SheetName | AssetDetails_SheetName_rowNum | Category | Key |
      | Subvention Allowed      | New Asset | <ProductType> | <ApplicationStage> | <ApplicantType> | asset_details.xlsx | home                   | 77                            |          |     |
      | Dealer Subvention       | New Asset | <ProductType> | <ApplicationStage> | <ApplicantType> | asset_details.xlsx | home                   | 77                            |          |     |
      | Manufacturer Subvention | New Asset | <ProductType> | <ApplicationStage> | <ApplicantType> | asset_details.xlsx | home                   | 77                            |          |     |


   # PQM-18_CAS-208602
Scenario Outline: ACAUTOCAS-20867: Seeded parameter should be present in parameter grid
    And user reads data from the excel file "<SubventionWB>" under sheet "<Subvention_Master>" and row <Subvention_Master_rowNum>
    And user navigates to parameter master
    When user searches "<Parameter>"
    Then Seeded parameter should be present
    Examples:
      | Parameter                | SubventionWB    | Subvention_Master | Subvention_Master_rowNum |
      | InterestSubventionAmount | Subvention.xlsx | subvention_master | 0                        |


   # PQM-20_CAS-208602
Scenario Outline: ACAUTOCAS-20868:Charge definition with above charge code definition should be created
    And user navigates to charge code definition master
    When Above charge code definition should be fetched in charge definition master
    Then Charge definition with above charge code definition should be created
    Examples:
      | ProductType   | ApplicantType   | ApplicationStage   | Category | Key |
      | <ProductType> | <ApplicantType> | <ApplicationStage> |          |     |


   # PQM-21_CAS-208602
Scenario Outline: ACAUTOCAS-20869:Financial Parameter Setup should be created
    And user reads data from the excel file "<SubventionWB>" under sheet "<Subvention_Master>" and row <Subvention_Master_rowNum>
    And user navigates to financial Parameter Setup
    When Charge code definition and charge definition should be fetched in FP
    Then FP should be created
    Examples:
      | SubventionWB    | Subvention_Master | Subvention_Master_rowNum |
      | Subvention.xlsx | subvention_master | 0                        |



   # PQM-15_CAS-208602
Scenario Outline: ACAUTOCAS-20870:Repayment schedule should be generated with X installment amount
    And Open an application in which subvention % is fetched as 2% and policy rate is 10%
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When Generate Repayment Schedule
    Then Repayment schedule should be generated with X installment amount
    @Islamic
  # ${ProductType:["IAF","IHF"]}
 # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
   @Conventional
# ${ProductType : ["MAL","HL"]}
 # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |



   # PQM-16_CAS-208602
Scenario Outline: ACAUTOCAS-20871: Repayment schedule should be generated with Y installment amount
    And Open an application in which subvention % is fetched as 2% and policy rate is 8%(to change policy rate make changes in product and package discount)
    And user opens an application of "<ProductType>" product type as "<ApplicantType>" applicant at "<ApplicationStage>" for "<Category>" with "<Key>" from application grid
    When Generate Repayment Schedule
    Then Repayment schedule should be generated with Y installment amount
    @Islamic
  # ${ProductType:["IAF"]}
 # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
    @Conventional
# ${ProductType : ["MAL","HL"]}
 # ${ApplicationStage:["Sourcing","Login Acceptance","DDE","Reconsideration","Credit Approval","Post Approval","Disbursal"]}
    Examples:
      | ProductType   | ApplicationStage   | Category | Key | ApplicantType   |
      | <ProductType> | <ApplicationStage> |          |     | <ApplicantType> |
