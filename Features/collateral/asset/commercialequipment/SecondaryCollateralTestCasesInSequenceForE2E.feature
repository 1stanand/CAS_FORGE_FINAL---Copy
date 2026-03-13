@Epic-Secondary_Collateral
@AuthoredBy-rsurya.kumar
@ImplementedBy-ankit.yadav
@TestSequenceE2E

#${ProductType:["PF","HL","MAL","IHF","IPF","BG","LC","BL","CashCred","BD","MULF","FAS","CFL","GL","OMNI","CEQ","JLG","SHG","KCC","AGRL","EDU","FE","MHL","CV","LAP","CL"]}
#${ApplicationStage:["DDE","Credit Approval","Recommendation","Reconsideration","Disbursal Initiation"]}
#${CollateralSubType:["Commercial Equipment"]}

Feature: Commercial Equipment Positive Cases In Sequence For E2E


  Background:
    Given user is on CAS Login Page
    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0

  @TestSequenceOrder1
  Scenario Outline: User is able to add a new collateral for <CollateralSubType> to <ProductType> application at <ApplicationStage> stage to the application with <Result> with new Global Collateral No with <Collateral_assetDetails_rowNum>
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user opens Collateral Page for adding new collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    When user fills mandatory fields of asset details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_vehicleDetails>" and row <Collateral_vehicleDetails_rowNum>
    And user fills all fields of vehicle details of collateral sub type
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_assetDetails>" and row <Collateral_assetDetails_rowNum>
    And user checks the duplicates on collateral dedupe check
    And user saves the data of collateral subtype
    Then user check the global collateral number for newly added collateral to application
    Examples:
      | Result  | CollateralWB    | Collateral_assetDetails | Collateral_assetDetails_rowNum | Collateral_vehicleDetails | Collateral_vehicleDetails_rowNum | Collateral_invoiceDetails | Collateral_invoiceDetails_rowNum | ProductType | ApplicationStage | key | category | applicantType | CollateralSubType    |
      | Success | collateral.xlsx | asset_details           | 13                             | vehicle_details           | 207                              | invoice_details           | 75                               | PF          | DDE              |     |          | indiv         | Commercial Equipment |

  @TestSequenceOrder2
  Scenario Outline: Insurance addition to a collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "collateral.xlsx" under sheet "asset_details" and row 44
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    Then user should be able to add Insurance to the collateral
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType | ApplicationStage | key | category | applicantType | CollateralSubType    |
      | collateral.xlsx | insurance_details           | 257                                | PF          | DDE              |     |          | indiv         | Commercial Equipment |

  @TestSequenceOrder3
  Scenario Outline: Adding insurance and nominee details to for collateral Sub Type <CollateralSubType> to <ProductType> application at <ApplicationStage> stage successfully
    And user opens an "<ProductType>" application for "<applicantType>" applicant at "<ApplicationStage>" for "<category>" with "<key>" from application grid
    And user reads data from the excel file "collateral.xlsx" under sheet "asset_details" and row 44
    When user attempts to modify collateral based on "<CollateralSubType>"
    And user goes to insurance details section to fill insurance details
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_insuranceDetails>" and row <Collateral_insuranceDetails_rowNum>
    And user fills all insurance nominee details of collateral subtype
    And user clicks on Done Button in Insurance
    Then Insurance data should be saved successfully
    Examples:
      | CollateralWB    | Collateral_insuranceDetails | Collateral_insuranceDetails_rowNum | ProductType | ApplicationStage | key | category | applicantType | CollateralSubType    |
      | collateral.xlsx | insurance_details           | 258                                | PF          | DDE              |     |          | indiv         | Commercial Equipment |
