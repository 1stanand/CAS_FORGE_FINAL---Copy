@Epic-E2E
@Conventional
@E2EOrder
@Order
@FDE
@GA-9.0
Feature: End to end work flow for All LOB Order Wise


######################################## STAGE 8: FDE Stage #################################################################################################

  @DevTrack
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: validate deal details at fde stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigate to deal and facility details tab for "FDE"
    And user opens deal limit details accordian
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    Then user is able to validate the deal details data at fde stage successfully
    Examples:
      | LogicalID     | ProductType    | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo |
      | MULF_BD_00001 | Multi Facility | deal_and_facility_details.xlsx | fde_deal_details            | 0                                 |

  @DevTrack
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: validate facility details at fde stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    When user navigate to deal and facility details tab for "FDE"
    And user opens facility details accordian
    And user click on view button for facility details
    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
    Then user is able to validate the facility details data at fde stage successfully
    Examples:
      | LogicalID     | ProductType    | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo |
      | MULF_BD_00001 | Multi Facility | deal_and_facility_details.xlsx | fde_facility_details            | 0                                 |

#  Add this scenario into E2E when we have to add facility at fde stage
#  if you add facility at fde then you need tosend back the application to credit approval stage and then same the decision of facility then perform MTNS
#  @DevTrack
#  @AuthoredBy-ankit.yadav
#  @ImplementedBy-ankit.yadav
#  Scenario Outline: [LogicalID-<LogicalID>] Save facility details with Add Facility details of <FacilityType> for <ProductType> LogicalID <LogicalID>
#    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
#    And user reads data from the excel file "<DealAndFacilityDetailsWB>" under sheet "<DealAndFacilityDetailsSheet>" and row <DealAndFacilityDetailsSheet_rowNo>
#    When user opens facility details accordian
#    And user fills facility details
#    And user saves facility details
#    Then facility details should be save successfully
#    Examples:
#      | LogicalID     | ProductType    | FacilityType     | DealAndFacilityDetailsWB       | DealAndFacilityDetailsSheet | DealAndFacilityDetailsSheet_rowNo |
#      | MULF_BD_00001 | Multi Facility | Bill Discounting | deal_and_facility_details.xlsx | facility_details            | 18                                |
#

  @DevTrack
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] validate deal details on underwriter decision page at fde stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens the underwriter decision tab
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    When user opens more details of deal details on underwriter decision page
    Then user able to validate deal details successfully
    Examples:
      | LogicalID     | ProductType    | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum |
      | MULF_BD_00001 | Multi Facility | credit_approval_end_flow.xlsx | covenant_details     | 0                     |

  @DevTrack
    @AuthoredBy-ankit.yadav
    @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] validate facility details on underwriter decision page at fde stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user opens the underwriter decision tab
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    When user opens more details of facility details on underwriter decision page
    And user able to validate facility details successfully
    Examples:
      | LogicalID     | ProductType    | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum |
      | MULF_BD_00001 | Multi Facility | credit_approval_end_flow.xlsx | covenant_details     | 0                     |

  @DevTrack
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] Save decision on underwriter decision page at fde stage for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user reads data from the excel file "<CreditApproval_WB>" under sheet "<CreditApproval_Sheet>" and row <CreditApproval_RowNum>
    When user validate decision details of underwriter decision
    And user close the underwriter decision
    Then underwriter decision should be saved successfully

    Examples:
      | LogicalID     | CreditApproval_WB             | CreditApproval_Sheet | CreditApproval_RowNum | ProductType    |
      | MULF_BD_00001 | credit_approval_end_flow.xlsx | underwriter_decision | 2                     | Multi Facility |

  @DevTrack
  @AuthoredBy-ankit.yadav
  @ImplementedBy-ankit.yadav
  Scenario Outline: [LogicalID-<LogicalID>] validate charges at <ApplicationStage> for <ProductType> LogicalID <LogicalID>
    Given all prerequisite are performed in previous scenario of "<ProductType>" logical id "<LogicalID>" with valid username and password present in "LoginDetailsCAS.xlsx" under "LoginData" and 0
    And user navigate to charges at facility details
    When user apply the charges of "<ApplicationStage>"
    And charge policy should be executed successfully for that application
    And user collect the contractual charges for facility details
    And "Contractual Charge Policy Executed successfully." success message for executed contractual charges
    And user save the apply charges with contractual charges for facility
    Then "Contractual charges saved successfully" for facility charges details
    Examples:
      | LogicalID     | ProductType    | ApplicationStage |
      | MULF_BD_00001 | Multi Facility | FDE              |