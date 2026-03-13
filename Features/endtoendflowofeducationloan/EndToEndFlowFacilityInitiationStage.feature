@Epic-E2E
@Conventional
@E2EOrder
@Release
@FacilityInitiation
@Order
@DevTrack
@GA-9.0

Feature: End to end work flow for All LOB Order Wise

######################################## STAGE 10: FACILITY INITIATION #############################################################################################################################

  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] validate the limit tree details data at facility initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens an application of "FACILITY_INITIATION" stage present in context from application grid
    When user open Limit Tree button for deal with facility details
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    Then user is able to validate the limit tree details data successfully
      | Deal limit           | Requested Limit  | 2 |
      | Deal limit           | Available Limit  | 4 |
      | Deal limit           | Consumed Limit   | 5 |
      | Deal limit           | In-Process Limit | 6 |
      | Fund based limit     | Requested Limit  | 2 |
      | Fund based limit     | Available Limit  | 4 |
      | Fund based limit     | Consumed Limit   | 5 |
      | Fund based limit     | In-Process Limit | 6 |
      | Non-Fund based limit | Requested Limit  | 2 |
      | Non-Fund based limit | Available Limit  | 4 |
      | Non-Fund based limit | Consumed Limit   | 5 |
      | Non-Fund based limit | In-Process Limit | 6 |
    Examples:
      | LogicalID     | ProductType    | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo |
      | MULF_BD_00001 | Multi Facility | deal_and_facility_details.xlsx | fde_deal_details            | 0                                 |

  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>]  validate the limit tree facility details data at facility initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    Then user is able to validate the limit tree facility details data successfully
    Examples:
      | LogicalID     | ProductType    | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo |
      | MULF_BD_00001 | Multi Facility | deal_and_facility_details.xlsx | fde_facility_details        | 0                                 |

  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] Deal should be create successfully at facility initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user close the limit tree modal
    When user click on deal create button to create deal
    Then Deal should be create successfully at facility initiation
    Examples:
      | LogicalID     | ProductType    |
      | MULF_BD_00001 | Multi Facility |

  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>]  validate the limit tree facility details data at facility initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user select all Facility Id check box
    And user click on Initiate button
    Then Facility should be initiated successfully at facility initiation
    Examples:
      | LogicalID     | ProductType    |
      | MULF_BD_00001 | Multi Facility |

  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] after deal create with facility initiate check facility id at tranche initiation stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    Then facility id should move to "Tranche Initiation" Stage
    Examples:
      | LogicalID     | ProductType    |
      | MULF_BD_00001 | Multi Facility |