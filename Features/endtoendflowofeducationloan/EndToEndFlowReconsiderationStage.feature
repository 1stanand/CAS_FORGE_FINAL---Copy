@Epic-E2E
@Conventional
@E2EOrder
@Release
@Reconsideration
@Order

  #FeatureID-ACAUTOCAS-17204
Feature: End to end work flow for All LOB Order Wise

########################################### STAGE 8: RECONSIDERATION ###########################################################################################################################

#  Scenario Outline: Save details on reconsideration page at Reconsideration stage for <ProductType>
#    Given user is on CAS Login Page
#    And user logged in CAS with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user opens an application of "Reconsideration" stage present in context from application grid
#    When user verify the details on reconsideration page
#    And user clicks on save button on reconsideration
#    Then data should be saved successfully
#    Examples:
#      | ProductType    |
#      | Education Loan |

  @AuthoredBy-anshika.gupta
    @ImplementedBy-anshika.gupta
  Scenario Outline: ACAUTOCAS-20909: Save collateral with collateral type as Asset at Reconsideration stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "Reconsideration" stage present in context from application grid
    When user opens Collateral Page for adding new collateral for "Reconsideration"
    And user reads data from the excel file "<CollateralWB>" under sheet "<Collateral_sheetName>" and row <Collateral_rowNum>
    And user selects collateral type along with collateral sub type
    And user fills all fields of home page of collateral details for asset type
    And user reads data from the excel file "asset_details.xlsx" under sheet "vehicle_details" and row 139
    And user fills vehicle details for asset type collateral
    And user reads data from the excel file "<CollateralWB>" under sheet "invoice_details" and row 123
    And user fill Invoice Details
    And user checks the duplicates on collateral dedupe check
    And user saves the Collateral Details
    Then collateral details should be saved successfully

    Examples:
      | LogicalID | ProductType             | CollateralWB    | Collateral_sheetName | Collateral_rowNum |
      | CEQ00001  | Commercial Equipment    | collateral.xlsx | asset_details        | 308               |
      | CV00002   | Commercial Vehicle Loan | collateral.xlsx | asset_details        | 308               |

    @PQMStory
    Examples:
      | LogicalID         | ProductType             | CollateralWB    | Collateral_sheetName | Collateral_rowNum |
      | CV00CAS_88943_01  | Commercial Vehicle Loan | collateral.xlsx | asset_details        | 308               |
      | CV00CAS_88943_02  | Commercial Vehicle Loan | collateral.xlsx | asset_details        | 308               |
      | CV00CAS_88946_01  | Commercial Vehicle Loan | collateral.xlsx | asset_details        | 308               |
      | CV00CAS_206825_01 | Commercial Vehicle Loan | collateral.xlsx | asset_details        | 308               |
      | CV00CAS_80273_01  | Commercial Vehicle Loan | collateral.xlsx | asset_details        | 308               |
      | CV00CAS_90456_01  | Commercial Vehicle Loan | collateral.xlsx | asset_details        | 308               |
      | CV00CAS_90456_02  | Commercial Vehicle Loan | collateral.xlsx | asset_details        | 308               |


